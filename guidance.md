# Implementation Guidance - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* **Implementation Guidance**

## Implementation Guidance

# Implementation Guidance

This page describes implementation guidance for a **research IG only**. This content has not been validated against production EMS systems. Significant implementation decisions may need to be revisited based on real-world feedback.

-------

## Overview

This page provides guidance for implementers building systems that produce or consume fhirEMSCore-conformant FHIR resources. It covers the primary use cases, bundle construction, NEMSIS-to-FHIR conversion patterns, and known limitations.

-------

## Use Cases

### Use Case 1 — EMS to Emergency Department Handoff

An EMS agency completes a PCR at the time of patient transfer. The ePCR software converts the PCR to a FHIR Bundle and sends it to the receiving ED's FHIR endpoint.

**Resources involved:**

* `EMSComposition` (document bundle root)
* `EMSEncounter` (response details, timestamps)
* `EMSPatient` (demographics)
* `EMSObservationVitalSigns`, `EMSObservationBP`, `EMSObservationGCS` (vitals)
* `EMSCondition` (provider impression)
* `EMSProcedure` (interventions)
* `EMSMedicationAdministration` (medications given)

**Pattern:** FHIR Document Bundle (type `document`) with `EMSComposition` as the first entry.

### Use Case 2 — EMS to State Registry Submission

An agency submits completed PCRs to the state EMS data registry for NEMSIS reporting.

**Pattern:** FHIR Transaction Bundle containing all PCR resources. The state registry uses the `EMSComposition` to link resources to a single response event.

### Use Case 3 — EMS to HIE / TEFCA

EMS data submitted to a Health Information Exchange for integration with the patient's longitudinal health record.

**Pattern:** Individual resources posted via FHIR REST API with `Patient` matching against MPI. `EMSEncounter` referenced from downstream ED and hospital encounters.

### Use Case 4 — Analytics and Quality Reporting

Aggregated, de-identified EMS PCR data used for quality measure calculation, cardiac arrest registry, or population health analytics.

**Pattern:** FHIR Bulk Data Export ($export) from an EMS data repository. De-identification applied per HIPAA Safe Harbor before export.

-------

## Bundle Construction

### PCR Document Bundle

A complete EMS PCR is represented as a FHIR **Document Bundle**:

```
Bundle (type: document)
├── entry[0]: EMSComposition (required — must be first)
├── entry[1]: EMSPatient
├── entry[2]: EMSEncounter
├── entry[3]: EMSLocationScene
├── entry[4]: EMSLocationDestination (if transported)
├── entry[5..N]: EMSObservation* (one per vital sign per VitalGroup)
├── entry[N+1..]: EMSCondition (provider impressions)
├── entry[N+2..]: EMSProcedure (one per procedure)
├── entry[N+3..]: EMSMedicationAdministration (one per medication)
├── entry[N+4]: EMSConditionArrest (if arrest present)
├── entry[N+5]: EMSObservationAirway (if airway managed)
├── entry[N+6]: EMSAllergyIntolerance (if known allergies)
├── entry[N+7]: EMSOrganization (agency)
├── entry[N+8..]: EMSPractitioner (crew members)
├── entry[N+9..]: EMSPractitionerRole (crew roles)
├── entry[N+10]: EMSDevice (vehicle, if applicable)
├── entry[N+11]: EMSCoverage (if billing)
└── entry[N+12]: EMSClaim (if billing)

```

### Multiple Vital Sign Sets (NDR-007)

NEMSIS groups vitals in `VitalGroup` elements (one group per assessment time). Each group produces **one `Observation` per data element**, all sharing the same `effectiveDateTime` and `encounter` reference:

```
VitalGroup (eTimes.01 = 2026-03-14T14:32:00-07:00)
├── EMSObservationVitalSigns (HR = 98 bpm, effectiveDateTime = 14:32)
├── EMSObservationBP (SBP=142/DBP=88, effectiveDateTime = 14:32)
├── EMSObservationVitalSigns (SpO2 = 94%, effectiveDateTime = 14:32)
├── EMSObservationVitalSigns (RR = 20, effectiveDateTime = 14:32)
└── EMSObservationGCS (panel, effectiveDateTime = 14:32)
    ├── hasMember → EMSObservationGCS (Eye=3, 9267-6)
    ├── hasMember → EMSObservationGCS (Verbal=4, 9268-4)
    └── hasMember → EMSObservationGCS (Motor=5, 9266-8)

```

-------

## NEMSIS-to-FHIR Conversion Patterns

### Not Values (NV) — NDR-001

NEMSIS `xsi:nil="true"` with an NV attribute:

| | |
| :--- | :--- |
| `NV.NotRecorded` | `dataAbsentReason = #not-asked` |
| `NV.NotApplicable` | `dataAbsentReason = #not-applicable` |
| `NV.NotReporting` | `dataAbsentReason = #unknown` |

When `dataAbsentReason` is not available on the element (e.g., a complex extension sub-field), use `ext-ems-not-value` extension carrying the NV code.

**Nillable elements:** Simply omit the element from the FHIR resource when the value is nil (no null/empty string).

### Pertinent Negatives (PN) — NDR-002

NEMSIS PN codes document clinically significant absence of a finding:

| | | |
| :--- | :--- | :--- |
| `PN.ExamFindingNotPresent` | Finding actively assessed and absent | `ext-ems-pertinent-negative`on the element |
| `PN.Refused` | Patient refused assessment | `ext-ems-pertinent-negative`on the element |
| `PN.UnableToComplete` | Could not perform assessment | `ext-ems-pertinent-negative`on the element |
| `PN.DeniesSymptom` | Patient denies the symptom | `ext-ems-pertinent-negative`on Condition |
| `PN.Unresponsive` | Patient unresponsive | `ext-ems-pertinent-negative`on the element |

### State and County Codes

| | | |
| :--- | :--- | :--- |
| `ANSIStateCode`(2-digit numeric) | `address.state` | Convert to 2-letter USPS abbreviation per NDR-004 |
| `ANSICountyCode`(5-digit FIPS) | `address.district` | Store as 5-digit FIPS string (e.g., "04013") |
| `CityGnisCode`(GNIS numeric) | `address.city` | Look up plain text city name from GNIS database per NDR-003 |

### Timestamps (eTimes) — NDR-005

NEMSIS eTimes contains 19 discrete timestamps. Only two map directly to standard FHIR Encounter fields:

| | |
| :--- | :--- |
| eTimes.03 (Unit Notified by Dispatch) | `Encounter.period.start` |
| eTimes.12 (Patient Transfer of Care) | `Encounter.period.end` |
| All other eTimes elements | `ext-ems-times`complex extension sub-elements |

### Glasgow Coma Scale (GCS) — Panel Pattern

```
EMSObservationGCS (code: LOINC 9269-2 — Total GCS)
  hasMember[0] → EMSObservationGCS (code: LOINC 9267-6 — Eye, valueInteger: 3)
  hasMember[1] → EMSObservationGCS (code: LOINC 9268-4 — Verbal, valueInteger: 4)
  hasMember[2] → EMSObservationGCS (code: LOINC 9266-8 — Motor, valueInteger: 5)
  component[gcsQualifier] → CodeableConcept from EMSGCSQualifierVS

```

-------

## Known Limitations and Incomplete Items

The following sections are incomplete or have known issues. Implementers must not use these areas without additional validation work.

### ❌ IG Publisher Validation Not Run

SUSHI compilation passes (0 errors, 0 warnings) but **IG Publisher full validation has not been executed**. Known categories of additional errors that IG Publisher may report:

* Unresolvable value set URLs (NEMSIS value sets not registered in terminology.hl7.org)
* Missing FHIRPath invariant definitions
* Snapshot generation warnings on complex extension slicing
* Broken internal cross-references in narrative pages

### 🚧 eInjury Section — Not Profiled (29 elements)

NEMSIS eInjury covers trauma-specific data including injury cause, mechanism, intent, body region, and safety device use. No FHIR profile has been created. Planned mapping:

* Injury cause/mechanism → `Condition` with ICD-10-CM external cause codes (S/T/V/W/X/Y chapters)
* Body region → `Condition.bodySite` with SNOMED CT
* Safety device use → Extension on `Condition` or `Encounter`

**Workaround:** Use base FHIR R4 `Condition` resource for eInjury data until `ems-condition-injury` is defined in v0.2.0.

### 🚧 eOther Section — Not Profiled (22 elements)

NEMSIS eOther covers cardiac rhythm (ECG), stroke assessment, reperfusion checklist, and other assessments not fitting other sections. Partial coverage exists via `EMSObservationVitalSigns` (which includes AVPU, pain, cardiac rhythm, stroke scale), but no dedicated eOther profile exists.

**Workaround:** Use `EMSObservationVitalSigns` or base `Observation` for eOther elements pending v0.2.0.

### 🚧 eHistory Past Medical History — No Condition Profile

`EMSCondition` (derived from `us-core-condition-encounter-diagnosis`) is constrained to encounter diagnoses only. A separate profile derived from `us-core-condition-problems-health-concerns` is needed for eHistory.08 (Past Medical History) and eHistory.09 (Medical History Obtained From).

**Workaround:** Use `us-core-condition-problems-health-concerns` directly for past medical history until a dedicated profile is defined.

### 🚧 eHistory Medications — Not Profiled

NEMSIS eHistory.01–05 covers prior medication use (home medications). No `MedicationStatement` profile has been defined. The base FHIR R4 `MedicationStatement` resource (no US Core parent profile) would be the appropriate target.

**Workaround:** Use base FHIR R4 `MedicationStatement` pending v0.2.0.

### ⚠ CapabilityStatement — Not Defined

No `CapabilityStatement` has been defined for this IG. A production IG requires at minimum:

* EMS Sender CapabilityStatement (ePCR system posting PCR bundles)
* EMS Receiver CapabilityStatement (receiving system accepting PCR data)
* Query Consumer CapabilityStatement (HIE/analytics querying EMS data)

### ⚠ Terminology Servers

NEMSIS-defined code systems in this IG use the canonical URL pattern `https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/nemsis-*`. These are **not registered** with any public terminology server. FHIR validators and terminology operations will not be able to resolve them without a local terminology server configured to serve these code systems.

### ⚠ Value Set Expansion

Many value sets in this IG include all enumeration codes from NEMSIS 3.5.1 source files. These value sets have not been:

* Validated against the normative NEMSIS XSD schemas
* Cross-checked against NEMSIS version 3.5.1 errata
* Reviewed by NEMSIS TAC or domain experts

### ⚠ Example Instances

The 30 example instances represent a synthetic MVA/cardiac arrest scenario. They:

* Have not been clinically reviewed
* May not represent valid real-world EMS documentation patterns
* Should not be used to infer clinical decision rules or training data

### ⚠ ePayment Section — Partial Coverage

The ePayment section (59 elements) is the largest in NEMSIS and covers CMS ambulance billing. The `ems-claim` and `ems-coverage` profiles provide a structural foundation but:

* CMS ambulance claim adjudication rules are not encoded as invariants
* Medicare/Medicaid-specific billing requirements are not validated
* HCPCS ambulance codes (A0425–A0999) are referenced but not constrained
* The profiles have not been reviewed against CMS Claims Processing Manual Chapter 15

-------

## Patient Matching

When submitting EMS PCR data to an HIE or hospital system, patient matching is critical. Recommended strategy:

1. **First:**Attempt NPI/MRN match if the patient is known to the receiving system
1. **Second:**Use`Patient.identifier[ssn]`(tokenized) for matching — never plain-text SSN
1. **Third:**Use demographic matching (name + DOB + address) via MPI
1. **Fourth:**If no match found, create a new patient record and flag for manual review

NEMSIS ePatient.01 (EMS Patient ID) should be preserved as `Patient.identifier[emsPatientId]` to allow reverse lookup from the EMS system.

-------

## Version Interoperability

This IG targets FHIR R4 (4.0.1). It has not been adapted for FHIR R4B or FHIR R5. Key differences that would affect migration:

| | | |
| :--- | :--- | :--- |
| `MedicationAdministration.medication[x]` | `CodeableConcept`or`Reference` | R5 uses`CodeableReference` |
| `Observation.value[x]`typing | Standard R4 types | R5 adds`Attachment` |
| `Claim`resource | R4 structure | R5 has breaking changes to financial resources |
| `Coverage`resource | R4 structure | R5 restructured |

