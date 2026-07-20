#!/usr/bin/env python3
"""$ems-outcome-plan engine (P2 prototype).

Given a NEMSIS EMSDataSet XML (or its canonical JSON), recursively evaluates
each PatientCareReport, determines which outcome-linkage measures apply,
assigns the access posture (Provider/TREAT vs QA/HOPERAT — evidenced, per
docs/planning/eoutcome-fhir-query-plan.md §3.5), and compiles a
minimum-necessary FHIR query plan for the eOutcome elements those measures
need.

Usage:
  python3 ems_outcome_plan.py <pcr.xml|pcr.json> [--pretty]
Output: one JSON plan per PatientCareReport on stdout.
"""
import importlib.util
import json
import pathlib
import sys

HERE = pathlib.Path(__file__).resolve().parent
ROOT = HERE.parents[1]
MEASURES_DIR = HERE.parent / "measures"

_spec = importlib.util.spec_from_file_location(
    "canon", ROOT / "transformationScripts" / "tools" / "nemsis-xml-to-json.py")
canon = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(_spec and canon)

# ── posture evidence (plan §3.5): active-care response types ─────────────────
# 2205031 MIH encounter, 2205033 special referral/intake evaluation,
# 2205005/15/17/19 interfacility legs (ongoing care continuum).
ACTIVE_CARE_RESPONSE_TYPES = {
    "2205031": "Mobile Integrated Health Care Encounter",
    "2205033": "Evaluation for Special Referral/Intake Programs",
    "2205005": "Hospital-to-Hospital Transfer",
    "2205015": "Hospital to Non-Hospital Facility Transfer",
    "2205017": "Non-Hospital Facility to Non-Hospital Facility Transfer",
    "2205019": "Non-Hospital Facility to Hospital Transfer",
}

# eOutcome element → the FHIR query that yields it (plan §2) + SMART v2 scope
ELEMENT_QUERIES = {
    "eOutcome.01": ("Encounter?patient={pid}&class=EMER&date=ge{d0}&date=le{d2}",
                    "system/Encounter.rs", "ED disposition (hospitalization.dischargeDisposition)"),
    "eOutcome.02": ("Encounter?patient={pid}&class=IMP&date=ge{d0}",
                    "system/Encounter.rs", "Hospital disposition (hospitalization.dischargeDisposition)"),
    "eOutcome.18": ("Encounter?patient={pid}&class=EMER&date=ge{d0}&date=le{d2}",
                    "system/Encounter.rs", "ED admission time (Encounter.period.start)"),
    "eOutcome.11": ("Encounter?patient={pid}&class=IMP&date=ge{d0}",
                    "system/Encounter.rs", "Hospital admission time (Encounter.period.start)"),
    "eOutcome.16": ("Encounter?patient={pid}&class=IMP&date=ge{d0}",
                    "system/Encounter.rs", "Hospital discharge time (Encounter.period.end)"),
    "eOutcome.10": ("Condition?encounter={ed-enc}&category=encounter-diagnosis",
                    "system/Condition.rs?category=encounter-diagnosis", "ED diagnoses (ICD-10-CM)"),
    "eOutcome.13": ("Condition?encounter={ip-enc}&category=encounter-diagnosis",
                    "system/Condition.rs?category=encounter-diagnosis", "Hospital diagnoses (ICD-10-CM)"),
    "eOutcome.09": ("Procedure?encounter={ed-enc}",
                    "system/Procedure.rs", "ED procedures (+ eOutcome.19 performed time)"),
    "eOutcome.12": ("Procedure?encounter={ip-enc}",
                    "system/Procedure.rs", "Hospital procedures (+ eOutcome.20 performed time)"),
    "eOutcome.21": ("[registry lane] trauma registry ISS",
                    None, "Injury Severity Score — registry lane (Lane C)"),
    "eOutcome.03": ("[registry lane] external report type", None, "registry linkage"),
    "eOutcome.04": ("[registry lane] external report id", None, "registry linkage"),
    "eOutcome.05": ("[registry lane] other registry type", None, "registry linkage"),
}


def load_measures():
    return [json.loads(p.read_text()) for p in sorted(MEASURES_DIR.glob("*.json"))]


def walk_facts(node, path, facts):
    """Recursive walk of the canonical PCR: every leaf value keyed by element id."""
    if isinstance(node, dict):
        if "value" in node and not isinstance(node.get("value"), (dict, list)):
            if node["value"] is not None:
                facts.setdefault(path[-1], []).append(str(node["value"]))
        for k, v in node.items():
            if k == "value" or k.startswith("@"):
                continue
            walk_facts(v, path + [k], facts)
    elif isinstance(node, list):
        for item in node:
            walk_facts(item, path, facts)


def trigger_hits(trig, facts):
    vals = facts.get(trig["element"], [])
    if trig.get("present"):
        return bool(vals)
    if "in" in trig:
        return any(v in trig["in"] for v in vals)
    if "prefix" in trig:
        return any(any(v.startswith(p) for p in trig["prefix"]) for v in vals)
    return False


def evaluate_pcr(pcr):
    facts = {}
    walk_facts(pcr, ["PatientCareReport"], facts)

    # posture (evidenced, never asserted)
    posture = {"code": "HOPERAT", "display": "healthcare operations (QAPI)", "evidence": None}
    for rt in facts.get("eResponse.05", []):
        if rt in ACTIVE_CARE_RESPONSE_TYPES:
            posture = {"code": "TREAT", "display": "treatment",
                       "evidence": f"eResponse.05={rt} ({ACTIVE_CARE_RESPONSE_TYPES[rt]})"}
            break

    applicable = []
    for m in load_measures():
        hits = [t["note"] for t in m["triggers"]["any"] if trigger_hits(t, facts)]
        if hits:
            applicable.append({"measure": m["id"], "title": m["title"],
                               "triggered_by": hits,
                               "outcome_requirements": m["outcome_requirements"],
                               "sensitivity": m.get("sensitivity", {})})

    elements = sorted({e for m in applicable for e in m["outcome_requirements"]})
    sensitivity = {}
    for m in applicable:
        for k, v in m["sensitivity"].items():
            sensitivity[k] = v

    queries, scopes = [], set()
    for e in elements:
        q, scope, what = ELEMENT_QUERIES[e]
        lane = "C-registry" if q.startswith("[registry") else "A-hie-or-B-payer"
        queries.append({"element": e, "what": what, "lane": lane, "query": q})
        if scope:
            scopes.add(scope)

    return {
        "pcrId": (facts.get("eRecord.01") or ["?"])[0],
        "transportDate": (facts.get("eTimes.03") or facts.get("eTimes.01") or ["?"])[0][:10],
        "posture": posture,
        "applicableMeasures": applicable,
        "requiredElements": elements,
        "sensitivity": sensitivity,
        "requiredScopes": sorted(scopes) + (["Patient/$match (onlyCertainMatches)"] if elements else []),
        "queries": queries,
        "note": "minimum necessary: only elements required by applicable measures are queried"
        if elements else "no outcome-linkage measures apply; NO external queries",
    }


def main():
    if len(sys.argv) < 2:
        sys.exit(__doc__)
    src = pathlib.Path(sys.argv[1])
    if src.suffix == ".xml":
        doc = {"EMSDataSet": canon.convert(canon.ET.parse(src).getroot())}
    else:
        doc = json.loads(src.read_text())
    plans = []
    for header in doc["EMSDataSet"].get("Header", []):
        for pcr in header.get("PatientCareReport", []):
            plans.append(evaluate_pcr(pcr))
    indent = 2 if "--pretty" in sys.argv else None
    print(json.dumps(plans, indent=indent))


if __name__ == "__main__":
    main()
