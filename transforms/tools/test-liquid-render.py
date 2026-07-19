#!/usr/bin/env python3
"""Render the Liquid transform pipeline against the sample fixture and assert
the output is a well-formed fhirEMSCore bundle.

Mimics the Microsoft FHIR Converter runtime closely enough for CI:
- {% include %} resolved from transforms/liquid/
- a deterministic generate_uuid filter (uuid5, matching the converter's
  seeded-GUID behavior in spirit)
- post-render trailing-comma cleanup (the converter does the same)

Usage: python3 transforms/tools/test-liquid-render.py [--out bundle.json]
"""
import json
import pathlib
import re
import sys
import uuid

from liquid import CachingFileSystemLoader, Environment

ROOT = pathlib.Path(__file__).resolve().parents[2]
LIQUID_DIR = ROOT / "transforms" / "liquid"
FIXTURE = ROOT / "transforms" / "fixtures" / "sample-pcr.json"
PACKAGE = ROOT / "package"

env = Environment(loader=CachingFileSystemLoader(str(LIQUID_DIR), ext=".liquid"))

def generate_uuid(value):
    return str(uuid.uuid5(uuid.NAMESPACE_OID, str(value)))

env.filters["generate_uuid"] = generate_uuid

def strip_trailing_commas(text: str) -> str:
    prev = None
    while prev != text:
        prev = text
        text = re.sub(r",(\s*[}\]])", r"\1", text)
    return text

def main():
    msg = json.loads(FIXTURE.read_text())
    template = env.get_template("NemsisBundle.liquid")
    rendered = strip_trailing_commas(template.render(msg=msg))
    try:
        bundle = json.loads(rendered)
    except json.JSONDecodeError as e:
        sys.exit(f"FAIL: rendered output is not valid JSON: {e}\n---\n{rendered[:2000]}")

    failures = []
    def check(cond, label):
        print(("PASS" if cond else "FAIL"), label)
        if not cond:
            failures.append(label)

    check(bundle.get("resourceType") == "Bundle" and bundle.get("type") == "transaction",
          "bundle is a transaction Bundle")

    entries = bundle.get("entry", [])
    by_type = {}
    for e in entries:
        by_type.setdefault(e["resource"]["resourceType"], []).append(e)
    counts = {k: len(v) for k, v in sorted(by_type.items())}
    print("  resource counts:", counts)
    check(counts.get("Patient") == 1, "1 Patient")
    check(counts.get("Encounter") == 1, "1 Encounter")
    check(counts.get("Location") == 1, "1 Location (scene)")
    check(counts.get("Condition") == 1, "1 Condition (primary impression)")
    check(counts.get("Observation") == 4, "4 Observations (BP panel + HR + SpO2 + RR)")
    check(counts.get("Procedure") == 1, "1 Procedure")
    check(counts.get("MedicationAdministration") == 1, "1 MedicationAdministration")

    # every internal reference resolves to a fullUrl in the bundle
    full_urls = {e["fullUrl"] for e in entries}
    refs = re.findall(r'"reference"\s*:\s*"(urn:uuid:[^"]+)"', json.dumps(bundle))
    check(all(r in full_urls for r in refs), f"all {len(refs)} internal references resolve")

    # every meta.profile is a StructureDefinition in the built package
    sd_urls = set()
    for f in PACKAGE.glob("StructureDefinition-*.json"):
        sd_urls.add(json.loads(f.read_text())["url"])
    profiles = {p for e in entries for p in e["resource"].get("meta", {}).get("profile", [])}
    missing = sorted(p for p in profiles if p not in sd_urls)
    check(not missing, f"all {len(profiles)} meta.profile URLs exist in package/ {missing or ''}")

    # every IG code system referenced exists in the package; NEMSIS codes exist in their CS
    cs = {}
    for f in PACKAGE.glob("CodeSystem-*.json"):
        j = json.loads(f.read_text())
        cs[j["url"]] = {c["code"] for c in j.get("concept", [])}
    bad = []
    for m in re.finditer(r'\{\s*"system"\s*:\s*"([^"]+)"\s*,\s*"code"\s*:\s*"([^"]+)"', json.dumps(bundle)):
        system, code = m.group(1), m.group(2)
        if system.startswith("https://fhirems.github.io"):
            if system not in cs:
                bad.append(f"unknown system {system}")
            elif code not in cs[system]:
                bad.append(f"{code} not in {system.rsplit('/',1)[1]}")
    check(not bad, f"all IG codings resolve against package CodeSystems {bad or ''}")

    # NDR-001: nil+NV eScene.01 must NOT appear anywhere
    check("7701003" not in json.dumps(bundle), "nil/NV element omitted (NDR-001)")

    if "--out" in sys.argv:
        out = pathlib.Path(sys.argv[sys.argv.index("--out") + 1])
        out.write_text(json.dumps(bundle, indent=2))
        print("wrote", out)

    total = 12
    print(f"{total - len(failures)}/{total} checks passed")
    sys.exit(1 if failures else 0)

if __name__ == "__main__":
    main()
