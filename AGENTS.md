# AGENTS.md — fhirEMSCore Implementation Guide

This file provides AI coding agents (Claude, Copilot, Cursor, Gemini, etc.) with project context, conventions, and working instructions for the **fhirEMSCore** FHIR R4 Implementation Guide project.

---
## Project Purpose
We are creating a FHIR Implementation Guide for US Emergency Medical Services (EMS) agencies and other health care organizations. The NEMSIS (nemsis.rg) organization manages the current data standard, called NEMSIS. HL7 manages FHIR. NEMSIS is similar to FHIR US Core, containing the schemas,code systems and  value sets required for the use case.

## Project Requirements
Each profile generated must be compatible with FHIR R4, US Core 6.1.0 AND the NEMSIS standard. Should they not be compatible, follow US Core 6.1.0. Profiles shall be validated against all 3 IG's.

## Project Identity

| Field | Value |
|---|---|
| IG ID | `fhirems.emscore` |
| Canonical | `https://fhirems.github.io/fhirEMSCoreIG` |
| FHIR Version | R4 (4.0.1) |
| US Core Version | 6.1.0 |
| NEMSIS Version | 3.5.1.251001CP2 |
| IG Version | 0.1.0 (Draft) |
| Language | FHIR Shorthand (FSH) / SUSHI |

---

## Directory Layout

```
fhirEMSCore/                        ← project root
├── AGENTS.md                        ← this file (read by all AI agents)
├── CLAUDE.md                        ← Claude Code entry point (@AGENTS.md)
├── README.md                        ← human-readable project overview
├── sushi-config.yaml                ← SUSHI build configuration
├── ig.ini                           ← IG Publisher entry point
│
├── input/
│   ├── fsh/
│   │   ├── aliases.fsh              ← ALL canonical URL aliases (edit here first)
│   │   ├── profiles/                ← one .fsh file per profile
│   │   ├── extensions/              ← one .fsh file per extension group
│   │   ├── valuesets/               ← one .fsh file per ValueSet
│   │   ├── codesystems/             ← one .fsh file per CodeSystem
│   │   ├── instances/               ← CapabilityStatements, OperationDefs
│   │   └── examples/                ← example instances per profile
│   ├── pagecontent/                 ← IG narrative pages (.md)
│   ├── images/                      ← diagrams, logos
│   └── vocabulary/                  ← supplemental terminology files
│
├── docs/
│   ├── planning/
│   │   └── fhirEMSCore_ProjectPlan.docx   ← master project plan (6 phases)
│   ├── mapping/
│   │   └── fhirEMSCore_MappingMatrix.xlsx ← NEMSIS→FHIR element mapping (12 sheets)
│   ├── differential/                       ← NEMSIS vs US Core analysis docs
│   └── normalization/
│       └── normalization-decision-records.md  ← architectural decisions (NDR-001–010)
│
├── scripts/
│   └── parse-nemsis-elements.py     ← parses Combined_ElementDetails_Full.txt
│
└── source/                          ← read-only reference copies
    ├── nemsis/                      ← Combined_ElementDetails_Full.txt etc.
    ├── uscore/                      ← US Core reference artifacts
    └── fhir-r4/                     ← FHIR R4 package.json reference
```

---

## Source File Locations (on disk)

All source files are confirmed present. Use these paths for reference lookups.

### NEMSIS 3.5.1.251001CP2
```
/Users/chad/Documents/Files/fhirReference/NEMSIS Definitions/
```
**59 files total** (46 XSD + 10 text/data + 3 PDF). Complete inventory below.

#### Combined element files (primary working files — all three datasets merged)
| File | Size | Description |
|---|---|---|
| `Combined_ElementDetails_Full.txt` | 201KB | **657 elements** (453 EMS + 157 DEM + 47 State). Pipe-delimited. Columns: `DatasetName\|DatasetType\|ElementNumber\|ElementName\|V2Number\|National\|State\|Definition\|Usage\|V3Changes\|MinOccurs\|MaxOccurs\|IsNillable\|DataType\|NV\|PN\|PNNill\|NVList\|PNList\|minLength\|maxLength\|length\|minInclusive\|maxInclusive\|minExclusive\|totalDigits\|fractionDigits\|pattern` |
| `Combined_ElementDetails.txt` | 137KB | Same as _Full but without the Definition column — useful for lighter parsing |
| `Combined_ElementEnumerations.txt` | 320KB | **3,372 enumeration codes**. Columns: `DatasetName\|ElementNumber\|ElementName\|Code\|CodeDescription` |
| `Combined_ElementAttributes.txt` | 43KB | 564 element attribute entries |

#### Dataset-specific element files (source splits before combining)
| File | Size | Description |
|---|---|---|
| `EMSDataSet_ElementDetails_Full.txt` | 141KB | EMS PCR dataset only (453 elements, full columns) |
| `EMSDataSet_ElementEnumerations.txt` | 230KB | EMS PCR enumeration codes only |
| `DEMDataSet_ElementDetails_Full.txt` | 44KB | Agency demographics dataset only (157 elements) |
| `DEMDataSet_ElementEnumerations.txt` | 60KB | DEM enumeration codes only |
| `StateDataSet_ElementDetails_Full.txt` | 15KB | State dataset only (47 elements) |
| `StateDataSet_ElementEnumerations.txt` | 29KB | State enumeration codes only |

#### Reference PDFs
| File | Size | Description |
|---|---|---|
| `Extended Data Definitions.pdf` | 571KB | Narrative element documentation with extended definitions |
| `NEMSIS_V3_StateDataSet_Guide.pdf` | 273KB | State dataset implementation guide |
| `NASEMSO_EMS_Time_Duration_Definitions-6-18-24.pdf` | 393KB | NASEMSO EMS time and duration definitions (June 2024) |

#### XSD schema files (46 total)

**Master schemas (3):**
| File | Size | Description |
|---|---|---|
| `EMSDataSet_v3.xsd` | 13KB | Master EMS PCR schema — imports all e*_v3.xsd |
| `DEMDataSet_v3.xsd` | 4KB | Master DEM schema — imports all d*_v3.xsd |
| `commonTypes_v3.xsd` | 98KB | All shared NEMSIS data types (normative) |

**EMS section schemas (25, e* prefix):**
| File | Size | File | Size |
|---|---|---|---|
| `eAirway_v3.xsd` | 32KB | `eMedications_v3.xsd` | 30KB |
| `eArrest_v3.xsd` | 54KB | `eNarrative_v3.xsd` | 2KB |
| `eCrew_v3.xsd` | 7KB | `eOther_v3.xsd` | 52KB |
| `eCustom_v3.xsd` | 11KB | `eOutcome_v3.xsd` | 49KB |
| `eDevice_v3.xsd` | 27KB | `ePatient_v3.xsd` | 42KB |
| `eDispatch_v3.xsd` | 20KB | `ePayment_v3.xsd` | 88KB |
| `eDisposition_v3.xsd` | 81KB | `eProcedures_v3.xsd` | 36KB |
| `eExam_v3.xsd` | 111KB | `eProtocols_v3.xsd` | 5KB |
| `eHistory_v3.xsd` | 41KB | `eRecord_v3.xsd` | 4KB |
| `eInjury_v3.xsd` | 65KB | `eResponse_v3.xsd` | 58KB |
| `eLabs_v3.xsd` | 27KB | `eScene_v3.xsd` | 40KB |
| `eSituation_v3.xsd` | 56KB | `eTimes_v3.xsd` | 57KB |
| `eVitals_v3.xsd` | 78KB | | |

**DEM section schemas (10, d* prefix):**
| File | Size | File | Size |
|---|---|---|---|
| `dAgency_v3.xsd` | 44KB | `dFacility_v3.xsd` | 16KB |
| `dConfiguration_v3.xsd` | 30KB | `dLocation_v3.xsd` | 12KB |
| `dContact_v3.xsd` | 27KB | `dPersonnel_v3.xsd` | 67KB |
| `dCustom_v3.xsd` | 11KB | `dRecord_v3.xsd` | 6KB |
| `dDevice_v3.xsd` | 9KB | `dVehicle_v3.xsd` | 18KB |

**State section schemas (8, s* prefix):**
| File | Size | File | Size |
|---|---|---|---|
| `sAgency_v3.xsd` | 10KB | `sFacility_v3.xsd` | 19KB |
| `sConfiguration_v3.xsd` | 20KB | `sSoftware_v3.xsd` | 5KB |
| `sdCustom_v3.xsd` | 14KB | `sState_v3.xsd` | 2KB |
| `seCustom_v3.xsd` | 14KB | `sElement_v3.xsd` | 2KB |

### FHIR R4 4.0.1
```
/Users/chad/Documents/Files/fhirReference/HL7_FHIR/r4/package/
```
4,582 files: 655 StructureDefinitions, 1,316 ValueSets, 1,062 CodeSystems.
Key SDs: `StructureDefinition-{Patient,Encounter,Observation,Condition,Procedure,MedicationAdministration,Composition,Location,Organization,Practitioner}.json`

### US Core 6.1.0
```
/Users/chad/Documents/Files/fhirReference/HL7_FHIR/hl7.fhir.us.core-6.1.0_USCore/package/
```
216 files: 59 StructureDefinitions, 36 ValueSets, 5 CodeSystems.

---

## NEMSIS Element Counts by Section

### EMSDataSet (453 elements total — primary focus)
| Section | Elements | Primary FHIR Resource |
|---|---|---|
| eRecord | 4 | Composition |
| eResponse | 23 | Encounter |
| eDispatch | 6 | Encounter (extensions) |
| eCrew | 3 | Practitioner / PractitionerRole |
| eTimes | 17 | Encounter (EMSTimes extension) |
| ePatient | 25 | Patient |
| eScene | 25 | Location |
| eSituation | 20 | Condition + Encounter |
| eHistory | 20 | Condition + AllergyIntolerance |
| eVitals | 34 | Observation (vital signs) |
| eLabs | 8 | Observation |
| eExam | 24 | Observation |
| eProcedures | 15 | Procedure |
| eMedications | 13 | MedicationAdministration |
| eAirway | 11 | Procedure + Observation |
| eArrest | 19 | Condition + Observation |
| eInjury | 29 | Condition |
| eDisposition | 31 | Encounter.hospitalization |
| eOutcome | 15 | Observation |
| ePayment | 59 | Coverage + Claim |
| eOther | 22 | Observation + Composition |
| eDevice | 12 | Device |
| eProtocols | 2 | Encounter (extension) |
| eNarrative | 1 | Composition.section |
| eCustomConfiguration | 9 | Extension / Questionnaire |

### DEMDataSet (157 elements total)
| Section | Elements | Primary FHIR Resource |
|---|---|---|
| dAgency | 27 | Organization |
| dPersonnel | 40 | Practitioner + PractitionerRole |
| dConfiguration | 13 | Organization (extensions) |
| dContact | 16 | PractitionerRole |
| dVehicle | 13 | Device |
| dFacility | 15 | Location |
| dLocation | 12 | Location |
| dDevice | 6 | Device |
| dRecord | 3 | Composition metadata |

---

## Profile Derivation Rules

**Always follow this hierarchy — no exceptions:**

1. If a US Core 6.1.0 profile exists for the FHIR resource → derive from it
2. If no US Core profile exists → derive directly from the FHIR R4 base resource
3. Never skip a level (do not derive from US Core if there's a more specific parent profile)

**Current US Core profiles available (59 total). Key ones for this project:**
- `us-core-patient`, `us-core-encounter`, `us-core-condition-encounter-diagnosis`, `us-core-condition-problems-health-concerns`
- `us-core-vital-signs` (parent), `us-core-blood-pressure`, `us-core-heart-rate`, `us-core-pulse-oximetry`, `us-core-respiratory-rate`, `us-core-body-temperature`, `us-core-body-weight`
- `us-core-observation-clinical-result`, `us-core-procedure`
- `us-core-practitioner`, `us-core-practitionerrole`, `us-core-organization`, `us-core-location`
- `us-core-allergyintolerance`, `us-core-medicationrequest`, `us-core-documentreference`

**Resources with NO US Core profile (derive from FHIR R4 base):**
- `Composition` → EMSComposition
- `MedicationAdministration` → EMSMedicationAdministration
- `Device` → EMSDevice (EMS units/vehicles)
- `RelatedPerson` → for eHistory next-of-kin
- `Claim` → ePayment billing

---

## FSH Authoring Conventions

### File naming
```
input/fsh/profiles/ems-{resource-lowercase}.fsh      # profiles
input/fsh/profiles/ems-{resource}-{variant}.fsh      # variant profiles
input/fsh/extensions/ems-extensions-{section}.fsh    # grouped by NEMSIS section
input/fsh/valuesets/vs-ems-{name}.fsh                # value sets
input/fsh/codesystems/cs-nemsis-{section}.fsh        # code systems
input/fsh/examples/ex-ems-{resource}-{scenario}.fsh  # examples
```

### Profile ID / name pattern
```fsh
Profile: EMSPatient            // PascalCase Name
Id: ems-patient                // kebab-case Id
Title: "EMS Patient"
Description: "..."
```

### Extension ID pattern
```fsh
Extension: EMSResponseType
Id: ext-ems-response-type      // always prefix ext-ems-
```

### ValueSet ID pattern
```fsh
ValueSet: EMSResponseTypeVS
Id: vs-ems-response-type       // always prefix vs-ems-
```

### CodeSystem ID pattern
```fsh
CodeSystem: NEMSISResponseType
Id: cs-nemsis-response-type    // always prefix cs-nemsis-
```

### Documenting NEMSIS source — required on every MS element
```fsh
* someElement MS
  * ^short = "eVitals.06 - SBP (Systolic Blood Pressure)"
  * ^comment = "NEMSIS eVitals.06. Usage: Required. NV: Yes. PN: Yes (PN.ExamFindingNotPresent, PN.Refused, PN.UnableToComplete)."
```

### Must Support declaration
Every element that is NEMSIS Mandatory or Required must be declared `MS`. Elements that are NEMSIS Recommended should also be `MS` with a comment explaining conditionality.

---

## NEMSIS Special Patterns

### Not Values (NV)
NEMSIS NV appears on 269 of 657 elements. Three codes exist:
- `NV.NotApplicable` → FHIR `dataAbsentReason = not-applicable`
- `NV.NotRecorded` → FHIR `dataAbsentReason = not-asked`
- `NV.NotReporting` → FHIR `dataAbsentReason = unknown`

When `dataAbsentReason` is not available on a FHIR element, use `ext-ems-not-value`.

### Pertinent Negatives (PN)
NEMSIS PN appears on 70 of 657 elements. Clinically significant documented absence. Represent as:
- FHIR `Observation` with `valueCodeableConcept` indicating absence
- `ext-ems-pertinent-negative` extension carrying the specific PN code

Common PN codes: `PN.ExamFindingNotPresent`, `PN.Refused`, `PN.UnableToComplete`, `PN.DeniesSymptom`

### Nillable elements
271 elements are nillable (`xsi:nil="true"` in NEMSIS XML). In FHIR, simply omit the element — do not populate it with null or empty strings.

### Repeating groups (VitalGroup, MedicationGroup, etc.)
NEMSIS uses repeating XML groups for multiple sets of vitals, medications, procedures. Each group becomes multiple FHIR resources with the same `Observation.encounter` / `Procedure.encounter` reference. Timestamp from the group header becomes `effective[x]` on each resource.

### NEMSIS data type → FHIR mappings
| NEMSIS Type | FHIR Type | Notes |
|---|---|---|
| `ANSIStateCode` | `string` (address.state) | Convert 2-digit numeric to 2-letter USPS (NDR-004) |
| `CityGnisCode` | `string` (address.city) | Requires GNIS→name lookup (NDR-003) |
| `ANSICountyCode` | `string` (address.district) | 5-digit FIPS code |
| `GPSLocation` | `Location.position` or `ext-ems-scene-gps` | Decimal lat/long |
| `DateTimeType` | `dateTime` | ISO 8601 |
| `DateType` | `date` | YYYY-MM-DD |
| `SBP` / `DBP` | `Observation.component.valueQuantity` | mmHg, UCUM: `mm[Hg]` |
| `Medication` | `CodeableConcept` (RxNorm) | Already RxNorm in NEMSIS |
| `snomed` | `CodeableConcept` (SNOMED CT) | Already SNOMED in NEMSIS |
| `EMSAgencyNumber` | `Identifier` (NPI system) | NPI-2 preferred |
| `YesNoValues` | `boolean` or `CodeableConcept` | Prefer boolean when strictly yes/no |

---

## Loading onto fhirEngine (terminology server)

fhirEngine (github.com/FHIRmedicConsulting/fhirEngine) installs FHIR IG packages natively via
`fhirengine-terminology install-ig <packageDir> [packageId]` — no custom load scripts needed.
It reads an **unpacked** package directory (flat `package/*.json`), not a .tgz. The IG Publisher
installs every build to `~/.fhir/packages/fhirems.emscore#dev/package`, which is the natural
load path. Dependencies are NOT auto-resolved — install each package explicitly:

```bash
cd fhirEngine/packages/server
npx tsx scripts/fhirengine-terminology.ts install-ig ~/.fhir/packages/hl7.terminology.r4#5.5.0/package hl7.terminology.r4
npx tsx scripts/fhirengine-terminology.ts install-ig ~/.fhir/packages/hl7.fhir.uv.extensions.r4#1.0.0/package hl7.fhir.uv.extensions.r4
npx tsx scripts/fhirengine-terminology.ts install-ig ~/.fhir/packages/hl7.fhir.us.core#6.1.0/package hl7.fhir.us.core
npx tsx scripts/fhirengine-terminology.ts install-ig ~/.fhir/packages/fhirems.emscore#dev/package fhirems.emscore
```

Notes:
- 128 of 129 ValueSets enumerate explicit concepts → fhirEngine pre-materializes complete
  expansions. The exception is `vs-ems-dispatch-reason` (intensional SNOMED is-a 404684003
  filter): stored as a partial expansion; `$validate-code` misses degrade to `unknown`, never
  `invalid`. fhirEngine does not yet expand intensional SNOMED filters even with SNOMED RF2
  loaded (hierarchy tables on their roadmap), so this stays partial for now.
- Licensed systems used in bindings/examples (SNOMED, LOINC, RxNorm) are operator-loaded via
  their `load-terminology <loinc|snomed|rxnorm> <dir>` from release files — their mechanism,
  not ours.
- `NamingSystem/ns-ems-vin` is skipped by their loader (conformance set is SD/CS/VS/CM) — harmless.
- `--pull-vsac` is unnecessary (this IG binds no VSAC value sets).
- To enforce this IG's profiles on ingest: `FHIRENGINE_VALIDATION_PROFILES=fhirems.emscore`.
- Stale `~/.fhir/packages/hl7.fhir.us.emscore#dev` (pre-canonical-rename) should not be loaded.

---

## OID Registry

Every CodeSystem and ValueSet carries an OID identifier under the project's self-assigned
ISO UUID-arc root (no registration required; globally unique per ISO 2.25 rules):

```
Root: 2.25.219926138944530828037824748808947630693   (from UUID a5743bd0-caef-4920-9058-52509b340265)
├── .1.<n>  CodeSystems  (18 assigned; .1.1–.1.17 alphabetical, .1.18 cs-nemsis-history; next: .1.19)
└── .2.<n>  ValueSets    (136 assigned; .2.1–.2.129 alphabetical, .2.130–.2.136 vs-ems-history.fsh; next: .2.137)
```

Rules:
- New CodeSystems/ValueSets MUST take the next sequential number in their arc and add
  `* ^identifier.system = "urn:ietf:rfc:3986"` + `* ^identifier.value = "urn:oid:<root>.<arc>.<n>"`
  immediately after the `^experimental` line. Update the "next" counters above.
- Never renumber existing assignments.
- NEMSIS's own registered OID arc is `2.16.840.1.113883.17.3` (.5 = per-element code systems
  from the 2013 CDA EMS Run Report IG, e.g. .5.71 EMS condition code; .10 = CDA templates;
  .11 = value sets). Do NOT assign under it — it belongs to NEMSIS. Cross-referencing a NEMSIS
  .5.x OID as an additional identifier is permitted only where an artifact matches a NEMSIS
  element list 1:1.
- If the project later registers an HL7 OID root (~$250, hl7.org/oid), swap the root and
  renumber in one commit before any external system depends on these OIDs.

---

## Terminology Strategy

### Standard code systems to prefer (in order)
1. SNOMED CT (`http://snomed.info/sct`) — clinical concepts, body sites, findings
2. LOINC (`http://loinc.org`) — observations, vital signs, lab results, document types
3. RxNorm (`http://www.nlm.nih.gov/research/umls/rxnorm`) — medications
4. ICD-10-CM (`http://hl7.org/fhir/sid/icd-10-cm`) — diagnoses
5. CPT (`http://www.ama-assn.org/go/cpt`) — procedures (when no SNOMED)
6. UCUM (`http://unitsofmeasure.org`) — units of measure (always use UCUM)
7. NEMSIS CodeSystem (`cs-nemsis-*`) — only when no standard code exists

### Vital signs → LOINC mapping (confirmed)
| NEMSIS Element | LOINC |
|---|---|
| eVitals.06 SBP | 8480-6 (component of 55284-4 BP panel) |
| eVitals.07 DBP | 8462-4 (component of 55284-4 BP panel) |
| eVitals.10 Heart Rate | 8867-4 |
| eVitals.12 Pulse Oximetry | 59408-5 |
| eVitals.14 Respiratory Rate | 9279-1 |
| eVitals.18 Blood Glucose | 59469-7 |
| eVitals.19 GCS Eye | 9267-6 |
| eVitals.20 GCS Verbal | 9268-4 |
| eVitals.21 GCS Motor | 9266-8 |
| eVitals.22 GCS Total | 9269-2 |
| eVitals.24 Temperature | 8310-5 |
| eVitals.26 AVPU | 67775-7 |
| eVitals.27 Pain Score | 72514-3 |
| eVitals.28 Weight | 29463-7 |
| eVitals.16 ETCO2 | 19889-5 |

---

## Key Normalization Decisions (NDR summary)

See `docs/normalization/normalization-decision-records.md` for full rationale.

| NDR | Decision |
|---|---|
| NDR-001 | NEMSIS NV → FHIR `dataAbsentReason` (3 codes) or `ext-ems-not-value` |
| NDR-002 | NEMSIS PN → FHIR Observation with absence value + `ext-ems-pertinent-negative` |
| NDR-003 | NEMSIS GNIS city codes → lookup to plain text city name |
| NDR-004 | NEMSIS 2-digit ANSI state codes → 2-letter USPS abbreviations |
| NDR-005 | eTimes 19 timestamps → `ext-ems-times` complex extension; eTimes.03→period.start, eTimes.12→period.end |
| NDR-006 | NEMSIS Sex (ePatient.11) → `Patient.gender` + `us-core-birthsex`; Trans codes mapped to both |
| NDR-007 | NEMSIS VitalGroup → one Observation per element per group; group by encounter + timestamp |
| NDR-008 | eMedications → `MedicationAdministration` (NOT `MedicationRequest`); no US Core profile |
| NDR-009 | eArrest → `Condition` (SNOMED 410429000) + multiple `Observation` resources + `ext-ems-arrest` |
| NDR-010 | Custom elements → `Questionnaire` + `QuestionnaireResponse` pattern |

---

## Extension Registry (current)

Extensions are grouped by section in `input/fsh/extensions/`. When adding new extensions:
1. Add to the appropriate section extensions file (or create one)
2. Add the alias to `input/fsh/aliases.fsh`
3. Document in `docs/mapping/fhirEMSCore_MappingMatrix.xlsx` → Extensions_Registry sheet

### ems-extensions.fsh (core/patient/encounter)
| Extension ID | Context | NEMSIS Source |
|---|---|---|
| `ext-ems-response-type` | Encounter | eResponse.05 |
| `ext-ems-additional-response-mode` | Encounter | eResponse.24 |
| `ext-ems-response-delays` | Encounter | eResponse.08–12, eScene delays |
| `ext-ems-unit` | Encounter | eResponse.07 (unit info) |
| `ext-ems-dispatch-info` | Encounter | eDispatch section (complex) |
| `ext-ems-disposition-codes` | Encounter | eDisposition.16–32 |
| `ext-ems-transport-details` | Encounter | eDisposition transport fields |
| `ext-ems-destination-details` | Encounter | eDisposition destination fields |
| `ext-ems-unit-type` | Encounter | eResponse.07 |
| `ext-ems-dispatch-reason` | Encounter | eDispatch.01 |
| `ext-ems-times` | Encounter | eTimes.01–19 (complex) |
| `ext-ems-transport-reason` | Encounter | eDisposition.22 |
| `ext-ems-incident-type` | Encounter | eSituation.07 (anatomic location) |
| `ext-ems-protocol-used` | Encounter | eProtocols.01 |
| `ext-ems-response-mode` | Encounter | eResponse.23 |
| `ext-ems-patient-barrier` | Patient | eHistory.01 (barriers to care) |
| `ext-ems-patient-age` | Patient | ePatient.15/16 (age/units) |
| `ext-ems-alternate-residence` | Patient | ePatient alternate residence |
| `ext-ems-census-tract` | Patient/Location | eScene census tract |
| `ext-ems-certification-level` | PractitionerRole | eCrew.02 |
| `ext-ems-not-value` | Element (any) | All NV elements |
| `ext-ems-pertinent-negative` | Element (any) | All PN elements |
| `ext-ems-scene-gps` | Location | eScene.11 |

### ems-extensions-scene.fsh
| Extension ID | Context | NEMSIS Source |
|---|---|---|
| `ext-ems-scene-details` | Location | eScene.01/06/07/08/13 (complex) |
| `ext-ems-agency-details` | Organization | dAgency.09–12 (complex) |

### ems-extensions-vitals.fsh
| Extension ID | Context | NEMSIS Source |
|---|---|---|
| `ext-ems-vital-obtained-prior` | Observation | eVitals.02 |
| `ext-ems-ecg-context` | Observation | eVitals.04/05 (complex) |
| `ext-ems-bp-method` | Observation | eVitals.08 |
| `ext-ems-stroke-scale-context` | Observation | eVitals.30/34 (complex) |
| `ext-ems-pain-scale-type` | Observation | eVitals.28 |

### ems-extensions-clinical.fsh
| Extension ID | Context | NEMSIS Source |
|---|---|---|
| `ext-ems-medication-context` | MedicationAdministration | eMedications.02/07/08/11/13 (complex) |
| `ext-ems-procedure-context` | Procedure | eProcedures.02/05/08/11/14/15 (complex) |

### ems-extensions-injury.fsh
| Extension ID | Context | NEMSIS Source |
|---|---|---|
| `ext-ems-injury-context` | Condition | eInjury.02–.10 (9 sub-extensions) |
| `ext-ems-acn-incident` | Condition | eInjury.11–.29 ACN telematics (19 sub-extensions) |

### ems-extensions-history.fsh
| Extension ID | Context | NEMSIS Source |
|---|---|---|
| `ext-ems-history-context` | Condition | eHistory.02–.05, .09–.11, .16–.19 (9 sub-extensions) |

---

## Build Commands

```bash
# Compile FSH → FHIR JSON
cd /path/to/fhirEMSCore
sushi .

# Run IG Publisher (after downloading publisher.jar to input-cache/)
java -jar input-cache/publisher.jar -ig .

# Validate a single resource
java -jar input-cache/validator.jar \
  fsh-generated/resources/StructureDefinition-ems-patient.json \
  -version 4.0.1 -ig hl7.fhir.us.core#6.1.0

# Update IG Publisher
./_updatePublisher.sh
```

### Build Script
Run the IG Publisher with:
```bash
env PATH="$HOME/.gem/ruby/2.6.0/bin:$HOME/.local/bin:$PATH" \
  java -jar input-cache/publisher.jar -ig .
```
Note: SUSHI at `~/.local/bin/sushi`, Jekyll at `~/.gem/ruby/2.6.0/bin/jekyll`,
system Java (Homebrew OpenJDK 17). If `input-cache/publisher.jar` is missing,
copy it from `/Users/chad/Documents/Files/fhirReference/fhirEMSCore/fhirEMSIG/input-cache/publisher.jar`.

---

## Profiles Build Status

**v0.1.0 Phase 3 — FULLY CLEAN BUILD as of 2026-07-19: SUSHI 0/0; IG Publisher 2.2.11: 0 errors, 0 warnings, 0 broken links.**
**The former 211-error "practical minimum" was eliminated by replacing the unregistered HL7 canonical/package-id with the project-owned namespace (see Project Identity), switching ig.ini to fhir.base.template, fixing the uv.extensions dependsOn URI, adding the hl7.fhir.uv.tools.r4 dependency, and correcting the NUBC discharge system URL.**
**The 400 warnings were cleared by: flipping all ValueSets to experimental=false (202), adding example coverage for all 22 previously-unexampled extensions, pin-canonicals: pin-multiples (13), performers on 4 example Observations, including expansion-params.xhtml in terminology.md, real OID assignment (146 — see OID Registry below), and justified ignoreWarnings suppressions (licensed HCPCS/NUBC systems; US Core CLIA/NAIC slice inheritance; NV/PN Element context per NDR-001/002; pinned dependency versions).**
**Totals: 26 profiles, 46 extensions, 136 ValueSets, 18 CodeSystems, 37 examples (including NamingSystem). eInjury + eHistory (problems/home meds) profiles added 2026-07-19.**

### Profiles

| Profile ID | FSH File | NEMSIS Section | Status |
|---|---|---|---|
| `ems-composition` | `profiles/ems-composition.fsh` | eRecord | Complete |
| `ems-patient` | `profiles/ems-patient.fsh` | ePatient | Complete |
| `ems-encounter` | `profiles/ems-encounter.fsh` | eResponse/eTimes/eDisposition | Complete |
| `ems-location-scene` | `profiles/ems-location-scene.fsh` | eScene | Complete |
| `ems-location-destination` | `profiles/ems-location-destination.fsh` | eDisposition | Complete |
| `ems-condition` | `profiles/ems-condition.fsh` | eSituation/eHistory | Complete |
| `ems-condition-arrest` | `profiles/ems-condition-arrest.fsh` | eArrest (NDR-009) | Complete |
| `ems-condition-injury` | `profiles/ems-condition-injury.fsh` | eInjury | Complete |
| `ems-condition-problems` | `profiles/ems-condition-problems.fsh` | eHistory.08 + context | Complete |
| `ems-medicationstatement` | `profiles/ems-medicationstatement.fsh` | eHistory.12–.15, .20 | Complete |
| `ems-observation-vitalsigns` | `profiles/ems-observation-vitalsigns.fsh` | eVitals (parent) | Complete |
| `ems-observation-bp` | `profiles/ems-observation-bp.fsh` | eVitals.06/07 | Complete |
| `ems-observation-gcs` | `profiles/ems-observation-gcs.fsh` | eVitals.19–23 | Complete |
| `ems-observation-exam` | `profiles/ems-observation-exam.fsh` | eExam | Complete |
| `ems-observation-airway` | `profiles/ems-observation-airway.fsh` | eAirway | Complete |
| `ems-observation-labs` | `profiles/ems-observation-labs.fsh` | eLabs | Complete |
| `ems-observation-outcome` | `profiles/ems-observation-outcome.fsh` | eOutcome | Complete |
| `ems-procedure` | `profiles/ems-procedure.fsh` | eProcedures | Complete |
| `ems-medicationadministration` | `profiles/ems-medicationadministration.fsh` | eMedications | Complete |
| `ems-organization` | `profiles/ems-organization.fsh` | dAgency | Complete |
| `ems-practitioner` | `profiles/ems-practitioner.fsh` | dPersonnel | Complete |
| `ems-practitionerrole` | `profiles/ems-practitionerrole.fsh` | eCrew/dPersonnel | Complete |
| `ems-allergyintolerance` | `profiles/ems-allergyintolerance.fsh` | eHistory.06/07 | Complete |
| `ems-device-vehicle` | `profiles/ems-device-vehicle.fsh` | dVehicle | Complete |
| `ems-coverage` | `profiles/ems-coverage.fsh` | ePayment.09–22, .57–60 | Complete |
| `ems-claim` | `profiles/ems-claim.fsh` | ePayment (billing/CMS) | Complete |

### Examples (31 total)

| Example Id | Profile | Scenario |
|---|---|---|
| `ex-ems-composition` | EMSComposition | Full PCR document — MVA with cardiac arrest |
| `ex-ems-patient` | EMSPatient | 35yo male, MVA victim |
| `ex-ems-encounter` | EMSEncounter | 911 MVA response, ALS transport |
| `ex-ems-location-scene` | EMSLocationScene | I-15 MM 62 near Murrieta CA |
| `ex-ems-location-destination` | EMSLocationDestination | RUHS Medical Center, Level I Trauma |
| `ex-ems-condition` | EMSCondition | Closed head injury (MVA) |
| `ex-ems-condition-arrest` | EMSConditionArrest | VF cardiac arrest, bystander CPR, ROSC |
| `ex-ems-condition-injury` | EMSConditionInjury | MVA driver, blunt trauma, ACN telematics |
| `ex-ems-condition-problems` | EMSConditionProblems | Hypertension history (I10), eHistory context |
| `ex-ems-medicationstatement` | EMSMedicationStatement | Lisinopril 10 mg oral daily (home med) |
| `ex-ems-observation-bp` | EMSObservationBloodPressure | BP 92/60 mmHg |
| `ex-ems-heart-rate` | EMSObservationVitalSigns | HR 110 bpm |
| `ex-ems-spo2` | EMSObservationVitalSigns | SpO2 94% |
| `ex-ems-respiratory-rate` | EMSObservationVitalSigns | RR 22/min |
| `ex-ems-observation-gcs` | EMSObservationGCS | GCS 10 (E3V3M4) |
| `ex-ems-exam-skin` | EMSObservationExam | Pale, diaphoretic |
| `ex-ems-exam-neuro` | EMSObservationExam | Confused, abnormal motor |
| `ex-ems-observation-airway` | EMSObservationAirway | ETT, waveform ETCO2 confirmed, 22cm |
| `ex-ems-ecg-rhythm` | Observation (R4 base) | Sinus tach, 12-lead, ECG context extension |
| `ex-ems-pain-score` | Observation (R4 base) | Pain 7/10 numeric, pain-scale-type extension |
| `ex-ems-stroke-scale` | Observation (R4 base) | CPSS negative, stroke context + PN pattern |
| `ex-ems-observation-labs` | EMSObservationLabs | POC glucose 142 mg/dL |
| `ex-ems-observation-outcome` | EMSObservationOutcome | ED admit, ICD-10 S09.90XA, ISS=9 |
| `ex-ems-procedure` | EMSProcedure | IV access |
| `ex-ems-medicationadministration` | EMSMedicationAdministration | NS 500mL IV bolus |
| `ex-ems-allergyintolerance` | EMSAllergyIntolerance | Penicillin allergy |
| `ex-ems-organization-agency` | EMSOrganization | Riverside County EMS Agency |
| `ex-ems-practitioner` | EMSPractitioner | Paramedic John Smith |
| `ex-ems-practitionerrole` | EMSPractitionerRole | Paramedic role, CA cert |
| `ex-ems-device-vehicle` | EMSDevice | Medic 7 ALS unit |
| `ex-ems-coverage` | EMSCoverage | Medicare Part B primary |
| `ex-ems-claim` | EMSClaim | ALS Level 1 Emergency, HCPCS A0427 |
| `ns-ems-vin` | NamingSystem | VIN identifier system definition |

### New CodeSystems (Phase 2)

| CodeSystem Id | NEMSIS Section |
|---|---|
| `cs-nemsis-arrest` | eArrest |
| `cs-nemsis-airway` | eAirway |
| `cs-nemsis-labs` | eLabs |
| `cs-nemsis-payment` | ePayment (all except payer type) |
| `cs-nemsis-payer-type` | ePayment.57 (X12 payer type codes — separate to avoid code collisions) |

### New Extensions (Phase 2)

| Extension Id | Context | NEMSIS Source |
|---|---|---|
| `ext-ems-arrest-context` | Condition | eArrest.01–22 (21 sub-extensions) |
| `ext-ems-airway-context` | Observation, Procedure | eAirway.01–11 (10 sub-extensions) |
| `ext-ems-primary-payment-method` | Claim | ePayment.01 |
| `ext-ems-cms-service-level` | Claim | ePayment.50 |
| `ext-ems-response-urgency` | Claim | ePayment.40 |
| `ext-ems-transport-assessment` | Claim | ePayment.41 |
| `ext-ems-ambulance-transport-reason` | Claim | ePayment.44 |
| `ext-ems-ambulance-conditions` | Claim | ePayment.47 |
| `ext-ems-als-assessment` | Claim | ePayment.49 |
| `ext-ems-mileage-to-closest` | Claim | ePayment.48 |
| `ext-ems-payer-type` | Coverage | ePayment.57 |

### CodeSystem Inventory (16 files)
| File | URL suffix | Contents |
|---|---|---|
| `cs-nemsis-codes.fsh` | `nemsis-codes` | Catch-all: eHistory, dAgency, eCrew, eScene, eSituation, dVehicle, PCR section codes, eOutcome.03 |
| `cs-nemsis-arrest.fsh` | `nemsis-arrest` | eArrest codes (3001xxx–3022xxx) |
| `cs-nemsis-airway.fsh` | `nemsis-airway` | eAirway codes (4001xxx–4009xxx) |
| `cs-nemsis-labs.fsh` | `nemsis-labs` | eLabs codes (3403xxx, 3405xxx) |
| `cs-nemsis-injury.fsh` | `nemsis-injury` | eInjury codes (2902xxx–2926xxx): mechanism, trauma triage, safety equipment, ACN |
| `cs-nemsis-history.fsh` | `cs-nemsis-history` | eHistory codes (3105/3109/9910/3114/3117/3118/3120): advance directives, history source, immunization, home-med units/frequency, alcohol/drug, pregnancy |
| `cs-nemsis-encounter.fsh` | `nemsis-encounter` | eResponse, eDispatch, eDisposition, eOutcome component codes (~295 codes) |
| `cs-nemsis-exam.fsh` | `nemsis-exam` | eExam physical exam findings (457 codes) |
| `cs-nemsis-medications.fsh` | `nemsis-medications` | eMedications/eProcedures (~200 codes) |
| `cs-nemsis-nv.fsh` | `nemsis-not-values` | NV codes (3) |
| `cs-nemsis-patient.fsh` | `nemsis-patient` | ePatient codes |
| `cs-nemsis-payment.fsh` | `nemsis-payment` | ePayment codes |
| `cs-nemsis-payer-type.fsh` | `nemsis-payer-type` | X12 payer type codes |
| `cs-nemsis-personnel.fsh` | `nemsis-personnel-level` | eCrew.02 certification levels (16) |
| `cs-nemsis-pn.fsh` | `nemsis-pertinent-negative` | PN codes (14) |
| `cs-nemsis-procedures.fsh` | `nemsis-procedures` | eProtocols.01 protocol codes (112) |
| `cs-nemsis-situation.fsh` | `nemsis-situation` | eSituation.07 anatomic locations (9) |
| `cs-nemsis-vitals.fsh` | `nemsis-vitals` | eVitals enumeration codes (~110) |

### Remaining Work (Phase 3+)
- **eOther / eCustom**: last unprofiled EMS sections (signatures/attachments; Questionnaire per NDR-010). Low priority
- **fhirEngine live load test**: run the documented install-ig sequence and verify $validate-code
- (Narrative pagecontent is no longer a stub — all 16 pages have real content as of 2026-07-19)

---

## Parsing NEMSIS Source Files

To extract elements for a specific section from the Combined files:

```python
# Example: get all eVitals elements with their NV/PN flags
with open('source/nemsis/Combined_ElementDetails_Full.txt') as f:
    lines = f.readlines()
hdr = [h.strip("'") for h in lines[0].split('|')]
idx = {h: i for i, h in enumerate(hdr)}
for line in lines[1:]:
    cols = [c.strip("'") for c in line.strip().split('|')]
    if cols[idx['ElementNumber']].startswith('eVitals.'):
        print(cols[idx['ElementNumber']], '|', cols[idx['ElementName']],
              '| NV:', cols[idx['NV']], '| PN:', cols[idx['PN']])
```

To get enumerations for a specific element:

```python
with open('source/nemsis/Combined_ElementEnumerations.txt') as f:
    lines = f.readlines()
for line in lines[1:]:
    cols = [c.strip("'") for c in line.strip().split('|')]
    if cols[1] == 'eVitals.06':  # ElementNumber
        print(cols[3], '-', cols[4])  # Code - CodeDescription
```

---

## Important Constraints and Gotchas

- **Aliases first**: Before adding any new canonical URL to a FSH file, add its alias to `aliases.fsh`. Never hardcode canonical URLs directly in profiles.
- **MedicationAdministration ≠ MedicationRequest**: NEMSIS eMedications records what was actually administered. Always use `MedicationAdministration`, not `MedicationRequest`.
- **Encounter period is insufficient for EMS**: `Encounter.period.start` = eTimes.03 (unit notified), `period.end` = eTimes.12 (patient transfer of care). All other timestamps MUST use `ext-ems-times`.
- **GCS is a panel**: Glasgow Coma Score must be represented as a parent Observation (LOINC 9269-2 for total) with `hasMember` or `component` references to Eye/Verbal/Motor sub-Observations.
- **NEMSIS uses SNOMED for procedures**: `eProcedures.03` already uses SNOMED CT codes — map directly to `Procedure.code`; no additional CodeSystem needed.
- **NEMSIS uses RxNorm for medications**: `eMedications.03` already uses RxNorm — map directly to `MedicationAdministration.medicationCodeableConcept`.
- **ePayment is the largest section (59 elements)**: Profile as a low priority after core clinical resources are complete. Requires Coverage + Claim profiles.
- **State-only vs National elements**: Check the `National`/`State` columns in `Combined_ElementDetails_Full.txt`. Elements marked `State` only are not required by the national standard and should be `0..1` with a comment.
- **XSD is authoritative for structure**: When in doubt about cardinality or nesting, check the relevant `*_v3.xsd` file — it is the normative NEMSIS specification.
- **Never add EMS-specific content to US Core profiles**: Only add constraints (tighten); never add elements that would conflict with US Core conformance.
- **identifier slicing in profiles**: MUST use `#value` on `system` discriminator (not `$this` or `type`). Parent profile discriminator cannot be changed (causes snapshot generation failure). Remove formal slicing for identifiers without fixed system URLs.
- **Organization uses US Core inherited `pattern:$this` slicing**: extend `identifier[NPI]` (uppercase, from US Core) without redefining the slicing header.
- **EMS-NEMSIS LOINC 74xxx codes**: Not in local LOINC v2.81 cache — use `cs-nemsis-encounter` codes instead.
- **ignoreWarnings.txt**: Only suppresses WARNING-level messages (not errors) via prefix matching; LF-only line endings.
- **tx.fhir.org "cache not known" errors**: If the publisher reports hundreds of `Error from https://tx.fhir.org/r4: The cache '…' is not known to this server`, the committed `input-cache/txcache` holds an expired server-side cache session — delete `input-cache/txcache/` and rerun (it regenerates).

---

## Mapping Reference Documents

| Document | Purpose | Location |
|---|---|---|
| `fhirEMSCore_MappingMatrix.xlsx` | Element-by-element NEMSIS→FHIR mapping | `docs/mapping/` |
| `normalization-decision-records.md` | Architectural decisions (NDR-001–010) | `docs/normalization/` |
| `fhirEMSCore_ProjectPlan.docx` | 6-phase project roadmap | `docs/planning/` |
| `aliases.fsh` | All canonical URL aliases | `input/fsh/` |
| `sushi-config.yaml` | IG metadata, dependencies, pages | project root |
