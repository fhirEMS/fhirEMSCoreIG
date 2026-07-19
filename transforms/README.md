# NEMSIS XML → fhirEMSCore Transformation Scripts

Two parallel transformation implementations convert NEMSIS v3.5.1 `EMSDataSet`
XML into FHIR R4 transaction Bundles conforming to this IG
(`fhirems.emscore`, canonical `https://fhirems.github.io/fhirEMSCoreIG`):

| Engine | Directory | Status |
|---|---|---|
| Microsoft FHIR Converter (Liquid) | `liquid/` | Rendered + structurally verified against the fixture (12/12 checks) |
| Google Whistle (healthcare-data-harmonization) | `whistle/` | Authored to mirror the Liquid mappings; not yet executed against a Whistle engine |

## Pipeline

```
NEMSIS XML ──tools/nemsis-xml-to-json.py──▶ canonical JSON ──┬─▶ Liquid templates ──▶ FHIR Bundle
                                                             └─▶ Whistle maps    ──▶ FHIR Bundle
```

Both engines consume JSON, so NEMSIS XML is first normalized by
`tools/nemsis-xml-to-json.py` with deterministic rules:

- every **leaf** element becomes `{"value": <text|null>, ...attributes}` —
  `xsi:nil` leaves get `value: null` with the `NV` attribute preserved
  (NDR-001: transforms omit them from output);
- `Header`, `PatientCareReport`, every `*Group`, and known repeating leaf
  elements are **always arrays**;
- tag names keep their NEMSIS dotted form (`"eVitals.06"`).

## Microsoft FHIR Converter (liquid/)

Templates target the [microsoft/FHIR-Converter](https://github.com/microsoft/FHIR-Converter)
JSON processor as a custom template collection. Root template:
`NemsisBundle.liquid` (input variable `msg`).

```bash
python3 tools/nemsis-xml-to-json.py my-pcr.xml > my-pcr.json
# Converter CLI (or Azure Health Data Services $convert-data with a custom
# template collection pushed as an OCI image):
Microsoft.Health.Fhir.Liquid.Converter.Tool convert \
  -d transforms/liquid -r NemsisBundle -n my-pcr.json -f out/bundle.json
```

Notes:
- Uses the converter's `generate_uuid` filter (seeded, deterministic) for
  Bundle `fullUrl`s and its trailing-comma post-processing. The CI harness
  (`tools/test-liquid-render.py`) shims both, so templates also render under
  plain `python-liquid`.
- One resource `entry` per NEMSIS repeating group (VitalGroup,
  ProcedureGroup, MedicationGroup) per NDR-007.

## Google Whistle (whistle/)

`whistle/nemsis_ems.wstl` mirrors the same mappings in the Whistle 1 mapping
language for the [healthcare-data-harmonization](https://github.com/GoogleCloudPlatform/healthcare-data-harmonization)
engine:

```bash
wstl_runner --input_file=fixtures/sample-pcr.json \
  --mapping_file=whistle/nemsis_ems.wstl --output_dir=out/
```

`VitalGroup_*`, `ProcedureGroup_Procedure`, and `MedicationGroup_MedAdmin`
projectors are wired for per-group fan-out; builtin availability
(`$Hash`, `$ParseFloat`) varies slightly by engine build — the maps are
authored against the documented Whistle 1 builtins but have not been executed
against a live engine yet.

## Mapping coverage (v1)

| NEMSIS | FHIR (profile) | Notes |
|---|---|---|
| ePatient | Patient (ems-patient) | name, gender (9906xxx map), DOB, address |
| eResponse/eDispatch/eTimes/eDisposition | Encounter (ems-encounter) | period per NDR-005; response/unit/times/disposition/transport/destination extensions |
| eScene | Location (ems-location-scene) | address; NV-nil elements omitted |
| eSituation.11 | Condition (ems-condition) | ICD-10-CM pass-through |
| eVitals.VitalGroup | Observation (ems-observation-bp / ems-observation-vitalsigns) | BP component panel; HR/SpO2/RR with LOINC+UCUM |
| eProcedures.ProcedureGroup | Procedure (ems-procedure) | SNOMED pass-through; context extension |
| eMedications.MedicationGroup | MedicationAdministration (ems-medicationadministration) | RxNorm pass-through; route/dose |

Not yet mapped (extend using the same patterns): eArrest, eInjury, eHistory,
eExam, eLabs, eAirway, eOutcome, ePayment, eOther/eCustom, Composition
assembly, and DEM demographics. Most NEMSIS codes pass through unchanged to
the IG's `cs-nemsis-*` systems, so new sections are largely mechanical.

**Upstream data conversions still required** (documented in the IG's NDRs):
GNIS city codes → names (NDR-003) and ANSI state codes → USPS abbreviations
(NDR-004). The transforms pass these values through as-is.

## Testing

```bash
python3 tools/nemsis-xml-to-json.py fixtures/sample-pcr.xml > fixtures/sample-pcr.json
python3 tools/test-liquid-render.py          # 12 structural checks
```

The fixture (`fixtures/sample-pcr.xml`) is an abbreviated PCR matching the
IG's MVA example scenario. The harness asserts: transaction shape, expected
resource counts, all internal references resolve, every `meta.profile` exists
in `package/`, every IG coding resolves against the package CodeSystems, and
NDR-001 nil-element omission. `fixtures/sample-bundle.json` is the rendered
output kept in-repo for reference.
