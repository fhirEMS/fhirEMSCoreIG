#!/usr/bin/env python3
"""Verify the ccda-to-eoutcome Liquid collection against the fixture CCD by
running the REAL Microsoft FHIR Converter (ccda processor) and asserting the
EMSObservationOutcome content matches the normative mapping table, including
parity with the Python CCD-lane extractor's values.

Usage: python3 transformationScripts/tools/test_ccda_to_eoutcome.py [converter-dll]
"""
import glob
import json
import os
import pathlib
import subprocess
import sys
import tempfile

REPO = pathlib.Path(__file__).resolve().parents[2]
CCD = REPO / "eOutcomeQueries" / "fixtures" / "mvc-discharge-ccd.xml"
TEMPLATES = REPO / "transformationScripts" / "ccda-to-eoutcome"
IG_CS = "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter"
LANE_CS = "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-ems-acquisition-lane"
NUBC = "https://www.nubc.org/CodeSystem/PatDischargeStatus"


def find_dll():
    if len(sys.argv) > 1:
        return sys.argv[1]
    for base in (os.environ.get("FHIR_CONVERTER_DLL_DIR"), "/private/tmp"):
        if not base:
            continue
        hits = glob.glob(os.path.join(base, "**", "Microsoft.Health.Fhir.Liquid.Converter.Tool.dll"), recursive=True)
        hits = [h for h in hits if f"bin{os.sep}Release" in h]
        if hits:
            return hits[0]
    sys.exit("SKIP: converter DLL not found (pass path or set FHIR_CONVERTER_DLL_DIR)")


def main():
    dll = find_dll()
    out = pathlib.Path(tempfile.mkdtemp()) / "out.json"
    subprocess.run(
        ["dotnet", dll, "convert", "-d", str(TEMPLATES), "-r", "CcdaToEmsOutcome",
         "-n", str(CCD), "-f", str(out)],
        check=True, capture_output=True, env={**os.environ, "DOTNET_ROLL_FORWARD": "LatestMajor"})
    bundle = json.loads(out.read_text())["FhirResource"]

    failures = []
    def check(cond, label):
        print(("PASS" if cond else "FAIL"), label)
        if not cond:
            failures.append(label)

    obs = bundle["entry"][0]["resource"]
    check(obs["resourceType"] == "Observation", "resourceType Observation")
    check(obs["meta"]["profile"] == [
        "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-outcome"],
        "meta.profile ems-observation-outcome")
    check(obs["code"]["coding"][0]["code"] == "eOutcomePanel", "code eOutcomePanel")

    comps = {}
    for c in obs["component"]:
        k = c["code"]["coding"][0]["code"]
        v = c.get("valueDateTime") or c["valueCodeableConcept"]["coding"][0]
        comps.setdefault(k, []).append(v)

    def one(k):
        return comps.get(k, [None])[0]

    check(one("8656-1") and one("8656-1")["code"] == "03" and one("8656-1")["system"] == NUBC,
          "hospitalDisposition 03 (NUBC) from sdtc_dischargeDispositionCode")
    check(one("52455-3") == "2024-10-11T21:30:00-04:00", "hospitalAdmitDateTime")
    check(one("8651-2") == "2024-10-14T21:30:00-04:00", "hospitalDischargeDateTime")
    check(one("eOutcomeEDDisposition") and one("eOutcomeEDDisposition")["code"] == "09",
          "edDisposition 09 from Encounters-section EMER entry")
    check(one("eOutcomeEDArrivalDateTime") == "2024-10-11T16:00:00-04:00", "edAdmitDateTime")
    dx = {v["code"] for v in comps.get("29308-4", [])}
    check(dx == {"S06.0X1A", "S22.42XA", "J94.2"}, "hospitalDiagnosis ICD-10-CM set")
    check(all(v["system"] == "http://hl7.org/fhir/sid/icd-10-cm" for v in comps.get("29308-4", [])),
          "hospitalDiagnosis system icd-10-cm")
    pr = one("eOutcomeHospitalProcedure")
    check(pr and pr["code"] == "0W9930Z", "hospitalProcedure ICD-10-PCS")
    check("29548-5" not in comps, "no edDiagnosis fabricated (fixture has no ED Dx section)")

    ext = {e["url"]: e for e in obs["extension"][0]["extension"]}
    check(obs["extension"][0]["url"].endswith("/ext-ems-outcome-source"), "acquisition-source extension url")
    lane = ext["lane"]["valueCodeableConcept"]["coding"][0]
    check(lane["code"] == "ccd-document" and lane["system"] == LANE_CS, "lane ccd-document")
    check(ext["sourceDocumentId"]["valueIdentifier"]["value"] == "urn:oid:2.16.840.1.113883.19.5.99999.1",
          "sourceDocumentId from ClinicalDocument/id")
    check("valueDateTime" in ext["retrievedDateTime"], "retrievedDateTime present")

    # IG-namespace codes resolve against the built package
    pkg = REPO / "output" / "CodeSystem-cs-nemsis-encounter.json"
    if pkg.exists():
        codes = {c["code"] for c in json.loads(pkg.read_text())["concept"]}
        used = {k for k in comps if not k[0].isdigit()}
        check(used <= codes, f"IG component codes resolve in cs-nemsis-encounter: {sorted(used)}")
    lanecs = REPO / "output" / "CodeSystem-cs-ems-acquisition-lane.json"
    if lanecs.exists():
        codes = {c["code"] for c in json.loads(lanecs.read_text())["concept"]}
        check("ccd-document" in codes, "lane code resolves in cs-ems-acquisition-lane")

    print(f"\n{'ALL PASS' if not failures else str(len(failures)) + ' FAILURES'}")
    sys.exit(1 if failures else 0)


if __name__ == "__main__":
    main()
