#!/usr/bin/env python3
"""Canonicalize NEMSIS v3 EMSDataSet XML to JSON for FHIR transformation.

Both the Microsoft FHIR Converter (Liquid) and Google Whistle consume JSON,
so NEMSIS XML is first normalized with these deterministic rules:

1. Every LEAF element becomes an object: {"value": <text or null>, ...attrs}.
   Attributes (NV, PN, CorrelationID, ...) become sibling keys of "value".
   xsi:nil="true" leaves have value = null (the NV attribute explains why).
2. Container elements become objects keyed by child tag name.
3. Elements that may repeat are ALWAYS arrays (even when one instance is
   present): Header, PatientCareReport, every *Group element, and the
   known repeating leaf elements listed in FORCE_ARRAY.
4. Namespaces are stripped; tag names keep their NEMSIS dotted form
   (e.g. "eVitals.06").

Usage:
  python3 nemsis-xml-to-json.py input.xml > output.json
"""
import json
import sys
import xml.etree.ElementTree as ET

# Leaf elements defined with maxOccurs="unbounded" that transforms iterate.
FORCE_ARRAY = {
    "Header", "PatientCareReport",
    # eResponse / eDispatch
    "eResponse.08", "eResponse.09", "eResponse.10", "eResponse.11", "eResponse.12",
    "eResponse.24",
    # eSituation (.09/.11 are single primary symptom/impression; .10/.12 repeat)
    "eSituation.10", "eSituation.12",
    # eVitals
    "eVitals.03", "eVitals.05",
    # eProtocols
    "eProtocols.01",
    # eMedications / eProcedures
    "eMedications.07", "eProcedures.07",
    # eDisposition
    "eDisposition.18", "eDisposition.20", "eDisposition.23",
    # eHistory
    "eHistory.05", "eHistory.06", "eHistory.07", "eHistory.08", "eHistory.09",
    "eHistory.17",
    # eInjury
    "eInjury.01", "eInjury.02", "eInjury.03", "eInjury.04", "eInjury.07",
    "eInjury.08", "eInjury.10",
    # eOther
    "eOther.02", "eOther.03", "eOther.06", "eOther.07", "eOther.13",
    # eCrew
    "eCrew.CrewGroup", "eCrew.02",
}

def localname(tag: str) -> str:
    return tag.split("}", 1)[1] if "}" in tag else tag

def is_repeating(name: str) -> bool:
    return name in FORCE_ARRAY or name.endswith("Group")

def convert(elem: ET.Element):
    children = list(elem)
    attrs = {localname(k): v for k, v in elem.attrib.items()}
    nil = attrs.pop("nil", "false") == "true"
    if not children:  # leaf
        text = None if nil else (elem.text.strip() if elem.text and elem.text.strip() else None)
        return {"value": text, **attrs}
    out = {}
    if attrs:
        out.update({f"@{k}": v for k, v in attrs.items()})
    for child in children:
        name = localname(child.tag)
        val = convert(child)
        if is_repeating(name):
            out.setdefault(name, []).append(val)
        elif name in out:  # unexpected repeat — promote to array rather than drop
            if not isinstance(out[name], list):
                out[name] = [out[name]]
            out[name].append(val)
        else:
            out[name] = val
    return out

def main():
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    root = ET.parse(sys.argv[1]).getroot()
    doc = {localname(root.tag): convert(root)}
    json.dump(doc, sys.stdout, indent=2)
    print()

if __name__ == "__main__":
    main()
