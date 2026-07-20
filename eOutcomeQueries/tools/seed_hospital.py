#!/usr/bin/env python3
"""Seed a FHIR server with Synthea-style synthetic HOSPITAL-side data matching
the five NEMSIS sample PCR patients — so the P3 executor's matching, linkage,
and element extraction can be tested without a real hospital data source.

Scenario design (curated rather than raw Synthea output so the seeded content
exercises specific assertions; demographics are lifted from the PCRs so the
match logic is genuinely tested):
  Overdose : ED only, discharged home (01); SUD dx           -> tests Part 2 path + no-IP case
  Suicide  : ED -> ICU admit (partOf), expired (20)          -> tests survival-outcome extraction
  MVC      : ED -> admit (partOf), discharged to SNF (03)    -> tests dx/procedure extraction
  eBike    : ED -> admit WITHOUT partOf                      -> tests temporal-adjacency linkage
  CPMIH    : nothing seeded (plan makes no queries)

Usage: python3 seed_hospital.py --target http://host:port [samplesDir]
"""
import importlib.util
import json
import pathlib
import sys
import urllib.request
import uuid

HERE = pathlib.Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parent / "engine"))
_spec = importlib.util.spec_from_file_location("planmod", HERE.parent / "engine" / "ems_outcome_plan.py")
planmod = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(planmod)
canon = planmod.canon

NUBC = "https://www.nubc.org/CodeSystem/PatDischargeStatus"
ICD = "http://hl7.org/fhir/sid/icd-10-cm"
PCS = "http://www.cms.gov/Medicare/Coding/ICD10"

SCENARIOS = {
    "2025-EMS-1-Overdose_v350": {
        "ed_dispo": "01", "admit": False,
        "ed_dx": ["T40.1X1A", "F19.10"], "ed_proc": [],
    },
    "2025-EMS-2-Suicide_v350": {
        "ed_dispo": "09", "admit": True, "part_of": True, "ip_dispo": "20",
        "ed_dx": ["T71.161A", "X83.8XXA"], "ip_dx": ["G93.1", "J96.00"],
        "ed_proc": ["0BH17EZ"], "ip_proc": ["5A1935Z"],
    },
    "2025-EMS-3-MVC_v350": {
        "ed_dispo": "09", "admit": True, "part_of": True, "ip_dispo": "03",
        "ed_dx": ["S06.0X1A", "S22.42XA"], "ip_dx": ["S06.0X1A", "S22.42XA", "J94.2"],
        "ed_proc": ["BW28ZZZ"], "ip_proc": ["0W9930Z"],
    },
    "2025-EMS-4-eBike_v350": {
        "ed_dispo": "09", "admit": True, "part_of": False, "ip_dispo": "01",
        "ed_dx": ["S72.001A"], "ip_dx": ["S72.001A"],
        "ed_proc": [], "ip_proc": ["0QS604Z"],
    },
    # CPMIH intentionally absent
}

GENDER = {"9906001": "female", "9906003": "male"}


def post(base, bundle):
    req = urllib.request.Request(base, json.dumps(bundle).encode(),
                                 {"Content-Type": "application/fhir+json"})
    with urllib.request.urlopen(req, timeout=120) as r:
        return json.loads(r.read())


def seed_one(base, xml, sc):
    doc = {"EMSDataSet": canon.convert(canon.ET.parse(xml).getroot())}
    pcr = doc["EMSDataSet"]["Header"][0]["PatientCareReport"][0]
    facts = {}
    planmod.walk_facts(pcr, ["PCR"], facts)
    g = lambda k: (facts.get(k) or [None])[0]
    transport = (g("eTimes.03") or g("eTimes.01"))
    day = transport[:10]
    pat_uuid = f"urn:uuid:{uuid.uuid4()}"
    ed_uuid = f"urn:uuid:{uuid.uuid4()}"
    ip_uuid = f"urn:uuid:{uuid.uuid4()}"
    entries = [{
        "fullUrl": pat_uuid,
        "resource": {"resourceType": "Patient", "active": True,
                     "name": [{"family": g("ePatient.02"), "given": [g("ePatient.03")]}],
                     "birthDate": g("ePatient.17"),
                     **({"gender": GENDER[g("ePatient.13")]} if g("ePatient.13") in GENDER else {"gender": "unknown"})},
        "request": {"method": "POST", "url": "Patient"}}]

    ed = {"resourceType": "Encounter", "status": "finished",
          "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "EMER"},
          "subject": {"reference": pat_uuid},
          "period": {"start": f"{day}T16:00:00-04:00", "end": f"{day}T21:30:00-04:00"},
          "hospitalization": {"dischargeDisposition": {"coding": [{"system": NUBC, "code": sc["ed_dispo"]}]}}}
    entries.append({"fullUrl": ed_uuid, "resource": ed, "request": {"method": "POST", "url": "Encounter"}})

    for dx in sc.get("ed_dx", []):
        entries.append({"fullUrl": f"urn:uuid:{uuid.uuid4()}", "resource": {
            "resourceType": "Condition",
            "clinicalStatus": {"coding": [{"system": "http://terminology.hl7.org/CodeSystem/condition-clinical", "code": "active"}]},
            "category": [{"coding": [{"system": "http://terminology.hl7.org/CodeSystem/condition-category", "code": "encounter-diagnosis"}]}],
            "code": {"coding": [{"system": ICD, "code": dx}]},
            "subject": {"reference": pat_uuid}, "encounter": {"reference": ed_uuid}},
            "request": {"method": "POST", "url": "Condition"}})
    for px in sc.get("ed_proc", []):
        entries.append({"fullUrl": f"urn:uuid:{uuid.uuid4()}", "resource": {
            "resourceType": "Procedure", "status": "completed",
            "code": {"coding": [{"system": PCS, "code": px}]},
            "subject": {"reference": pat_uuid}, "encounter": {"reference": ed_uuid},
            "performedDateTime": f"{day}T17:15:00-04:00"},
            "request": {"method": "POST", "url": "Procedure"}})

    if sc.get("admit"):
        ip = {"resourceType": "Encounter", "status": "finished",
              "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "IMP"},
              "subject": {"reference": pat_uuid},
              "period": {"start": f"{day}T21:30:00-04:00", "end": f"{day}T21:30:00-04:00".replace(day, _plus_days(day, 3))},
              "hospitalization": {"dischargeDisposition": {"coding": [{"system": NUBC, "code": sc["ip_dispo"]}]}}}
        if sc.get("part_of"):
            ip["partOf"] = {"reference": ed_uuid}
        entries.append({"fullUrl": ip_uuid, "resource": ip, "request": {"method": "POST", "url": "Encounter"}})
        for dx in sc.get("ip_dx", []):
            entries.append({"fullUrl": f"urn:uuid:{uuid.uuid4()}", "resource": {
                "resourceType": "Condition",
                "clinicalStatus": {"coding": [{"system": "http://terminology.hl7.org/CodeSystem/condition-clinical", "code": "active"}]},
                "category": [{"coding": [{"system": "http://terminology.hl7.org/CodeSystem/condition-category", "code": "encounter-diagnosis"}]}],
                "code": {"coding": [{"system": ICD, "code": dx}]},
                "subject": {"reference": pat_uuid}, "encounter": {"reference": ip_uuid}},
                "request": {"method": "POST", "url": "Condition"}})
        for px in sc.get("ip_proc", []):
            entries.append({"fullUrl": f"urn:uuid:{uuid.uuid4()}", "resource": {
                "resourceType": "Procedure", "status": "completed",
                "code": {"coding": [{"system": PCS, "code": px}]},
                "subject": {"reference": pat_uuid}, "encounter": {"reference": ip_uuid},
                "performedDateTime": f"{_plus_days(day, 1)}T10:00:00-04:00"},
                "request": {"method": "POST", "url": "Procedure"}})
    out = post(base, {"resourceType": "Bundle", "type": "transaction", "entry": entries})
    return len(out.get("entry", []))


def _plus_days(day, n):
    import datetime
    return (datetime.date.fromisoformat(day) + datetime.timedelta(days=n)).isoformat()


def main():
    if "--target" not in sys.argv:
        sys.exit(__doc__)
    base = sys.argv[sys.argv.index("--target") + 1]
    samples = pathlib.Path(sys.argv[-1]) if not sys.argv[-1].startswith(("-", "http")) else pathlib.Path(
        "/Users/chad/Documents/Files/fhirReference/fhirEMSCore/nemsisDeidentifer/samples")
    for xml in sorted(samples.glob("2025-EMS-*.xml")):
        sc = SCENARIOS.get(xml.stem)
        if not sc:
            print(f"{xml.stem}: not seeded (by design)")
            continue
        n = seed_one(base, xml, sc)
        print(f"{xml.stem}: seeded {n} hospital resources")


if __name__ == "__main__":
    main()
