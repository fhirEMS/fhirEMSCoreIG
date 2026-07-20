# NEMSIS XML → fhirEMSCore Transformation Scripts

Two parallel transformation implementations convert NEMSIS v3.5.1 `EMSDataSet`
XML into FHIR R4 transaction Bundles conforming to this IG
(`fhirems.emscore`, canonical `https://fhirems.github.io/fhirEMSCoreIG`):

| Engine | Directory | Status |
|---|---|---|
| **Microsoft FHIR Converter (Liquid)** | `microsoft-fhir-converter/` | **PRIMARY, engine-verified**: executed on the real converter (built from microsoft/FHIR-Converter, DotLiquid) and under the CI harness — 16/16 checks |
| Google Whistle | `google-whistle/` | **Reference only — not a supported path.** Whistle 1 (this dialect) is unsupported legacy upstream; Whistle 2 is a build-from-source Java engine with no packaged release. Kept as executable-style mapping documentation |

### Engine verdict (researched 2026-07-19)

- **Microsoft FHIR Converter**: actively maintained, supports custom Liquid
  template collections over JSON input — fits NEMSIS (after the XML→JSON
  canonicalization) and this IG. Three DotLiquid realities the templates now
  honor: no dynamic bracket keys (vitals are unrolled per element), `*Group`
  arrays must be indexed (`| first`), and the post-processor **merges bundle
  entries of the same resourceType that lack `resource.id`** — every resource
  therefore carries a deterministic id.
- **Google Whistle**: the mapping language fits, but the engine path does not —
  v1 is explicitly unsupported, v2 requires building the Java engine from
  source, and Google's managed harmonization offering is private-preview.
  Not a solid production path today.
- **pyromanic** (github.com/fhirEMS/pyromanic): TypeScript dbignite-tables →
  FHIR Bundle converter core (~480 LOC, 8/11 tests passing) — a different
  input format (Databricks FHIR tables), not NEMSIS-aware. Viable future
  host for a TS-native NEMSIS converter (port the canonicalizer + template
  logic), but not needed while the Liquid path is verified.

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

## Microsoft FHIR Converter (microsoft-fhir-converter/)

Templates target the [microsoft/FHIR-Converter](https://github.com/microsoft/FHIR-Converter)
JSON processor as a custom template collection. Root template:
`NemsisBundle.liquid` (input variable `msg`).

Verified runbook (macOS/arm64, dotnet SDK 8+):

```bash
git clone --depth 1 https://github.com/microsoft/FHIR-Converter
cd FHIR-Converter
# the repo pins a Microsoft-internal NuGet feed; use nuget.org instead:
printf '<configuration><packageSources><clear/><add key="nuget.org" value="https://api.nuget.org/v3/index.json"/></packageSources></configuration>' > NuGet.config
dotnet build src/Microsoft.Health.Fhir.Liquid.Converter.Tool -c Release

python3 tools/nemsis-xml-to-json.py my-pcr.xml > my-pcr.json
DOTNET_ROLL_FORWARD=LatestMajor dotnet \
  src/Microsoft.Health.Fhir.Liquid.Converter.Tool/bin/Release/net8.0/Microsoft.Health.Fhir.Liquid.Converter.Tool.dll \
  convert -d <this repo>/transformationScripts/microsoft-fhir-converter -r NemsisBundle -n my-pcr.json -f out.json
# out.json = { "Status": "OK", "FhirResource": { ...the Bundle... } }
```

Notes:
- `microsoft-fhir-converter/metadata.json` (`{"type": "json"}`) selects the converter's JSON
  processor — required.
- Uses the converter's `generate_uuid` filter (seeded, deterministic) for
  Bundle `fullUrl`s/ids and its trailing-comma post-processing. The CI
  harness (`tools/test-liquid-render.py`) shims both, so templates also
  render under plain `python-liquid`.
- One resource `entry` per NEMSIS repeating group (VitalGroup,
  ProcedureGroup, MedicationGroup) per NDR-007; every resource carries a
  deterministic `id` (the converter merges id-less same-type entries).
- Azure Health Data Services `$convert-data` accepts the same collection
  pushed as an OCI image (see the converter's TemplateManagement docs).

## Google Whistle (google-whistle/) — reference only

`google-whistle/nemsis_ems.wstl` mirrors the Liquid mappings in Whistle 1 syntax.
Per the engine verdict above it is **not a supported conversion path**; it is
kept as precise, executable-style documentation of the mapping logic (useful
if a maintained Whistle engine re-emerges or for porting to another mapper).

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

## Conformance verification (2026-07-19)

The five real sample PCRs, converted and loaded onto a local fhirEngine
server, were tested two ways:

1. **Inferno US Core v6.1.0 test kit** (FHIR API group, headless): **87 pass /
   6 fail / 411 skip**. Every profile-conformance validation passes — including
   the full Practitioner group via the eCrew mapping. The only distinct failing
   tests are localhost TLS (environmental) and the DataAbsentReason-CodeSystem
   probe (the DAR *extension* test passes). Skips are resource types EMS data
   does not produce; the PractitionerRole group skips because prior tests
   collect Practitioner (not PractitionerRole) references from
   Encounter.participant.
2. **HL7 Java validator with this IG loaded** (Inferno validator service +
   `package.tgz`, validating each resource against its `ems-*` profile):
   **72 of 74 resources clean**; the 2 flags are US-edition SNOMED codes
   checked against the International edition (validator configuration).

Converted resources are dual-stamped: `meta.profile` carries the `ems-*`
profile and its US Core parent.

**Known mapping gaps (resolved 2026-07-19):** eProcedures.06 now maps to the
`successful` sub-extension (added to ext-ems-procedure-context) alongside
eProcedures.08 → `response`. eCrew maps to Practitioner +
PractitionerRole (identifier from eCrew.01; certification level eCrew.02;
response roles eCrew.03; name.family and telecom.value use data-absent-reason
'masked' since the PCR carries no crew names/contacts).

**Upstream data conversions still required** (documented in the IG's NDRs):
GNIS city codes → names (NDR-003) and ANSI state codes → USPS abbreviations
(NDR-004). The transforms pass these values through as-is.

## Testing

```bash
python3 tools/nemsis-xml-to-json.py fixtures/sample-pcr.xml > fixtures/sample-pcr.json
python3 tools/test-liquid-render.py          # 16 checks (structure + content)

# batch-test against real NEMSIS EMSDataSet XMLs (optionally comparing
# against the real Microsoft converter):
python3 tools/test-real-samples.py <pcr1.xml> <pcr2.xml> \
  [--converter-dll /path/to/Microsoft.Health.Fhir.Liquid.Converter.Tool.dll]
```

**Real-data verification (2026-07-19):** all five NEMSIS 3.5.0 published
sample PCRs (Overdose, Suicide, MVC, eBike, CPMIH — 1–4 vital groups, up to
4 medication and 3 procedure groups each, heavy xsi:nil/NV usage) pass the
batch suite, with the real Microsoft converter producing identical resource
counts to the python-liquid harness on every file. Real-data findings fixed:
the canonicalizer's FORCE_ARRAY list is now generated from the NEMSIS XSDs
(all 200 maxOccurs="unbounded" elements, not a hand-curated subset);
ePatient.07/.08/.09 were remapped to their true semantics
(county/state/ZIP); and Patient.gender falls back to "unknown" when
ePatient.13 is NV'd or unmapped (US Core requires gender 1..1).

The fixture (`fixtures/sample-pcr.xml`) is an abbreviated PCR matching the
IG's MVA example scenario. The harness asserts: transaction shape, expected
resource counts, all internal references resolve, every `meta.profile` exists
in `package/`, every IG coding resolves against the package CodeSystems, and
NDR-001 nil-element omission. `fixtures/sample-bundle.json` is the rendered
output kept in-repo for reference. The identical templates were also executed
on the real Microsoft converter (see runbook) with matching output.
