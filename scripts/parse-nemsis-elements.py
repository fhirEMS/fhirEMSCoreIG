#!/usr/bin/env python3
"""
parse-nemsis-elements.py
========================
Parses NEMSIS ElementDetails_Full.txt pipe-delimited files and produces:
  1. A JSON inventory of all elements
  2. A summary CSV for review
  3. A count of elements by section and dataset

Usage:
    python3 parse-nemsis-elements.py <element_details_file.txt> [output_dir]

Example:
    python3 parse-nemsis-elements.py "../../source/nemsis/EMSDataSet_ElementDetails_Full.txt" ./output

NEMSIS pipe-delimited columns (from StateDataSet sample):
  DatasetName | DatasetType | ElementNumber | ElementName | V2Number |
  National | State | Definition | Usage | V3Changes | MinOccurs | MaxOccurs |
  IsNillable | DataType | NV | PN | PNNill | NVList | PNList |
  minLength | maxLength | length | minInclusive | maxInclusive |
  minExclusive | totalDigits | fractionDigits | pattern
"""

import sys
import csv
import json
import os
from collections import defaultdict


def parse_file(filepath):
    elements = []
    with open(filepath, 'r', encoding='utf-8-sig') as f:
        # Remove surrounding single quotes from pipe-delimited values
        lines = f.readlines()

    headers = None
    for line in lines:
        line = line.strip()
        if not line:
            continue
        # Remove surrounding quotes from each field
        parts = [p.strip("'") for p in line.split("|")]
        if headers is None:
            headers = parts
            continue
        if len(parts) >= len(headers):
            row = dict(zip(headers, parts))
            elements.append(row)

    return headers, elements


def summarize(elements):
    by_section = defaultdict(list)
    by_usage = defaultdict(int)
    has_nv = 0
    has_pn = 0
    nillable = 0

    for elem in elements:
        section = elem.get("ElementNumber", "").split(".")[0] if "." in elem.get("ElementNumber", "") else "unknown"
        by_section[section].append(elem.get("ElementName", ""))
        by_usage[elem.get("Usage", "Unknown")] += 1
        if elem.get("NV"):
            has_nv += 1
        if elem.get("PN"):
            has_pn += 1
        if elem.get("IsNillable"):
            nillable += 1

    print(f"\n{'='*60}")
    print(f"NEMSIS Element Summary")
    print(f"{'='*60}")
    print(f"Total elements: {len(elements)}")
    print(f"Elements with NV support: {has_nv}")
    print(f"Elements with PN support: {has_pn}")
    print(f"Nillable elements: {nillable}")
    print(f"\nUsage distribution:")
    for usage, count in sorted(by_usage.items(), key=lambda x: -x[1]):
        print(f"  {usage}: {count}")
    print(f"\nSections ({len(by_section)}):")
    for section in sorted(by_section.keys()):
        print(f"  {section}: {len(by_section[section])} elements")
    print(f"{'='*60}\n")
    return by_section


def main():
    if len(sys.argv) < 2:
        print("Usage: parse-nemsis-elements.py <element_details_file.txt> [output_dir]")
        sys.exit(1)

    input_file = sys.argv[1]
    output_dir = sys.argv[2] if len(sys.argv) > 2 else "."
    os.makedirs(output_dir, exist_ok=True)

    print(f"Parsing: {input_file}")
    headers, elements = parse_file(input_file)
    print(f"Found {len(elements)} elements")

    # Summarize
    by_section = summarize(elements)

    # Write JSON
    base_name = os.path.splitext(os.path.basename(input_file))[0]
    json_out = os.path.join(output_dir, f"{base_name}.json")
    with open(json_out, 'w') as f:
        json.dump({"headers": headers, "elements": elements}, f, indent=2)
    print(f"JSON written: {json_out}")

    # Write summary CSV
    csv_out = os.path.join(output_dir, f"{base_name}_summary.csv")
    with open(csv_out, 'w', newline='') as f:
        if elements:
            writer = csv.DictWriter(f, fieldnames=headers)
            writer.writeheader()
            writer.writerows(elements)
    print(f"CSV written: {csv_out}")

    # Write section index
    idx_out = os.path.join(output_dir, f"{base_name}_sections.json")
    section_index = {k: len(v) for k, v in by_section.items()}
    with open(idx_out, 'w') as f:
        json.dump(section_index, f, indent=2)
    print(f"Section index written: {idx_out}")


if __name__ == "__main__":
    main()
