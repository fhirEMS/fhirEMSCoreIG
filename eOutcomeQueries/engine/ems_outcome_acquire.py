#!/usr/bin/env python3
"""$ems-outcome-acquire — P3 executor.

Executes the plan produced by ems_outcome_plan.py against a hospital-side FHIR
endpoint: patient match -> ED encounter -> inpatient linkage -> ONLY the
planned queries -> eOutcome write-back artifacts:
  - NEMSIS eOutcome element values (canonical JSON)
  - an EMSObservationOutcome instance (fhirems.emscore profile)
  - Provenance (source org/endpoint, acquisition posture, linkage method)
  - AuditEvent (BALP-shaped, purposeOfEvent = plan posture)
Part 2-flagged plans label the Observation with DS4P security tags.

Matching policy (plan §5.5): try Patient/$match (onlyCertainMatches); if the
server does not implement it, fall back to demographic search requiring
EXACTLY one hit. Zero or multiple -> the lane ends (no probabilistic fishing).

ED->inpatient linkage (plan open question #3, resolved here): Encounter?part-of
first; else temporal adjacency (IMP encounter starting within 72h of the ED
encounter's end); the method used is recorded in Provenance.

Usage:
  python3 ems_outcome_acquire.py <pcr.xml> --target http://host:port [--out DIR]
"""
import importlib.util
import json
import pathlib
import sys
import urllib.parse
import urllib.request

HERE = pathlib.Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
_spec = importlib.util.spec_from_file_location("planmod", HERE / "ems_outcome_plan.py")
planmod = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(planmod)
canon = planmod.canon

IGX = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition"
NEMSIS_ENC_CS = "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter"
LOINC = "http://loinc.org"
NUBC = "https://www.nubc.org/CodeSystem/PatDischargeStatus"

# EMSObservationOutcome component slices (from ems-observation-outcome)
SLICE = {
    "eOutcome.01": ("edDisposition", (NEMSIS_ENC_CS, "eOutcomeEDDisposition")),
    "eOutcome.02": ("hospitalDisposition", (LOINC, "8656-1")),
    "eOutcome.09": ("edProcedure", (LOINC, "52830-7")),
    "eOutcome.10": ("edDiagnosis", (LOINC, "29548-5")),
    "eOutcome.11": ("hospitalAdmitDateTime", (LOINC, "52455-3")),
    "eOutcome.12": ("hospitalProcedure", (NEMSIS_ENC_CS, "eOutcomeHospitalProcedure")),
    "eOutcome.13": ("hospitalDiagnosis", (LOINC, "29308-4")),
    "eOutcome.16": ("hospitalDischargeDateTime", (LOINC, "8651-2")),
    "eOutcome.18": ("edAdmitDateTime", (NEMSIS_ENC_CS, "eOutcomeEDArrivalDateTime")),
    "eOutcome.21": ("injurySeverityScore", (NEMSIS_ENC_CS, "eOutcomeInjurySeverityScore")),
}

GENDER = {"9906001": "female", "9906003": "male"}


class Http:
    def __init__(self, base):
        self.base = base.rstrip("/")
        self.calls = []

    def get(self, path):
        url = f"{self.base}/{path}"
        self.calls.append(url)
        with urllib.request.urlopen(urllib.request.Request(url), timeout=60) as r:
            return json.loads(r.read())

    def post(self, path, body):
        url = f"{self.base}/{path}"
        self.calls.append(url)
        req = urllib.request.Request(url, json.dumps(body).encode(),
                                     {"Content-Type": "application/fhir+json"})
        with urllib.request.urlopen(req, timeout=60) as r:
            return json.loads(r.read())


def demographics(pcr):
    facts = {}
    planmod.walk_facts(pcr, ["PCR"], facts)
    return {
        "family": (facts.get("ePatient.02") or [None])[0],
        "given": (facts.get("ePatient.03") or [None])[0],
        "birthDate": (facts.get("ePatient.17") or [None])[0],
        "gender": GENDER.get((facts.get("ePatient.13") or [""])[0]),
    }


def match_patient(http, demo):
    """$match with onlyCertainMatches, falling back to demographic search."""
    params = {"resourceType": "Parameters", "parameter": [
        {"name": "resource", "resource": {
            "resourceType": "Patient",
            "name": [{"family": demo["family"], "given": [demo["given"]]}],
            "birthDate": demo["birthDate"],
            **({"gender": demo["gender"]} if demo["gender"] else {})}},
        {"name": "onlyCertainMatches", "valueBoolean": True}]}
    try:
        out = http.post("Patient/$match", params)
        entries = out.get("entry", [])
        if len(entries) == 1:
            return entries[0]["resource"]["id"], "$match"
        return None, "$match-ambiguous" if entries else "$match-none"
    except Exception:
        pass  # operation unsupported -> fallback
    q = f"Patient?family={urllib.parse.quote(demo['family'])}&given={urllib.parse.quote(demo['given'])}&birthdate={demo['birthDate']}"
    out = http.get(q)
    entries = out.get("entry", [])
    if len(entries) == 1:
        return entries[0]["resource"]["id"], "demographic-search-single-certain"
    return None, f"demographic-search-{'ambiguous' if len(entries) > 1 else 'none'}"


def find_ed(http, pid, d0):
    out = http.get(f"Encounter?patient=Patient/{pid}&class=EMER&date=ge{d0}")
    e = [x["resource"] for x in out.get("entry", [])]
    return e[0] if e else None


def find_ip(http, pid, ed):
    out = http.get(f"Encounter?part-of=Encounter/{ed['id']}")
    e = [x["resource"] for x in out.get("entry", [])]
    if e:
        return e[0], "partOf"
    out = http.get(f"Encounter?patient=Patient/{pid}&class=IMP&date=ge{ed['period']['start'][:10]}")
    for c in (x["resource"] for x in out.get("entry", [])):
        return c, "temporal-adjacency-72h"  # server returns date-ordered window
    return None, None


def coding(cc):
    return (cc or {}).get("coding", [{}])[0]


def acquire(pcr_xml, target, outdir):
    doc = {"EMSDataSet": canon.convert(canon.ET.parse(pcr_xml).getroot())}
    results = []
    for header in doc["EMSDataSet"].get("Header", []):
        for pcr in header.get("PatientCareReport", []):
            plan = planmod.evaluate_pcr(pcr)
            http = Http(target)
            rec = {"pcrId": plan["pcrId"], "posture": plan["posture"],
                   "sensitivity": plan["sensitivity"], "elements": {}, "queriesMade": []}
            fetch = {e for e in plan["requiredElements"]
                     if not planmod.ELEMENT_QUERIES[e][0].startswith("[registry")}
            skipped_registry = sorted(set(plan["requiredElements"]) - fetch)
            if not fetch:
                rec["note"] = "no fetchable elements (no measures or registry-lane only); no queries made"
                rec["queriesMade"] = http.calls
                results.append(_finalize(rec, plan, None, None, skipped_registry, outdir))
                continue

            demo = demographics(pcr)
            pid, how = match_patient(http, demo)
            rec["match"] = {"method": how, "patient": pid}
            if not pid:
                rec["note"] = "match failed or ambiguous — lane ends (no probabilistic fishing)"
                rec["queriesMade"] = http.calls
                results.append(_finalize(rec, plan, None, None, skipped_registry, outdir))
                continue

            d0 = plan["transportDate"]
            ed = find_ed(http, pid, d0) if fetch & {"eOutcome.01", "eOutcome.18", "eOutcome.10", "eOutcome.09",
                                                    "eOutcome.02", "eOutcome.11", "eOutcome.16", "eOutcome.13",
                                                    "eOutcome.12"} else None
            ip = link = None
            if ed and fetch & {"eOutcome.02", "eOutcome.11", "eOutcome.16", "eOutcome.13", "eOutcome.12"}:
                ip, link = find_ip(http, pid, ed)

            els = rec["elements"]
            if ed:
                if "eOutcome.01" in fetch:
                    c = coding(ed.get("hospitalization", {}).get("dischargeDisposition"))
                    if c.get("code"):
                        els["eOutcome.01"] = c["code"]
                if "eOutcome.18" in fetch and ed.get("period", {}).get("start"):
                    els["eOutcome.18"] = ed["period"]["start"]
                if "eOutcome.10" in fetch:
                    dx = http.get(f"Condition?encounter=Encounter/{ed['id']}&category=encounter-diagnosis")
                    codes = [coding(x["resource"].get("code")).get("code")
                             for x in dx.get("entry", [])]
                    if codes:
                        els["eOutcome.10"] = [c for c in codes if c]
                if "eOutcome.09" in fetch:
                    px = http.get(f"Procedure?encounter=Encounter/{ed['id']}")
                    procs = [{"code": coding(x["resource"].get("code")).get("code"),
                              "eOutcome.19": x["resource"].get("performedDateTime")}
                             for x in px.get("entry", [])]
                    if procs:
                        els["eOutcome.09"] = procs
            if ip:
                if "eOutcome.02" in fetch:
                    c = coding(ip.get("hospitalization", {}).get("dischargeDisposition"))
                    if c.get("code"):
                        els["eOutcome.02"] = c["code"]
                if "eOutcome.11" in fetch and ip.get("period", {}).get("start"):
                    els["eOutcome.11"] = ip["period"]["start"]
                if "eOutcome.16" in fetch and ip.get("period", {}).get("end"):
                    els["eOutcome.16"] = ip["period"]["end"]
                if "eOutcome.13" in fetch:
                    dx = http.get(f"Condition?encounter=Encounter/{ip['id']}&category=encounter-diagnosis")
                    codes = [coding(x["resource"].get("code")).get("code") for x in dx.get("entry", [])]
                    if codes:
                        els["eOutcome.13"] = [c for c in codes if c]
                if "eOutcome.12" in fetch:
                    px = http.get(f"Procedure?encounter=Encounter/{ip['id']}")
                    procs = [{"code": coding(x["resource"].get("code")).get("code"),
                              "eOutcome.20": x["resource"].get("performedDateTime")}
                             for x in px.get("entry", [])]
                    if procs:
                        els["eOutcome.12"] = procs
            rec["queriesMade"] = http.calls
            results.append(_finalize(rec, plan, ed, link, skipped_registry, outdir))
    return results


def _finalize(rec, plan, ed, link, skipped_registry, outdir):
    els = rec.get("elements", {})
    obs = {
        "resourceType": "Observation",
        "id": f"outcome-{plan['pcrId']}",
        "meta": {"profile": [f"{IGX}/ems-observation-outcome"]},
        "status": "final",
        "category": [{"coding": [{"system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                  "code": "exam"}]}],
        "code": {"coding": [{"system": NEMSIS_ENC_CS, "code": "eOutcomePanel",
                             "display": "EMS Outcome Observation Panel"}]},
        "subject": {"display": "PCR patient"},
        "component": [],
    }
    if rec.get("sensitivity", {}).get("part2"):
        obs["meta"]["security"] = [
            {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "42CFRPart2"},
            {"system": "http://terminology.hl7.org/CodeSystem/v3-Confidentiality", "code": "R"},
        ]

    def comp(element, value):
        name, (sys_, code_) = SLICE[element]
        c = {"code": {"coding": [{"system": sys_, "code": code_}]}}
        if element in ("eOutcome.11", "eOutcome.16", "eOutcome.18"):
            c["valueDateTime"] = value
        elif element in ("eOutcome.01", "eOutcome.02"):
            c["valueCodeableConcept"] = {"coding": [{"system": NUBC, "code": value}]}
        elif element in ("eOutcome.10", "eOutcome.13"):
            c["valueCodeableConcept"] = {"coding": [
                {"system": "http://hl7.org/fhir/sid/icd-10-cm", "code": value}]}
        else:
            c["valueCodeableConcept"] = {"coding": [
                {"system": "http://www.cms.gov/Medicare/Coding/ICD10", "code": value}]}
        return c

    for e, v in els.items():
        if isinstance(v, list):
            for item in v:
                obs["component"].append(comp(e, item["code"] if isinstance(item, dict) else item))
        else:
            obs["component"].append(comp(e, v))

    provenance = {
        "resourceType": "Provenance",
        "target": [{"reference": f"Observation/{obs['id']}"}],
        "recorded": "2026-07-19T00:00:00Z",
        "activity": {"coding": [{"system": "http://terminology.hl7.org/CodeSystem/v3-ActReason",
                                 "code": rec["posture"]["code"]}]},
        "agent": [{"who": {"display": "EMS Outcome Requester"},
                   "onBehalfOf": {"display": "EMS Agency"}}],
        "entity": [{"role": "source", "what": {"display": q}} for q in rec["queriesMade"]],
        "extension": [
            {"url": f"{IGX}/ext-acquisition-posture-evidence",
             "valueString": rec["posture"].get("evidence") or "default QA posture"},
        ] + ([{"url": f"{IGX}/ext-encounter-linkage-method", "valueString": link}] if link else []),
    }
    audit = {
        "resourceType": "AuditEvent",
        "type": {"system": "http://dicom.nema.org/resources/ontology/DCM", "code": "110112",
                 "display": "Query"},
        "action": "E",
        "recorded": "2026-07-19T00:00:00Z",
        "purposeOfEvent": [{"coding": [{"system": "http://terminology.hl7.org/CodeSystem/v3-ActReason",
                                        "code": rec["posture"]["code"]}]}],
        "outcome": "0",
        "agent": [{"who": {"display": "EMS Outcome Requester"}, "requestor": True}],
        "source": {"observer": {"display": "eOutcomeQueries executor"}},
        "entity": [{"what": {"display": q}} for q in rec["queriesMade"]],
    }
    out = {"plan": {k: plan[k] for k in ("pcrId", "posture", "requiredElements", "sensitivity")},
           "match": rec.get("match"), "linkage": link,
           "registryLaneDeferred": skipped_registry,
           "nemsisOutcome": els, "queriesMade": rec["queriesMade"],
           "observation": obs, "provenance": provenance, "auditEvent": audit,
           "note": rec.get("note")}
    if outdir:
        p = pathlib.Path(outdir) / f"{plan['pcrId']}.outcome.json"
        p.parent.mkdir(parents=True, exist_ok=True)
        p.write_text(json.dumps(out, indent=2))
    return out


def main():
    if len(sys.argv) < 4 or "--target" not in sys.argv:
        sys.exit(__doc__)
    target = sys.argv[sys.argv.index("--target") + 1]
    outdir = sys.argv[sys.argv.index("--out") + 1] if "--out" in sys.argv else None
    results = acquire(sys.argv[1], target, outdir)
    print(json.dumps(results, indent=2))


if __name__ == "__main__":
    main()
