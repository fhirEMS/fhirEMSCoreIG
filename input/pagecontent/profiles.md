# Profiles Overview

<div class="dragon" markdown="1">

This IG is an unofficial AI-generated research project. Profiles have been compiled with SUSHI (0 errors, 0 warnings) but have **not been run through IG Publisher full validation** and have not been reviewed by clinical or NEMSIS domain experts. See [Disclaimer](ip-statements.html).

</div>

This page provides a summary of all profiles defined in fhirEMSCore, their derivation chain, primary NEMSIS source sections, and build status.

**Status key:** ✅ FSH compiled, US Core conflicts resolved | ⚠ Compiled, known gaps | 🚧 Not started

---

## Profile Summary

### Patient Care Report (PCR) Core Profiles

These profiles represent the fundamental resources in an EMS Patient Care Report.

| Profile | Id | Parent | NEMSIS Section | Status | Notes |
|---|---|---|---|---|---|
| EMSComposition | ems-composition | Composition (R4 base) | eRecord | ✅ | PCR document structure; links all EMS resources |
| EMSPatient | ems-patient | us-core-patient | ePatient | ✅ | Demographics, barriers, SSN handling |
| EMSEncounter | ems-encounter | us-core-encounter | eResponse / eTimes / eDisposition | ✅ | 19-timestamp extension; dispatch/disposition |

### Response and Scene Profiles

| Profile | Id | Parent | NEMSIS Section | Status | Notes |
|---|---|---|---|---|---|
| EMSLocationScene | ems-location-scene | us-core-location | eScene | ✅ | GPS, address, MCI context |
| EMSLocationDestination | ems-location-destination | us-core-location | eDisposition | ✅ | Receiving facility |
| EMSCondition | ems-condition | us-core-condition-encounter-diagnosis | eSituation | ✅ | Encounter diagnoses only — eHistory conditions need separate profile |

### Clinical Assessment Profiles

| Profile | Id | Parent | NEMSIS Section | Status | Notes |
|---|---|---|---|---|---|
| EMSObservationVitalSigns | ems-observation-vitalsigns | us-core-vital-signs | eVitals | ✅ | HR, RR, SpO2, temp, ETCO2, AVPU, pain, etc. |
| EMSObservationBloodPressure | ems-observation-bp | us-core-blood-pressure | eVitals.06–08 | ✅ | Systolic + diastolic panel |
| EMSObservationGCS | ems-observation-gcs | us-core-observation-clinical-result | eVitals.19–22 | ✅ | GCS panel with hasMember sub-scores |
| EMSObservationExam | ems-observation-exam | us-core-observation-clinical-result | eExam | ✅ | Physical exam findings by body region |
| EMSObservationAirway | ems-observation-airway | us-core-observation-clinical-result | eAirway | ⚠ | value[x] not populated (detail in extension); IG Publisher validation pending |
| EMSObservationLabs | ems-observation-labs | us-core-observation-clinical-result | eLabs | ✅ | Point-of-care labs and imaging |
| EMSObservationOutcome | ems-observation-outcome | us-core-observation-clinical-result | eOutcome | ✅ | ED/hospital outcome panel |
| EMSConditionArrest | ems-condition-arrest | us-core-condition-encounter-diagnosis | eArrest | ✅ | Cardiac arrest with full eArrest context extension |
| EMSConditionInjury | ems-condition-injury | us-core-condition-encounter-diagnosis | eInjury | ✅ | Injury cause (ICD-10-CM), trauma triage criteria, collision and ACN telematics extensions |
| EMSConditionProblems | ems-condition-problems | us-core-condition-problems-health-concerns | eHistory.08 + context | ✅ | Past medical history (ICD-10-CM) with eHistory context extension |
| EMSMedicationStatement | ems-medicationstatement | MedicationStatement (R4 base) | eHistory.12–.15, .20 | ✅ | Home medications: RxNorm, dose, route, frequency |
| EMSProcedure | ems-procedure | us-core-procedure | eProcedures | ✅ | SNOMED-coded EMS procedures |
| EMSMedicationAdministration | ems-medicationadministration | MedicationAdministration (R4 base) | eMedications | ⚠ | No US Core parent — base R4 only; RxNorm coded |
| EMSAllergyIntolerance | ems-allergyintolerance | us-core-allergyintolerance | eHistory.06 | ✅ | Medication and environmental allergies |

### Agency and Crew Profiles

| Profile | Id | Parent | NEMSIS Section | Status | Notes |
|---|---|---|---|---|---|
| EMSOrganization | ems-organization | us-core-organization | dAgency | ✅ | Agency ID, NPI, service type |
| EMSPractitioner | ems-practitioner | us-core-practitioner | dPersonnel | ✅ | EMS crew member with state licensure |
| EMSPractitionerRole | ems-practitionerrole | us-core-practitionerrole | eCrew / dPersonnel | ✅ | Response role and certification level |
| EMSDevice | ems-device-vehicle | Device (R4 base) | dVehicle | ⚠ | No US Core parent; vehicle/unit identification only; dVehicle full coverage unverified |

### Payment and Billing Profiles

| Profile | Id | Parent | NEMSIS Section | Status | Notes |
|---|---|---|---|---|---|
| EMSCoverage | ems-coverage | Coverage (R4 base) | ePayment.09–22, .57–60 | ⚠ | No US Core parent; CMS billing rules not encoded as invariants |
| EMSClaim | ems-claim | Claim (R4 base) | ePayment (billing) | ⚠ | No US Core parent; Medicare ambulance claim rules not validated |

### Documentation and Custom Element Profiles

| Profile | Id | Parent | NEMSIS Section | Status | Notes |
|---|---|---|---|---|---|
| EMSDocumentReference | ems-documentreference | us-core-documentreference | eOther.09–.11, .22 | ✅ | External attachments; NEMSIS doc type extension |
| EMSProvenance | ems-provenance | us-core-provenance | eOther.12–.21 | ✅ | PCR signatures with NEMSIS signer/reason/status metadata |
| EMSQuestionnaire | ems-questionnaire | Questionnaire (R4 base) | eCustomConfiguration | ✅ | Custom element definitions (NDR-010) |
| EMSQuestionnaireResponse | ems-questionnaireresponse | QuestionnaireResponse (R4 base) | eCustomResults | ✅ | Custom element results (NDR-010) |

---

## Profile Relationship Diagram

```
EMSComposition (PCR Document)
├── subject          → EMSPatient
├── encounter        → EMSEncounter
│     ├── location   → EMSLocationScene
│     └── location   → EMSLocationDestination
├── section[condition]      → EMSCondition
│                           → EMSConditionArrest
├── section[vitals]         → EMSObservationVitalSigns
│                           → EMSObservationBloodPressure
│                           → EMSObservationGCS
├── section[exam]           → EMSObservationExam
├── section[airway]         → EMSObservationAirway
├── section[labs]           → EMSObservationLabs
├── section[procedures]     → EMSProcedure
├── section[medications]    → EMSMedicationAdministration
├── section[allergy]        → EMSAllergyIntolerance
├── section[outcome]        → EMSObservationOutcome
├── author          → EMSPractitioner
│                   → EMSOrganization
└── attester        → EMSPractitionerRole

EMSClaim
└── insurance.coverage → EMSCoverage
```

---

## EMS Data Flow

A complete EMS PCR in fhirEMSCore follows this resource creation sequence:

1. **Dispatch** — `EMSEncounter` created with dispatch extension data (eDispatch)
2. **Unit Response** — Encounter updated with response mode, unit type (eResponse)
3. **Scene Arrival** — `EMSLocationScene` created; encounter updated with scene times
4. **Patient Assessment** — `EMSPatient`, `EMSCondition`, `EMSObservation*` resources created
5. **Treatment** — `EMSProcedure`, `EMSMedicationAdministration` resources added
6. **Transport** — Encounter updated with transport destination, `EMSLocationDestination`
7. **Disposition** — Encounter closed with disposition codes
8. **Outcome** — `EMSObservationOutcome` created with ED/hospital results
9. **Billing** — `EMSCoverage`, `EMSClaim` created for CMS submission
10. **Document Assembly** — `EMSComposition` bundles all resources into a FHIR document

---

## NEMSIS Coverage by Section

| NEMSIS Section | Elements | fhirEMSCore Profile(s) | Coverage |
|---|---|---|---|
| eRecord | 4 | EMSComposition | Full |
| eResponse | 23 | EMSEncounter (extensions) | Full |
| eDispatch | 6 | EMSEncounter (ext-ems-dispatch-info) | Full |
| eCrew | 3 | EMSPractitionerRole | Full |
| eTimes | 17 | EMSEncounter (ext-ems-times) | Full |
| ePatient | 25 | EMSPatient | Full |
| eScene | 25 | EMSLocationScene | Full |
| eSituation | 20 | EMSCondition + EMSEncounter | Full |
| eHistory | 20 | EMSConditionProblems + EMSMedicationStatement + EMSAllergyIntolerance | Full |
| eVitals | 34 | EMSObservationVitalSigns / BP / GCS | Full |
| eLabs | 8 | EMSObservationLabs | Full |
| eExam | 24 | EMSObservationExam | Full |
| eProcedures | 15 | EMSProcedure | Full |
| eMedications | 13 | EMSMedicationAdministration | Full |
| eAirway | 11 | EMSObservationAirway | Full |
| eArrest | 19 | EMSConditionArrest | Full |
| eInjury | 29 | EMSConditionInjury | Full |
| eDisposition | 31 | EMSEncounter (extensions) | Full |
| eOutcome | 15 | EMSObservationOutcome | Full |
| ePayment | 59 | EMSCoverage + EMSClaim | Full |
| eOther | 22 | EMSDocumentReference + EMSProvenance + EMSEncounter (extensions) | Full |
| eDevice | 12 | EMSDevice | Partial |
| eProtocols | 2 | EMSEncounter (extension) | Full |
| eNarrative | 1 | EMSComposition.section | Full |
