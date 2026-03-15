# NEMSIS vs US Core Differential

This page documents the key differences between the NEMSIS 3.5.1 data model and US Core 6.1.0 / FHIR R4, explaining the architectural decisions made to bridge these standards.

---

## Overview

NEMSIS and FHIR/US Core were designed for different purposes:

| Dimension | NEMSIS 3.5.1 | US Core 6.1.0 / FHIR R4 |
|---|---|---|
| **Primary purpose** | Pre-hospital EMS data collection and reporting | Clinical data exchange across all healthcare settings |
| **Data model** | XML-based PCR document (single-patient, single-incident) | RESTful resource graph (patient-centric) |
| **Coding paradigm** | Proprietary enumeration codes (NEMSIS CodeSystem) | Standard terminologies (SNOMED, LOINC, RxNorm) |
| **Temporal model** | 19 discrete timestamps per incident | Period (start/end) + discrete dateTime |
| **Document structure** | Nested XML sections mirroring PCR form | Independent resources linked by references |
| **Null handling** | Explicit NV (Not Value) and PN (Pertinent Negative) codes | dataAbsentReason extension, or omission |
| **Identifiers** | State/agency/incident number | NPI, SSN, MRN, or local identifiers |

---

## Patient Demographics

| Element | NEMSIS | US Core | Bridge Decision |
|---|---|---|---|
| Sex / Gender | ePatient.11: Single field mixing sex, gender identity, and legal sex | `gender` (administrative) + `us-core-birthsex` + `gender-identity` extension | NDR-006: Map NEMSIS sex codes to both `gender` and `birthsex`; transgender codes map to both fields |
| Race | ePatient.14: NEMSIS-specific race codes | OMB race categories via `us-core-race` | Map NEMSIS codes to closest OMB category; add NEMSIS coding to same CodeableConcept |
| Age | ePatient.15: Age at time of call | Not a standard FHIR element (derived from birthDate) | `ext-ems-patient-age` extension preserves operational age |
| Communication barriers | ePatient.21: Coded list of barriers | No US Core equivalent | `ext-ems-patient-barrier` extension (0..*) |

---

## Temporal Model

NEMSIS has 19 discrete timestamps representing every phase of an EMS response. FHIR Encounter has only `period` (start/end).

| NEMSIS Timestamp | Meaning | FHIR Mapping |
|---|---|---|
| eTimes.03 | Unit notified by dispatch | `Encounter.period.start` (NDR-005) |
| eTimes.12 | Patient transfer of care | `Encounter.period.end` (NDR-005) |
| eTimes.01, .02, .04–.11, .13–.19 | All other EMS timestamps | `ext-ems-times` complex extension |

**Rationale (NDR-005)**: eTimes.03 is the operational "call start" and eTimes.12 is the "call end" from a patient care perspective. These align most closely with the FHIR Encounter period concept. The other 17 timestamps have no standard FHIR representation and require extension.

---

## Coding Systems

NEMSIS was designed before SNOMED, LOINC, and RxNorm were widely adopted in EMS. NEMSIS 3.5.1 made progress toward standard terminologies but retains proprietary codes for most sections.

| Domain | NEMSIS Approach | fhirEMSCore Resolution |
|---|---|---|
| Medications | eMedications.03: Already RxNorm | Direct mapping to `MedicationAdministration.medicationCodeableConcept` |
| Procedures | eProcedures.03: Already SNOMED CT | Direct mapping to `Procedure.code` |
| Chief complaint / impression | NEMSIS ICD-9/10 or SNOMED mix | SNOMED CT preferred; ICD-10-CM for billing |
| Vital signs | NEMSIS-specific codes | Mapped to LOINC (see Terminology page) |
| All other sections | NEMSIS proprietary codes | NEMSIS CodeSystem + ValueSet; SNOMED/LOINC added where direct mapping exists |

---

## Null Value Handling

NEMSIS has two types of coded null: NV (Not Value) and PN (Pertinent Negative). FHIR handles absence differently depending on context.

### Not Values (NV) — 269 elements

| NEMSIS NV | Semantic | FHIR Approach |
|---|---|---|
| `NV.NotApplicable` | Not applicable in this context | `dataAbsentReason = not-applicable` |
| `NV.NotRecorded` | Not recorded | `dataAbsentReason = not-asked` |
| `NV.NotReporting` | Agency not reporting | `dataAbsentReason = unknown` |

When `dataAbsentReason` is not available (e.g., on non-Observation elements), use `ext-ems-not-value`.

### Pertinent Negatives (PN) — 70 elements

PN codes represent clinically significant documented absence — the provider specifically looked for something and it was not present. FHIR Observation supports absence values via:

1. `valueCodeableConcept` with a code indicating absence
2. `ext-ems-pertinent-negative` extension carrying the specific PN code

FHIR's `dataAbsentReason` is **not** suitable for PN, as it means the observation was not done — but PN means it was specifically assessed and found absent.

---

## Document vs Resource Model

NEMSIS is a **document-centric** standard: one XML file per incident, containing all data for that patient call.

FHIR is **resource-centric**: each clinical concept is a separate resource linked by references.

| NEMSIS PCR Structure | FHIR Equivalent |
|---|---|
| Root PCR document | `EMSComposition` (document Bundle) |
| ePatient section | `EMSPatient` resource |
| eResponse section | `EMSEncounter` resource |
| eVitals group (repeated) | Multiple `EMSObservation*` resources |
| eProcedures group (repeated) | Multiple `EMSProcedure` resources |
| eMedications group (repeated) | Multiple `EMSMedicationAdministration` resources |
| ePayment section | `EMSCoverage` + `EMSClaim` resources |

Repeating NEMSIS groups (VitalGroup, MedicationGroup, ProcedureGroup) become **multiple FHIR resources** with:
- Same `Observation.encounter` / `Procedure.encounter` reference
- Timestamp from group header → `effective[x]` or `performed[x]` on each resource
- Crew member from group → `performer` reference

---

## Cardinality Differences

Several significant cardinality differences exist between NEMSIS and FHIR:

| Element | NEMSIS | FHIR US Core | fhirEMSCore |
|---|---|---|---|
| Patient identifier | Optional in NEMSIS PCR | Required (1..*) | Required (1..*) — use PCR incident number |
| Encounter type | Not in NEMSIS | Required (1..*) in US Core | Required — SNOMED 409971007 "EMS" |
| Vital sign code | Required | Required LOINC | Required LOINC (same) |
| Procedure performer | Required in NEMSIS | Optional in US Core | MS in fhirEMSCore |

---

## EMS-Specific Data with No FHIR Equivalent

The following NEMSIS data elements have no standard FHIR representation and require custom extensions:

| NEMSIS Element(s) | Category | Extension |
|---|---|---|
| eTimes.01–19 (17 non-standard times) | Temporal | `ext-ems-times` complex |
| eResponse response/travel mode | Response | `ext-ems-response-mode` |
| eDispatch dispatch information | Dispatch | `ext-ems-dispatch-info` complex |
| eScene GPS coordinates | Location | `ext-ems-scene-gps` |
| eScene mass casualty data | Scene | `ext-ems-scene-details` complex |
| ePatient age at time of call | Patient | `ext-ems-patient-age` |
| ePatient communication barriers | Patient | `ext-ems-patient-barrier` |
| eVitals obtained-prior flag | Vitals | `ext-ems-vital-obtained-prior` |
| eArrest full arrest context | Arrest | `ext-ems-arrest-context` complex (21 fields) |
| eAirway device/confirmation data | Airway | `ext-ems-airway-context` complex (10 fields) |
| eCrew certification level | Crew | `ext-ems-certification-level` |
| dAgency operational details | Agency | `ext-ems-agency-details` complex |
| All NV elements | Null | `ext-ems-not-value` |
| All PN elements | Clinical null | `ext-ems-pertinent-negative` |

---

## Sections Not Yet Mapped

The following NEMSIS sections are not profiled in this version (v0.1.0) of the IG:

| Section | Elements | Planned Profile | Priority |
|---|---|---|---|
| eInjury | 29 | EMSConditionInjury | Medium |
| eOther | 22 | EMSObservationOther | Low |
| eCustom/Configuration | 9 | Questionnaire + QuestionnaireResponse (NDR-010) | Low |
| dRecord | 3 | Composition metadata | Low |
| sState | Variable | State-specific extensions | Out of scope |
