#!/usr/bin/env python3
"""P3 end-to-end test: seed a hospital-side FHIR server, execute every sample
PCR's acquisition plan against it, and assert privacy + correctness
invariants.

Prereq: a FHIR server (fhirEngine) on --target with a FRESH store, already
seeded via tools/seed_hospital.py.

Usage: python3 eOutcomeQueries/test_acquire_e2e.py --target http://127.0.0.1:3301
"""
import importlib.util
import json
import pathlib
import sys

HERE = pathlib.Path(__file__).resolve().parent
_spec = importlib.util.spec_from_file_location("acq", HERE / "engine" / "ems_outcome_acquire.py")
acq = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(acq)

SAMPLES = pathlib.Path("/Users/chad/Documents/Files/fhirReference/fhirEMSCore/nemsisDeidentifer/samples")


def main():
    target = sys.argv[sys.argv.index("--target") + 1]
    outdir = HERE / "golden" / "acquired"
    failures = []

    def check(cond, label):
        print(("PASS" if cond else "FAIL"), label)
        if not cond:
            failures.append(label)

    r = {}
    for xml in sorted(SAMPLES.glob("2025-EMS-*.xml")):
        r[xml.stem] = acq.acquire(str(xml), target, str(outdir))[0]

    od = r["2025-EMS-1-Overdose_v350"]
    check(od["match"]["method"].startswith("demographic-search"),
          "match fell back to demographic search ($match unsupported) with single-certain policy")
    check(od["nemsisOutcome"].get("eOutcome.01") == "01", "Overdose: ED disposition 01 acquired")
    check("eOutcome.02" not in od["nemsisOutcome"], "Overdose: no inpatient encounter -> no .02 fabricated")
    check(set(od["nemsisOutcome"].get("eOutcome.10", [])) == {"T40.1X1A", "F19.10"},
          "Overdose: ED dx acquired")
    sec = {c["code"] for c in od["observation"]["meta"].get("security", [])}
    check({"42CFRPart2", "R"} <= sec, "Overdose: Part 2 DS4P labels on Observation")
    planned = set(od["plan"]["requiredElements"])
    got = set(od["nemsisOutcome"].keys())
    check(got <= planned, "Overdose: acquired elements are a subset of the plan (minimum necessary)")

    su = r["2025-EMS-2-Suicide_v350"]
    check(su["nemsisOutcome"].get("eOutcome.02") == "20", "Suicide: hospital disposition 20 (expired) — survival outcome")
    check(su["linkage"] == "partOf", "Suicide: ED->IP linked via partOf")
    check("eOutcome.16" in su["nemsisOutcome"], "Suicide: discharge time acquired")

    mvc = r["2025-EMS-3-MVC_v350"]
    check("S06.0X1A" in mvc["nemsisOutcome"].get("eOutcome.13", []), "MVC: hospital dx acquired")
    check("eOutcome.21" in mvc["registryLaneDeferred"], "MVC: ISS correctly deferred to registry lane")
    check(mvc["provenance"]["activity"]["coding"][0]["code"] == "HOPERAT",
          "MVC: Provenance posture HOPERAT")

    eb = r["2025-EMS-4-eBike_v350"]
    check(eb["linkage"] == "temporal-adjacency-72h", "eBike: ED->IP linked via temporal adjacency (no partOf)")
    check(eb["nemsisOutcome"].get("eOutcome.02") == "01", "eBike: hospital disposition acquired via adjacency link")

    cp = r["2025-EMS-5-CPMIH_v350"]
    check(cp["queriesMade"] == [], "CPMIH: ZERO queries made (no applicable measures)")
    check(cp["plan"]["posture"]["code"] == "TREAT", "CPMIH: posture TREAT preserved in output")

    for name, res in r.items():
        if res["queriesMade"]:
            check(res["auditEvent"]["purposeOfEvent"][0]["coding"][0]["code"] == res["plan"]["posture"]["code"],
                  f"{name}: AuditEvent purpose == plan posture")
            comp_codes = {c["code"]["coding"][0]["code"] for c in res["observation"]["component"]}
            check(len(comp_codes) > 0, f"{name}: Observation has outcome components")

    print(f"\n{'ALL PASS' if not failures else str(len(failures)) + ' FAILURES'}")
    sys.exit(1 if failures else 0)


if __name__ == "__main__":
    main()
