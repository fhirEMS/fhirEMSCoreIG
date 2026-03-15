# fhirEMSCore Implementation Guide

**FHIR R4 Implementation Guide for Emergency Medical Services**
Based on **NEMSIS Version 3.5.1.251001CP2** | Aligned with **US Core 6.1.0**
Status: **Draft v0.1.0** | March 2026

---

## Overview

**fhirEMSCore** defines FHIR R4 profiles, extensions, value sets, and code systems for exchanging EMS Patient Care Report (PCR) data. It bridges the NEMSIS 3.5.1 XML standard with the FHIR interoperability ecosystem, enabling EMS agencies to share data with hospital EHRs, health information exchanges, and public health systems.

## Current Status

**Phase 2 complete — SUSHI builds clean (0 errors, 0 warnings)**

| Artifact Type | Count |
|---|---|
| Profiles | 23 |
| Extensions | 43 |
| Value Sets | 121 |
| Code Systems | 16 |
| Example Instances | 30 |

## Profiles

| Profile | NEMSIS Section | Parent |
|---|---|---|
| EMSComposition | eRecord | Composition (R4 base) |
| EMSPatient | ePatient | us-core-patient |
| EMSEncounter | eResponse / eTimes / eDisposition | us-core-encounter |
| EMSLocationScene | eScene | us-core-location |
| EMSLocationDestination | eDisposition | us-core-location |
| EMSCondition | eSituation / eHistory | us-core-condition-encounter-diagnosis |
| EMSConditionArrest | eArrest | us-core-condition-encounter-diagnosis |
| EMSObservationVitalSigns | eVitals | us-core-vital-signs |
| EMSObservationBloodPressure | eVitals.06/07 | us-core-blood-pressure |
| EMSObservationGCS | eVitals.19–22 | us-core-observation-clinical-result |
| EMSObservationExam | eExam | us-core-observation-clinical-result |
| EMSObservationAirway | eAirway | us-core-observation-clinical-result |
| EMSObservationLabs | eLabs | us-core-observation-clinical-result |
| EMSObservationOutcome | eOutcome | us-core-observation-clinical-result |
| EMSProcedure | eProcedures | us-core-procedure |
| EMSMedicationAdministration | eMedications | MedicationAdministration (R4 base) |
| EMSAllergyIntolerance | eHistory.06 | us-core-allergyintolerance |
| EMSOrganization | dAgency | us-core-organization |
| EMSPractitioner | dPersonnel | us-core-practitioner |
| EMSPractitionerRole | eCrew / dPersonnel | us-core-practitionerrole |
| EMSDevice | dVehicle | Device (R4 base) |
| EMSCoverage | ePayment.09–22 | Coverage (R4 base) |
| EMSClaim | ePayment billing | Claim (R4 base) |

## Project Structure

```
fhirEMSCore/
├── sushi-config.yaml              # SUSHI build config
├── ig.ini                         # IG Publisher init file
├── input/
│   ├── fsh/
│   │   ├── aliases.fsh            # All canonical URL aliases
│   │   ├── profiles/              # 23 profile FSH files
│   │   ├── extensions/            # Extension groups by section
│   │   │   ├── ems-extensions.fsh
│   │   │   ├── ems-extensions-patient.fsh
│   │   │   ├── ems-extensions-clinical.fsh
│   │   │   └── ems-extensions-payment.fsh
│   │   ├── valuesets/             # 121 value sets
│   │   ├── codesystems/           # 16 code systems
│   │   ├── examples/              # 30 example instances
│   │   └── instances/             # CapabilityStatement
│   ├── pagecontent/               # IG narrative pages (12 pages)
│   │   ├── index.md
│   │   ├── background.md
│   │   ├── nemsis-overview.md
│   │   ├── uscore-alignment.md
│   │   ├── profiles.md
│   │   ├── extensions.md
│   │   ├── terminology.md
│   │   ├── mapping.md
│   │   ├── differential.md
│   │   ├── must-support.md
│   │   ├── examples.md
│   │   ├── downloads.md
│   │   └── changes.md
│   └── includes/
│       └── menu.xml               # IG navigation menu
├── docs/
│   ├── planning/
│   │   └── fhirEMSCore_ProjectPlan.docx
│   ├── mapping/
│   │   └── fhirEMSCore_MappingMatrix.xlsx
│   └── normalization/
│       └── normalization-decision-records.md
└── source/
    ├── nemsis/                    # NEMSIS source files (XSD, txt)
    ├── uscore/                    # US Core reference
    └── fhir-r4/                   # FHIR R4 base reference
```

## Dependencies

```yaml
hl7.fhir.us.core: 6.1.0
hl7.terminology.r4: 5.5.0
hl7.fhir.uv.extensions: 5.1.0
```

## Build

SUSHI is installed locally:

```bash
# Compile FSH → FHIR JSON
cd /path/to/fhirEMSCore
./node_modules/.bin/sushi .

# Run IG Publisher (after downloading publisher.jar to input-cache/)
java -jar input-cache/publisher.jar -ig .

# Validate a single resource
java -jar input-cache/validator.jar \
  fsh-generated/resources/StructureDefinition-ems-patient.json \
  -version 4.0.1 -ig hl7.fhir.us.core#6.1.0
```

## NEMSIS Source Files

Source files are located at `/Users/chad/Documents/Files/fhirReference/NEMSIS Definitions/`.
Key files: `Combined_ElementDetails_Full.txt` (657 elements), `Combined_ElementEnumerations.txt` (3,372 codes).

## Normalization Decisions

See `docs/normalization/normalization-decision-records.md` for NDR-001 through NDR-010.

| NDR | Decision |
|---|---|
| NDR-001 | NEMSIS NV → FHIR `dataAbsentReason` or `ext-ems-not-value` |
| NDR-002 | NEMSIS PN → Observation absence value + `ext-ems-pertinent-negative` |
| NDR-005 | eTimes.03→Encounter.period.start, eTimes.12→period.end; rest in `ext-ems-times` |
| NDR-006 | NEMSIS sex codes → `Patient.gender` + `us-core-birthsex` |
| NDR-007 | NEMSIS VitalGroup → one Observation per element per group |
| NDR-008 | eMedications → `MedicationAdministration` (not MedicationRequest) |
| NDR-009 | eArrest → `Condition` (SNOMED 410429000) + `ext-ems-arrest-context` |
| NDR-010 | Custom elements → `Questionnaire` + `QuestionnaireResponse` |

## Contact

fhirEMSCore Project Team | March 2026
