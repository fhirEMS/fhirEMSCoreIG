#!/usr/bin/env python3
"""CCD lane (Lane A2): extract eOutcome elements from a USCDI v3 C-CDA CCD /
discharge summary — for sources that exchange documents (HIE / TEFCA document
QHINs / Direct) instead of US Core 6.1.0 FHIR endpoints.

Same USCDI v3 data classes as the FHIR lane, different syntax:

  eOutcome        C-CDA source
  .01 / .02       encompassingEncounter sdtc:dischargeDispositionCode (NUBC
                  2.16.840.1.113883.12.112), or Encounters-section entries
  .18 / .11 / .16 encompassingEncounter / encounter-entry effectiveTime low/high
  .10 / .13       ED / Hospital Discharge Diagnosis sections (ICD-10-CM
                  2.16.840.1.113883.6.90)
  .09 / .12       Procedures section (ICD-10-PCS 2.16.840.1.113883.6.4),
                  effectiveTime -> .19/.20

PRIVACY: a document lane delivers the WHOLE CCD — minimum necessary cannot be
enforced at request time as with scoped FHIR queries. This extractor therefore
enforces it at INGESTION: only elements in the acquisition plan are extracted;
everything else is counted into `discarded` (never persisted) so the audit
trail can show the minimization that occurred. Part 2-flagged plans apply the
same DS4P labeling downstream as the FHIR lane.

Usage:
  python3 ccd_outcome_extract.py <ccd.xml> <plan.json-or-pcr.xml> [--pretty]
"""
import importlib.util
import json
import pathlib
import sys
import xml.etree.ElementTree as ET

HERE = pathlib.Path(__file__).resolve().parent
_spec = importlib.util.spec_from_file_location("planmod", HERE / "ems_outcome_plan.py")
planmod = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(planmod)

NS = {"h": "urn:hl7-org:v3", "sdtc": "urn:hl7-org:sdtc"}
OID = {
    "icd10cm": "2.16.840.1.113883.6.90",
    "icd10pcs": "2.16.840.1.113883.6.4",
    "nubc": "2.16.840.1.113883.12.112",
    "snomed": "2.16.840.1.113883.6.96",
}
# LOINC section codes
SEC_ED_DX = "18630-4"          # ED diagnosis (visit diagnoses variants also seen)
SEC_DISCHARGE_DX = "11535-2"   # Hospital discharge diagnosis
SEC_PROCEDURES = "47519-4"     # History of procedures
SEC_ENCOUNTERS = "46240-8"     # Encounters


def _ts(el):
    if el is None:
        return None
    v = el.get("value")
    if not v:
        return None
    # HL7 TS (YYYYMMDDHHMMSS±zzzz) -> ISO 8601 (best effort)
    d = v[:8]
    t = v[8:14]
    tz = v[14:] if len(v) > 14 else ""
    iso = f"{d[0:4]}-{d[4:6]}-{d[6:8]}"
    if t:
        iso += f"T{t[0:2]}:{t[2:4] or '00'}:{t[4:6] or '00'}"
        if tz and len(tz) == 5:
            iso += f"{tz[0:3]}:{tz[3:5]}"
    return iso


def _sections(root):
    out = {}
    for sec in root.findall(".//h:structuredBody//h:section", NS):
        code = sec.find("h:code", NS)
        if code is not None and code.get("code"):
            out.setdefault(code.get("code"), []).append(sec)
    return out


def _codes_in(sec, system_oid):
    vals = []
    for el in sec.findall(".//h:entry//*", NS):
        if el.tag.endswith("}value") or el.tag.endswith("}code"):
            if el.get("codeSystem") == system_oid and el.get("code"):
                vals.append(el.get("code"))
        for tr in el.findall("h:translation", NS):
            if tr.get("codeSystem") == system_oid and tr.get("code"):
                vals.append(tr.get("code"))
    # de-dup preserving order
    seen, out = set(), []
    for v in vals:
        if v not in seen:
            seen.add(v)
            out.append(v)
    return out


def extract(ccd_path, plan):
    root = ET.parse(ccd_path).getroot()
    secs = _sections(root)
    available = {}

    enc = root.find(".//h:componentOf/h:encompassingEncounter", NS)
    if enc is not None:
        lo = _ts(enc.find("h:effectiveTime/h:low", NS))
        hi = _ts(enc.find("h:effectiveTime/h:high", NS))
        disp = enc.find("sdtc:dischargeDispositionCode", NS)
        code_el = enc.find("h:code", NS)
        is_ed = code_el is not None and code_el.get("code") in ("EMER", "4525004")
        if is_ed:
            if lo:
                available["eOutcome.18"] = lo
            if disp is not None and disp.get("codeSystem") == OID["nubc"]:
                available["eOutcome.01"] = disp.get("code")
        else:
            if lo:
                available["eOutcome.11"] = lo
            if hi:
                available["eOutcome.16"] = hi
            if disp is not None and disp.get("codeSystem") == OID["nubc"]:
                available["eOutcome.02"] = disp.get("code")

    # Encounters section can carry the other encounter (ED doc -> IP entry etc.)
    for sec in secs.get(SEC_ENCOUNTERS, []):
        for entry in sec.findall(".//h:encounter", NS):
            cls = entry.find("h:code", NS)
            lo = _ts(entry.find("h:effectiveTime/h:low", NS))
            hi = _ts(entry.find("h:effectiveTime/h:high", NS))
            disp = entry.find("sdtc:dischargeDispositionCode", NS)
            is_ed = cls is not None and cls.get("code") in ("EMER", "4525004")
            if is_ed:
                available.setdefault("eOutcome.18", lo)
                if disp is not None:
                    available.setdefault("eOutcome.01", disp.get("code"))
            else:
                available.setdefault("eOutcome.11", lo)
                if hi:
                    available.setdefault("eOutcome.16", hi)
                if disp is not None:
                    available.setdefault("eOutcome.02", disp.get("code"))

    for sec in secs.get(SEC_ED_DX, []):
        dx = _codes_in(sec, OID["icd10cm"])
        if dx:
            available["eOutcome.10"] = dx
    for sec in secs.get(SEC_DISCHARGE_DX, []):
        dx = _codes_in(sec, OID["icd10cm"])
        if dx:
            available["eOutcome.13"] = dx
    for sec in secs.get(SEC_PROCEDURES, []):
        procs = []
        for pr in sec.findall(".//h:procedure", NS):
            c = pr.find("h:code", NS)
            code = None
            if c is not None:
                if c.get("codeSystem") == OID["icd10pcs"]:
                    code = c.get("code")
                else:
                    for tr in c.findall("h:translation", NS):
                        if tr.get("codeSystem") == OID["icd10pcs"]:
                            code = tr.get("code")
            when = _ts(pr.find("h:effectiveTime", NS)) or _ts(pr.find("h:effectiveTime/h:low", NS))
            if code:
                procs.append({"code": code, "time": when})
        if procs:
            # split ED vs hospital is document-context dependent; a discharge
            # summary's procedures are hospital procedures
            available["eOutcome.12"] = [{"code": p["code"], "eOutcome.20": p["time"]} for p in procs]

    # ── ingestion-time minimum necessary ─────────────────────────
    planned = set(plan["requiredElements"])
    elements = {k: v for k, v in available.items() if k in planned}
    discarded = sorted(set(available) - planned)
    return {
        "lane": "A2-ccd-document",
        "pcrId": plan["pcrId"],
        "posture": plan["posture"],
        "sensitivity": plan["sensitivity"],
        "elements": elements,
        "minimumNecessary": {
            "enforcedAt": "ingestion (document lane delivers full CCD)",
            "extracted": sorted(elements),
            "discardedAvailableElements": discarded,
            "note": "discarded elements were present in the document but not in the plan; they were not persisted",
        },
    }


def main():
    if len(sys.argv) < 3:
        sys.exit(__doc__)
    ccd = sys.argv[1]
    src = pathlib.Path(sys.argv[2])
    if src.suffix == ".xml":
        doc = {"EMSDataSet": planmod.canon.convert(planmod.canon.ET.parse(src).getroot())}
        pcr = doc["EMSDataSet"]["Header"][0]["PatientCareReport"][0]
        plan = planmod.evaluate_pcr(pcr)
    else:
        plan = json.loads(src.read_text())[0]
    out = extract(ccd, plan)
    print(json.dumps(out, indent=2 if "--pretty" in sys.argv else None))


if __name__ == "__main__":
    main()
