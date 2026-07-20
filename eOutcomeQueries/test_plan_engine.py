#!/usr/bin/env python3
"""Regression test: plan engine output vs golden plans for the 5 real sample
PCRs, plus invariant checks (posture evidence, Part 2 flagging, minimum
necessary).

Usage: python3 eOutcomeQueries/test_plan_engine.py [samplesDir]
"""
import json
import pathlib
import subprocess
import sys

HERE = pathlib.Path(__file__).resolve().parent
ENGINE = HERE / "engine" / "ems_outcome_plan.py"
GOLDEN = HERE / "golden"
DEFAULT_SAMPLES = pathlib.Path(
    "/Users/chad/Documents/Files/fhirReference/fhirEMSCore/nemsisDeidentifer/samples")

def main():
    samples = pathlib.Path(sys.argv[1]) if len(sys.argv) > 1 else DEFAULT_SAMPLES
    failures = []
    def check(cond, label):
        print(("PASS" if cond else "FAIL"), label)
        if not cond:
            failures.append(label)

    for xml in sorted(samples.glob("2025-EMS-*.xml")):
        name = xml.stem
        out = subprocess.run([sys.executable, str(ENGINE), str(xml), "--pretty"],
                             capture_output=True, text=True, check=True)
        got = json.loads(out.stdout)
        want = json.loads((GOLDEN / f"{name}.plan.json").read_text())
        check(got == want, f"{name}: matches golden plan")

    # invariants over goldens
    plans = {p.stem.replace(".plan", ""): json.loads(p.read_text())[0]
             for p in GOLDEN.glob("*.plan.json")}
    od = plans["2025-EMS-1-Overdose_v350"]
    check(od["sensitivity"].get("part2") is True, "overdose plan carries Part 2 flag")
    check(len(od["requiredElements"]) == 3, "overdose plan is minimum-necessary (3 elements)")
    cp = plans["2025-EMS-5-CPMIH_v350"]
    check(cp["posture"]["code"] == "TREAT" and cp["posture"]["evidence"],
          "CPMIH posture=TREAT with recorded evidence")
    check(not cp["queries"], "CPMIH: no QA measures -> no external queries compiled")
    for n, p in plans.items():
        if p["posture"]["code"] == "TREAT":
            check(bool(p["posture"]["evidence"]), f"{n}: TREAT posture is evidenced")
        got_els = {q["element"] for q in p["queries"]}
        need_els = set(p["requiredElements"])
        check(got_els == need_els, f"{n}: queries exactly cover required elements")

    print(f"\n{'ALL PASS' if not failures else str(len(failures)) + ' FAILURES'}")
    sys.exit(1 if failures else 0)

if __name__ == "__main__":
    main()
