# Terminology

This page documents the code systems, value sets, and terminology strategy used in fhirEMSCore.

---

## Terminology Strategy

fhirEMSCore uses standard code systems wherever the NEMSIS data allows, and defines custom NEMSIS code systems only where no standard system adequately represents the coded concept.

### Code System Priority Order

1. **SNOMED CT** (`http://snomed.info/sct`) — clinical concepts, body sites, findings, procedures
2. **LOINC** (`http://loinc.org`) — observations, vital signs, lab results, document types
3. **RxNorm** (`http://www.nlm.nih.gov/research/umls/rxnorm`) — medications
4. **ICD-10-CM** (`http://hl7.org/fhir/sid/icd-10-cm`) — diagnoses for claims
5. **CPT** (`http://www.ama-assn.org/go/cpt`) — procedures (when SNOMED not available)
6. **UCUM** (`http://unitsofmeasure.org`) — units of measure (always)
7. **NUBC UB-04** (`https://www.nubc.org/CodeSystem/PatDischargeStatus`) — patient discharge disposition
8. **NEMSIS CodeSystems** (`cs-nemsis-*`) — EMS-specific coded elements with no standard equivalent

---

## OID Identifiers

Every CodeSystem and ValueSet in this guide carries an OID identifier under the project's
self-assigned ISO UUID-arc root `2.25.219926138944530828037824748808947630693`
(sub-arc `.1.n` for CodeSystems, `.2.n` for ValueSets). These OIDs support OID-based
terminology infrastructure (e.g., CDA, IHE profiles) and travel with the resources when
loaded onto a terminology server.

Note that NEMSIS itself holds the registered OID arc `2.16.840.1.113883.17.3` (with
per-element code system OIDs under `.5`, e.g. `.5.71` for EMS condition codes, as cited by
LOINC). Those OIDs identify NEMSIS's own constructs from the HL7 CDA EMS Run Report IG and
are not reused here, since this guide groups NEMSIS codes by section rather than per element.

## NEMSIS Code Systems

Each NEMSIS section with coded elements has a corresponding FHIR CodeSystem resource.

| CodeSystem Id | URL | NEMSIS Section | Codes |
|---|---|---|---|
| `cs-nemsis-codes` | `.../CodeSystem/nemsis-codes` | General / multi-section | ~200 |
| `cs-nemsis-encounter` | `.../CodeSystem/nemsis-encounter` | eResponse / eDisposition | ~80 |
| `cs-nemsis-patient` | `.../CodeSystem/nemsis-patient` | ePatient | ~60 |
| `cs-nemsis-vitals` | `.../CodeSystem/nemsis-vitals` | eVitals | ~120 |
| `cs-nemsis-procedures` | `.../CodeSystem/nemsis-procedures` | eProcedures | ~40 |
| `cs-nemsis-medications` | `.../CodeSystem/nemsis-medications` | eMedications | ~30 |
| `cs-nemsis-exam` | `.../CodeSystem/nemsis-exam` | eExam | ~100 |
| `cs-nemsis-situation` | `.../CodeSystem/nemsis-situation` | eSituation | ~50 |
| `cs-nemsis-arrest` | `.../CodeSystem/nemsis-arrest` | eArrest | ~100 |
| `cs-nemsis-airway` | `.../CodeSystem/nemsis-airway` | eAirway | ~50 |
| `cs-nemsis-labs` | `.../CodeSystem/nemsis-labs` | eLabs | ~90 |
| `cs-nemsis-injury` | `.../CodeSystem/cs-nemsis-injury` | eInjury | ~105 |
| `cs-nemsis-history` | `.../CodeSystem/cs-nemsis-history` | eHistory | ~93 |
| `cs-nemsis-payment` | `.../CodeSystem/nemsis-payment` | ePayment | ~60 |
| `cs-nemsis-not-values` | `.../CodeSystem/nemsis-not-values` | All NV elements | 3 |
| `cs-nemsis-pertinent-negative` | `.../CodeSystem/nemsis-pertinent-negative` | All PN elements | ~6 |
| `cs-nemsis-incident-type` | `.../CodeSystem/nemsis-incident-type` | eSituation.07 | ~15 |
| `cs-nemsis-response-type` | `.../CodeSystem/nemsis-response-type` | eResponse.05 | ~10 |
| `cs-nemsis-transport-mode` | `.../CodeSystem/nemsis-transport-mode` | eDisposition transport | ~10 |
| `cs-nemsis-unit-type` | `.../CodeSystem/nemsis-unit-type` | eResponse.07 | ~15 |
| `cs-nemsis-personnel-level` | `.../CodeSystem/nemsis-personnel-level` | eCrew.02 / dPersonnel.24 | ~20 |
| `cs-nemsis-destination` | `.../CodeSystem/nemsis-destination` | eDisposition destination type | ~15 |

All NEMSIS CodeSystems are:
- `content = #complete` — all codes enumerated in the resource
- `caseSensitive = true`
- `experimental = false`
- Flat hierarchy — no hierarchy defined (no `concept.concept` nesting)

---

## Value Sets

### ePatient Value Sets

| ValueSet | Bound To | Code System |
|---|---|---|
| `vs-ems-race` | EMSPatient race | OMB + NEMSIS |
| `vs-ems-gender` | EMSPatient gender | NEMSIS / FHIR gender |
| `vs-ems-patient-barrier` | EMSPatient communication barriers | NEMSIS |

### eResponse / eEncounter Value Sets

| ValueSet | Bound To | Code System |
|---|---|---|
| `vs-ems-response-type` | EMSEncounter class | NEMSIS |
| `vs-ems-unit-type` | EMSEncounter unit type extension | NEMSIS |
| `vs-ems-transport-mode` | EMSEncounter transport details | NEMSIS |
| `vs-ems-destination-type` | EMSLocationDestination type | NEMSIS |
| `vs-ems-disposition-codes` | EMSEncounter disposition | NEMSIS |
| `vs-ems-response-urgency` | EMSClaim responseUrgency extension | NEMSIS ePayment.40 |

### eVitals Value Sets

| ValueSet | Bound To | Code System |
|---|---|---|
| `vs-ems-cardiac-rhythm` | ECG observation | NEMSIS |
| `vs-ems-pain-scale-type` | Pain scale type extension | NEMSIS |
| `vs-ems-stroke-scale` | Stroke scale observation | NEMSIS |
| `vs-ems-gcs-eye` | GCS Eye component | LOINC |
| `vs-ems-gcs-verbal` | GCS Verbal component | LOINC |
| `vs-ems-gcs-motor` | GCS Motor component | LOINC |

### eArrest Value Sets

| ValueSet | Bound To | Code System |
|---|---|---|
| `vs-ems-cardiac-arrest` | EMSConditionArrest status | NEMSIS |
| `vs-ems-arrest-etiology` | Arrest context etiology | NEMSIS |
| `vs-ems-resuscitation-attempted` | Arrest context resuscitation | NEMSIS |
| `vs-ems-arrest-witnessed` | Arrest witnessed | NEMSIS |
| `vs-ems-aed-use` | AED use | NEMSIS |
| `vs-ems-cpr-type` | CPR type | NEMSIS |
| `vs-ems-first-rhythm` | First monitored rhythm | NEMSIS |
| `vs-ems-rosc` | ROSC status | NEMSIS |
| `vs-ems-neurological-outcome` | CPC score | NEMSIS |
| `vs-ems-cpr-discontinued-reason` | CPR discontinued reason | NEMSIS |
| `vs-ems-arrest-end-event` | Arrest end event | NEMSIS |
| `vs-ems-arrest-first-responder` | First responder role | NEMSIS |

### eAirway Value Sets

| ValueSet | Bound To | Code System |
|---|---|---|
| `vs-ems-airway-indications` | Airway context indications | NEMSIS |
| `vs-ems-airway-device` | Airway device type | NEMSIS |
| `vs-ems-airway-confirmation` | Airway confirmation method | NEMSIS |
| `vs-ems-airway-confirming-person` | Confirming person type | NEMSIS |
| `vs-ems-airway-complications` | Airway complications | NEMSIS |
| `vs-ems-airway-failure-reasons` | Airway failure reasons | NEMSIS |

### eLabs Value Sets

| ValueSet | Bound To | Code System |
|---|---|---|
| `vs-ems-lab-result-type` | EMSObservationLabs code | NEMSIS eLabs.03 |
| `vs-ems-imaging-study-type` | EMSObservationLabs (imaging) | NEMSIS eLabs.05 |

### eOutcome Value Sets

| ValueSet | Bound To | Code System |
|---|---|---|
| `vs-ems-discharge-disposition` | Outcome panel components | NUBC UB-04 |
| `vs-ems-external-report-type` | eOutcome.03 | NEMSIS |

### ePayment Value Sets

| ValueSet | Bound To | Code System |
|---|---|---|
| `vs-ems-payment-method` | EMSClaim primaryPaymentMethod | NEMSIS ePayment.01 |
| `vs-ems-insurance-billing-priority` | EMSCoverage order | NEMSIS ePayment.11 |
| `vs-ems-insured-relationship` | EMSCoverage relationship | NEMSIS ePayment.22 |
| `vs-ems-response-urgency` | EMSClaim responseUrgency | NEMSIS ePayment.40 |
| `vs-ems-patient-transport-assessment` | EMSClaim transportAssessment | NEMSIS ePayment.41 |
| `vs-ems-ambulance-transport-reason` | EMSClaim ambulanceTransportReason | NEMSIS ePayment.44 |
| `vs-ems-ambulance-conditions` | EMSClaim ambulanceConditions | NEMSIS ePayment.47 |
| `vs-ems-cms-service-level` | EMSClaim cmsServiceLevel | NEMSIS ePayment.50 |
| `vs-ems-payer-type` | EMSCoverage payerType | NEMSIS ePayment.57 (X12) |

---

## NEMSIS Not Values (NV)

NEMSIS permits three "Not Value" codes on 269 of 657 elements. These are represented in FHIR via `dataAbsentReason` where available, or via the `ext-ems-not-value` extension.

| NEMSIS NV Code | FHIR dataAbsentReason | Meaning |
|---|---|---|
| `NV.NotApplicable` | `not-applicable` | The element is not applicable in this context |
| `NV.NotRecorded` | `not-asked` | The data was not recorded |
| `NV.NotReporting` | `unknown` | The agency is not reporting this element |

See [Normalization Decision Record NDR-001](background.html) for full rationale.

---

## NEMSIS Pertinent Negatives (PN)

NEMSIS supports "Pertinent Negative" codes on 70 of 657 elements, representing clinically significant documented absence. These are represented as:

- `Observation` with `valueCodeableConcept` indicating absence, **or**
- `ext-ems-pertinent-negative` extension carrying the specific PN code on a relevant observation

Common PN codes:

| PN Code | Meaning |
|---|---|
| `PN.ExamFindingNotPresent` | Clinical examination finding specifically absent |
| `PN.Refused` | Patient refused assessment/treatment |
| `PN.UnableToComplete` | Assessment could not be performed |
| `PN.DeniesSymptom` | Patient denies the symptom |
| `PN.NotAssessed` | Element was not assessed |
| `PN.ApproximatelyCorrect` | Value is an estimate |

See [Normalization Decision Record NDR-002](background.html) for full rationale.

---

## Vital Signs LOINC Mapping

| NEMSIS Element | Description | LOINC Code | LOINC Display |
|---|---|---|---|
| eVitals.06 | Systolic Blood Pressure | 8480-6 | Systolic blood pressure |
| eVitals.07 | Diastolic Blood Pressure | 8462-4 | Diastolic blood pressure |
| eVitals.10 | Heart Rate | 8867-4 | Heart rate |
| eVitals.12 | Pulse Oximetry | 59408-5 | Oxygen saturation |
| eVitals.14 | Respiratory Rate | 9279-1 | Respiratory rate |
| eVitals.18 | Blood Glucose | 59469-7 | Glucose [Mass/volume] in Capillary blood |
| eVitals.19 | GCS Eye | 9267-6 | Glasgow coma score eye opening |
| eVitals.20 | GCS Verbal | 9268-4 | Glasgow coma score verbal |
| eVitals.21 | GCS Motor | 9266-8 | Glasgow coma score motor |
| eVitals.22 | GCS Total | 9269-2 | Glasgow coma score total |
| eVitals.24 | Temperature | 8310-5 | Body temperature |
| eVitals.26 | AVPU | 67775-7 | Level of responsiveness |
| eVitals.27 | Pain Score | 72514-3 | Pain severity 0-10 |
| eVitals.28 | Weight | 29463-7 | Body weight |
| eVitals.16 | ETCO2 | 19889-5 | Carbon dioxide |

---

## Value Set Expansion Parameters

The following parameters are used when expanding the value sets in this guide:

{% include expansion-params.xhtml %}
