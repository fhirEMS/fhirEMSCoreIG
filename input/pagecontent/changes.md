# Change Log

<div class="dragon" markdown="1">

This IG is an **unofficial AI-generated research project**. It is not an HL7 product. Version numbers and release labels are illustrative only. See [IP Statements](ip-statements.html).

</div>

This page documents the version history and significant changes to fhirEMSCore.

---

## Version 0.1.0 — Initial Draft (2026-03)

**Status:** Draft / CI-Build
**FHIR Version:** R4 (4.0.1)
**US Core Version:** 6.1.0
**NEMSIS Version:** 3.5.1.251001CP2
**Generation method:** AI-generated (Claude, Anthropic) under human direction
**SUSHI build:** 0 errors, 0 warnings
**IG Publisher validation:** Not run

This is the initial draft of fhirEMSCore. All content is experimental and subject to change. This release has **not** been through HL7 ballot or any formal review process.

### New Profiles (23 total)

**Patient Care Report Core:**
- `ems-composition` — PCR document structure
- `ems-patient` — EMS patient demographics
- `ems-encounter` — EMS response encounter with 19-timestamp extension

**Response and Scene:**
- `ems-location-scene` — Incident scene location
- `ems-location-destination` — Transport destination
- `ems-condition` — Clinical impressions

**Clinical Assessment:**
- `ems-observation-vitalsigns` — Generic vital sign
- `ems-observation-bp` — Blood pressure panel
- `ems-observation-gcs` — Glasgow Coma Scale
- `ems-observation-exam` — Physical exam findings
- `ems-observation-airway` — Airway management
- `ems-observation-labs` — Point-of-care labs and imaging
- `ems-observation-outcome` — Patient outcome panel
- `ems-condition-arrest` — Cardiac arrest condition
- `ems-procedure` — EMS procedure
- `ems-medicationadministration` — Administered medication
- `ems-allergyintolerance` — Allergy/intolerance

**Agency and Crew:**
- `ems-organization` — EMS agency
- `ems-practitioner` — EMS crew member
- `ems-practitionerrole` — EMS crew role
- `ems-device-vehicle` — EMS unit/vehicle

**Payment and Billing:**
- `ems-coverage` — Insurance coverage
- `ems-claim` — CMS ambulance claim

### New Extensions (43 total)

Key complex extensions:

- `ext-ems-times` — 19-timestamp complex extension (NDR-005)
- `ext-ems-dispatch-info` — Dispatch information complex
- `ext-ems-transport-details` — Transport details complex
- `ext-ems-scene-details` — Scene details complex
- `ext-ems-arrest-context` — 21-field arrest context (NDR-009)
- `ext-ems-airway-context` — 10-field airway context
- `ext-ems-not-value` — NEMSIS Not Value universal extension (NDR-001)
- `ext-ems-pertinent-negative` — NEMSIS Pertinent Negative universal extension (NDR-002)

### New Code Systems (16 total)

NEMSIS 3.5.1 coded elements enumerated as FHIR CodeSystems:

- `cs-nemsis-codes` — General multi-section codes
- `cs-nemsis-encounter` — eResponse / eDisposition
- `cs-nemsis-patient` — ePatient
- `cs-nemsis-vitals` — eVitals
- `cs-nemsis-procedures` — eProcedures
- `cs-nemsis-medications` — eMedications
- `cs-nemsis-exam` — eExam
- `cs-nemsis-situation` — eSituation
- `cs-nemsis-arrest` — eArrest
- `cs-nemsis-airway` — eAirway
- `cs-nemsis-labs` — eLabs
- `cs-nemsis-payment` — ePayment
- `cs-nemsis-not-values` — NV codes (3)
- `cs-nemsis-pertinent-negative` — PN codes
- Plus 6 section-specific CodeSystems

### New Value Sets (121 total)

Value sets covering all NEMSIS-coded elements, organized by section (eResponse, ePatient, eScene, eSituation, eHistory, eVitals, eExam, eProcedures, eMedications, eAirway, eArrest, eLabs, eOutcome, ePayment).

### New Examples (30 total)

Complete example set representing an MVA response with cardiac arrest:

- `ex-ems-patient`, `ex-ems-encounter`
- `ex-ems-location-scene`, `ex-ems-location-destination`
- `ex-ems-condition`, `ex-ems-condition-arrest`
- `ex-ems-observation-bp`, `ex-ems-heart-rate`, `ex-ems-spo2`, `ex-ems-respiratory-rate`
- `ex-ems-observation-gcs`
- `ex-ems-exam-skin`, `ex-ems-exam-neuro`
- `ex-ems-observation-airway`, `ex-ems-observation-labs`
- `ex-ems-procedure`, `ex-ems-medicationadministration`
- `ex-ems-allergyintolerance`
- `ex-ems-organization`, `ex-ems-practitioner`, `ex-ems-practitionerrole`
- `ex-ems-device-vehicle`
- `ex-ems-observation-outcome`
- `ex-ems-coverage`, `ex-ems-claim`

### Normalization Decisions (NDR-001 through NDR-010)

All architectural decisions recorded in `docs/normalization/normalization-decision-records.md`:

| NDR | Decision |
|---|---|
| NDR-001 | NEMSIS NV → FHIR `dataAbsentReason` (3 codes) or `ext-ems-not-value` |
| NDR-002 | NEMSIS PN → FHIR Observation with absence value + `ext-ems-pertinent-negative` |
| NDR-003 | NEMSIS GNIS city codes → plain text city name |
| NDR-004 | NEMSIS 2-digit ANSI state codes → 2-letter USPS abbreviations |
| NDR-005 | eTimes 19 timestamps → `ext-ems-times`; eTimes.03→period.start, eTimes.12→period.end |
| NDR-006 | NEMSIS Sex → `Patient.gender` + `us-core-birthsex`; trans codes mapped to both |
| NDR-007 | NEMSIS VitalGroup → one Observation per element per group |
| NDR-008 | eMedications → `MedicationAdministration` (not MedicationRequest) |
| NDR-009 | eArrest → `Condition` (SNOMED 410429000) + `EMSArrestContext` complex extension |
| NDR-010 | Custom elements → `Questionnaire` + `QuestionnaireResponse` pattern |

---

## Known Issues (v0.1.0)

| Issue | Description | Planned Fix |
|---|---|---|
| eInjury section | 29 injury elements not yet profiled | v0.2.0 |
| eOther section | 22 additional clinical elements not profiled | v0.2.0 |
| eHistory medications | Home medication history not represented | `MedicationStatement` in v0.2.0 |
| eCustom elements | Questionnaire/QuestionnaireResponse pattern defined (NDR-010) but no profile | v0.2.0 |
| IG Publisher validation | Full HL7 IG Publisher validation not yet run | Prior to ballot |
| Gender identity | NEMSIS trans codes partially mapped | NDR-006 revision in v0.2.0 |

---

## Future Versions

### v0.2.0 (planned)
- eInjury profile (`ems-condition-injury`)
- eOther clinical observation profiles
- eHistory medication statement profile
- Complete IG Publisher validation
- CapabilityStatement refinement
- STU ballot preparation

### v1.0.0 (planned)
- HL7 STU ballot
- Community review and reconciliation
- National pilot implementation
