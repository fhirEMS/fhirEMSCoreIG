#!/usr/bin/env python3
"""CCD lane test: extract eOutcome from the synthetic MVC discharge CCD and
assert (a) parity with the FHIR-lane values for the same scenario, and
(b) ingestion-time minimum-necessary enforcement.

Usage: python3 eOutcomeQueries/test_ccd_lane.py
"""
import importlib.util
import json
import pathlib
import sys

HERE = pathlib.Path(__file__).resolve().parent
_spec = importlib.util.spec_from_file_location("ccd", HERE / "engine" / "ccd_outcome_extract.py")
ccd = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(ccd)
planmod = ccd.planmod

MVC_XML = pathlib.Path(
    "/Users/chad/Documents/Files/fhirReference/fhirEMSCore/nemsisDeidentifer/samples/2025-EMS-3-MVC_v350.xml")
CCD = HERE / "fixtures" / "mvc-discharge-ccd.xml"


def main():
    failures = []
    def check(cond, label):
        print(("PASS" if cond else "FAIL"), label)
        if not cond:
            failures.append(label)

    doc = {"EMSDataSet": planmod.canon.convert(planmod.canon.ET.parse(MVC_XML).getroot())}
    pcr = doc["EMSDataSet"]["Header"][0]["PatientCareReport"][0]
    plan = planmod.evaluate_pcr(pcr)
    out = ccd.extract(str(CCD), plan)
    els = out["elements"]

    # parity with the FHIR-lane seeded scenario (same values by construction)
    check(els.get("eOutcome.01") == "09", "ED disposition 09 from Encounters-section entry")
    check(els.get("eOutcome.02") == "03", "hospital disposition 03 from encompassingEncounter sdtc:dischargeDispositionCode")
    check(els.get("eOutcome.18") == "2024-10-11T16:00:00-04:00", "ED admit time")
    check(els.get("eOutcome.11") == "2024-10-11T21:30:00-04:00", "hospital admit time")
    check(els.get("eOutcome.16") == "2024-10-14T21:30:00-04:00", "hospital discharge time")
    check(set(els.get("eOutcome.13", [])) == {"S06.0X1A", "S22.42XA", "J94.2"},
          "hospital discharge diagnoses (ICD-10-CM translations)")
    procs = els.get("eOutcome.12", [])
    check(procs and procs[0]["code"] == "0W9930Z" and procs[0]["eOutcome.20"] == "2024-10-12T10:00:00-04:00",
          "hospital procedure (ICD-10-PCS) with performed time")

    # minimum necessary at ingestion
    mn = out["minimumNecessary"]
    check(set(els) <= set(plan["requiredElements"]), "extracted ⊆ planned (ingestion-time minimum necessary)")
    check(mn["enforcedAt"].startswith("ingestion"), "minimization point documented")
    check("eOutcome.21" in plan["requiredElements"] and "eOutcome.21" not in els,
          "ISS planned but absent from CCD -> not fabricated")
    check(out["posture"]["code"] == plan["posture"]["code"], "posture carried through")

    print(f"\n{'ALL PASS' if not failures else str(len(failures)) + ' FAILURES'}")
    sys.exit(1 if failures else 0)


if __name__ == "__main__":
    main()
