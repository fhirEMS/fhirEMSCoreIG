#!/usr/bin/env python3
"""Batch-test the Liquid pipeline against real NEMSIS EMSDataSet XML files.

For each input XML:
  1. canonicalize (same code path as nemsis-xml-to-json.py)
  2. render NemsisBundle via python-liquid (generate_uuid shim + comma cleanup)
  3. generic assertions: valid JSON, >=1 Patient/Encounter, internal references
     resolve, meta.profile URLs exist in package/, IG codings resolve against
     package CodeSystems, no unresolved Liquid output ("{{"/"}}"), no raw
     "None" leaked into strings
  4. optionally re-run through the real Microsoft converter
     (--converter-dll <path to Microsoft.Health.Fhir.Liquid.Converter.Tool.dll>)
     and require identical resourceType counts

Usage:
  python3 test-real-samples.py file1.xml [file2.xml ...] [--converter-dll DLL]
"""
import importlib.util
import json
import pathlib
import re
import subprocess
import sys
import tempfile
import uuid

from liquid import CachingFileSystemLoader, Environment

ROOT = pathlib.Path(__file__).resolve().parents[2]
LIQUID_DIR = ROOT / "transformationScripts" / "microsoft-fhir-converter"
PACKAGE = ROOT / "package"

spec = importlib.util.spec_from_file_location(
    "canon", pathlib.Path(__file__).parent / "nemsis-xml-to-json.py")
canon = importlib.util.module_from_spec(spec)
spec.loader.exec_module(canon)

env = Environment(loader=CachingFileSystemLoader(str(LIQUID_DIR), ext=".liquid"))
env.filters["generate_uuid"] = lambda v: str(uuid.uuid5(uuid.NAMESPACE_OID, str(v)))

def strip_trailing_commas(text):
    prev = None
    while prev != text:
        prev = text
        text = re.sub(r",(\s*[}\]])", r"\1", text)
    return text

SD_URLS = {json.loads(f.read_text())["url"] for f in PACKAGE.glob("StructureDefinition-*.json")}
CS = {}
for f in PACKAGE.glob("CodeSystem-*.json"):
    j = json.loads(f.read_text())
    CS[j["url"]] = {c["code"] for c in j.get("concept", [])}

def render(msg):
    return strip_trailing_commas(env.get_template("NemsisBundle.liquid").render(msg=msg))

def check_bundle(bundle, label, failures):
    def check(cond, what):
        if not cond:
            failures.append(f"{label}: {what}")
        return cond
    entries = bundle.get("entry", [])
    by_type = {}
    for e in entries:
        by_type.setdefault(e["resource"]["resourceType"], []).append(e)
    counts = {k: len(v) for k, v in sorted(by_type.items())}
    check(bundle.get("type") == "transaction", "not a transaction bundle")
    check(counts.get("Patient", 0) >= 1, "no Patient")
    check(counts.get("Encounter", 0) >= 1, "no Encounter")
    blob = json.dumps(bundle)
    full_urls = {e["fullUrl"] for e in entries}
    refs = re.findall(r'"reference"\s*:\s*"(urn:uuid:[^"]+)"', blob)
    unresolved = [r for r in refs if r not in full_urls]
    check(not unresolved, f"unresolved references: {unresolved[:3]}")
    profiles = {p for e in entries for p in e["resource"].get("meta", {}).get("profile", [])}
    missing = sorted(p for p in profiles if p not in SD_URLS and not p.startswith("http://hl7.org/fhir/us/core/"))
    check(not missing, f"unknown profiles: {missing}")
    bad_codes = []
    for m in re.finditer(r'\{\s*"system"\s*:\s*"([^"]+)"\s*,\s*"code"\s*:\s*"([^"]+)"', blob):
        system, code = m.group(1), m.group(2)
        if system.startswith("https://fhirems.github.io") and (system not in CS or code not in CS[system]):
            bad_codes.append(f"{code}@{system.rsplit('/',1)[1]}")
    check(not bad_codes, f"unresolvable IG codes: {sorted(set(bad_codes))[:5]}")
    check("{{" not in blob and "{%" not in blob, "unresolved Liquid syntax in output")
    check('"None"' not in blob, "python None leaked into output")
    check(all("id" in e["resource"] for e in entries), "resource missing id")
    return counts

def main():
    args = sys.argv[1:]
    dll = None
    if "--converter-dll" in args:
        i = args.index("--converter-dll")
        dll = args[i + 1]
        del args[i:i + 2]
    failures = []
    for path in args:
        name = pathlib.Path(path).name
        msg = {"EMSDataSet": canon.convert(canon.ET.parse(path).getroot())}
        rendered = render(msg)
        try:
            bundle = json.loads(rendered)
        except json.JSONDecodeError as e:
            failures.append(f"{name}: render is not valid JSON ({e})")
            print(f"FAIL {name}: invalid JSON")
            continue
        counts = check_bundle(bundle, name, failures)
        line = f"python-liquid {name}: {counts}"
        if dll:
            with tempfile.NamedTemporaryFile("w", suffix=".json", delete=False) as tf:
                json.dump(msg, tf)
                tfname = tf.name
            out = tfname + ".out"
            r = subprocess.run(
                ["dotnet", dll, "convert", "-d", str(LIQUID_DIR), "-r", "NemsisBundle",
                 "-n", tfname, "-f", out],
                capture_output=True, text=True, env={"DOTNET_ROLL_FORWARD": "LatestMajor", "PATH": "/usr/local/share/dotnet:/usr/bin:/bin"})
            if r.returncode != 0:
                failures.append(f"{name}: real converter failed: {r.stdout[-200:]}{r.stderr[-200:]}")
                line += " | REAL CONVERTER FAILED"
            else:
                real = json.load(open(out))["FhirResource"]
                real_counts = {}
                for e in real.get("entry", []):
                    rt = e["resource"]["resourceType"]
                    real_counts[rt] = real_counts.get(rt, 0) + 1
                if dict(sorted(real_counts.items())) != counts:
                    failures.append(f"{name}: converter counts {real_counts} != python {counts}")
                    line += f" | MISMATCH real={real_counts}"
                else:
                    line += " | real converter matches"
        status = "FAIL" if any(f.startswith(name) for f in failures) else "PASS"
        print(f"{status} {line}")
    print(f"\n{len(args) - len(set(f.split(':')[0] for f in failures))}/{len(args)} files passed")
    for f in failures:
        print(" -", f)
    sys.exit(1 if failures else 0)

if __name__ == "__main__":
    main()
