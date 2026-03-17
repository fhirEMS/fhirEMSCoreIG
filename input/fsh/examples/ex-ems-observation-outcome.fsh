// ============================================================
// Example: EMS Outcome Observation
// Scenario: ED and hospital outcome data for MVA patient
// NEMSIS eOutcome section
// ============================================================

Instance: ex-ems-observation-outcome
InstanceOf: EMSObservationOutcome
Title: "Example EMS Outcome — ED and Hospital Disposition"
Description: "Example outcome observation demonstrating the EMSObservationOutcome profile. Patient admitted as inpatient from ED following MVA with head injury."
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-outcome"

* status = #final

* category[us-core].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[us-core].coding[0].code = #exam

// Code fixed to eOutcomePanel by profile
* code = $nemsis-encounter-cs#eOutcomePanel "EMS Outcome Observation Panel"

// Date outcome data was recorded
* effectiveDateTime = "2026-03-15T08:00:00-08:00"

* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)

// ── eOutcome.01 - ED Disposition → Admitted as inpatient ──────
* component[edDisposition].code = $nemsis-encounter-cs#eOutcomeEDDisposition
* component[edDisposition].valueCodeableConcept.coding[0].system = "http://www.nubc.org/patient-discharge"
* component[edDisposition].valueCodeableConcept.coding[0].code = #09
* component[edDisposition].valueCodeableConcept.coding[0].display = "Admitted as an inpatient to this hospital"

// ── eOutcome.10 - ED Diagnosis (ICD-10-CM) ────────────────────
// S09.90XA — Unspecified injury of head, initial encounter
* component[edDiagnosis].code = $loinc#29548-5 "Diagnosis Narrative"
* component[edDiagnosis].valueCodeableConcept.coding[0].system = "http://hl7.org/fhir/sid/icd-10-cm"
* component[edDiagnosis].valueCodeableConcept.coding[0].code = #S09.90XA
* component[edDiagnosis].valueCodeableConcept.coding[0].display = "Unspecified injury of head, initial encounter"

// ── eOutcome.11 - Hospital Admission DateTime ─────────────────
* component[hospitalAdmitDateTime].code = $loinc#52455-3 "Admission date"
* component[hospitalAdmitDateTime].valueDateTime = "2026-03-14T17:30:00-08:00"

// ── eOutcome.18 - ED Admission DateTime ──────────────────────
* component[edAdmitDateTime].code = $nemsis-encounter-cs#eOutcomeEDArrivalDateTime
* component[edAdmitDateTime].valueDateTime = "2026-03-14T15:08:00-08:00"

// ── eOutcome.21 - Injury Severity Score ──────────────────────
* component[injurySeverityScore].code = $nemsis-encounter-cs#eOutcomeInjurySeverityScore
* component[injurySeverityScore].valueInteger = 9
