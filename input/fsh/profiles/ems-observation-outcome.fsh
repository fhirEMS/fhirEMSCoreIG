// ============================================================
// Profile: EMS Outcome Observation
// NEMSIS 3.5.1.251001CP2 — eOutcome section
// Parent: US Core Observation (Clinical Result)
// ============================================================

Profile: EMSObservationOutcome
Id: ems-observation-outcome
Title: "EMS Outcome Observation"
Description: "Documents hospital and ED outcome data collected by the EMS agency. Covers NEMSIS eOutcome.01 (ED Disposition), eOutcome.02 (Hospital Disposition), eOutcome.09/12 (ED/Hospital Procedures using ICD-10-PCS), eOutcome.10/13 (ED/Hospital Diagnoses using ICD-10-CM), eOutcome.11 (Hospital Admission DateTime), eOutcome.16 (Hospital Discharge DateTime), eOutcome.18 (ED Admission DateTime), and eOutcome.21 (Injury Severity Score). Each significant eOutcome data point is captured as an Observation component."
Parent: $us-core-observation

* ^url = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-outcome"
* ^version = "0.2.0"
* ^status = #active
* ^experimental = false

// ── Acquisition source (externally-sourced outcome data) ─────
* extension contains EMSOutcomeSource named acquisitionSource 0..1 MS
* extension[acquisitionSource]
  * ^short = "How this outcome data was acquired (lane, source, retrieval time)"

// ── Status ────────────────────────────────────────────────────
* status MS
  * ^short = "Observation status (final | preliminary | amended)"

// ── Category — exam (outcome/disposition data) ───────────────
* category 1..* MS
* category[us-core] = $obs-cat#exam "Exam"
  * ^comment = "eOutcome data is hospital outcome and disposition information collected by the EMS agency. 'exam' is the closest category in the US Core Clinical Result Observation Category value set."

// ── Code — eOutcome panel ──────────────────────────────────────
* code 1..1 MS
* code = $nemsis-encounter-cs#eOutcomePanel "EMS Outcome Observation Panel"
  * ^short = "eOutcome — EMS Outcome Panel"
  * ^comment = "NEMSIS eOutcome panel code. Individual outcomes are captured in Observation.component slices. Originally mapped to LOINC 74209-4 (EMS-NEMSIS collaboration code, not in LOINC v2.81 cache)."

// ── Effective date/time ────────────────────────────────────────
* effective[x] MS
* effectiveDateTime MS
  * ^short = "Date/time outcome data was recorded or reported"

// ── Subject and encounter ─────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
* encounter MS
* encounter only Reference(EMSEncounter)

// ── Components ────────────────────────────────────────────────
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    edDisposition           0..1 MS and   // eOutcome.01
    hospitalDisposition     0..1 MS and   // eOutcome.02
    edProcedure             0..* MS and   // eOutcome.09
    edDiagnosis             0..* MS and   // eOutcome.10
    hospitalAdmitDateTime   0..1 MS and   // eOutcome.11
    hospitalProcedure       0..* MS and   // eOutcome.12
    hospitalDiagnosis       0..* MS and   // eOutcome.13
    hospitalDischargeDateTime 0..1 MS and // eOutcome.16
    edAdmitDateTime         0..1 MS and   // eOutcome.18
    injurySeverityScore     0..1          // eOutcome.21

// ── eOutcome.01 - ED Disposition ─────────────────────────────
* component[edDisposition].code = $nemsis-encounter-cs#eOutcomeEDDisposition
  * ^short = "eOutcome.01 - ED Disposition"
* component[edDisposition].value[x] only CodeableConcept
* component[edDisposition].valueCodeableConcept MS
* component[edDisposition].valueCodeableConcept from EMSDischargeDispositionVS (required)
  * ^short = "eOutcome.01 - ED Disposition Code (UB-04)"
  * ^comment = "NEMSIS eOutcome.01. Usage: Required/National. NV: NotRecorded. UB-04 patient discharge status codes."

// ── eOutcome.02 - Hospital Discharge Disposition ──────────────
* component[hospitalDisposition].code = $loinc#8656-1
  * ^short = "eOutcome.02 - Hospital Discharge Disposition"
* component[hospitalDisposition].value[x] only CodeableConcept
* component[hospitalDisposition].valueCodeableConcept MS
* component[hospitalDisposition].valueCodeableConcept from EMSDischargeDispositionVS (required)
  * ^short = "eOutcome.02 - Hospital Discharge Disposition Code (UB-04)"
  * ^comment = "NEMSIS eOutcome.02. Usage: Required/National. NV: NotRecorded. UB-04 patient discharge status codes."

// ── eOutcome.09 - ED Procedures ──────────────────────────────
* component[edProcedure].code = $loinc#52830-7
  * ^short = "eOutcome.09 - ED Procedure (ICD-10-PCS)"
* component[edProcedure].value[x] only CodeableConcept
* component[edProcedure].valueCodeableConcept MS
* component[edProcedure].valueCodeableConcept.coding.system = "http://www.cms.gov/Medicare/Coding/ICD10"
  * ^short = "eOutcome.09 - ED Procedure Code (ICD-10-PCS)"
  * ^comment = "NEMSIS eOutcome.09. Usage: Required/National. NV: NotRecorded. ICD-10-PCS procedure code. Repeating (0..M)."

// ── eOutcome.10 - ED Diagnoses ────────────────────────────────
* component[edDiagnosis].code = $loinc#29548-5 "Diagnosis Narrative"
  * ^short = "eOutcome.10 - ED Diagnosis (ICD-10-CM)"
* component[edDiagnosis].value[x] only CodeableConcept
* component[edDiagnosis].valueCodeableConcept MS
* component[edDiagnosis].valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10-cm"
  * ^short = "eOutcome.10 - ED Diagnosis Code (ICD-10-CM)"
  * ^comment = "NEMSIS eOutcome.10. Usage: Required/National. NV: NotRecorded. ICD-10-CM diagnosis code. Repeating (0..M)."

// ── eOutcome.11 - Hospital Admission DateTime ─────────────────
* component[hospitalAdmitDateTime].code = $loinc#52455-3 "Admission date"
  * ^short = "eOutcome.11 - Hospital Admission Date/Time"
* component[hospitalAdmitDateTime].value[x] only dateTime
* component[hospitalAdmitDateTime].valueDateTime MS
  * ^short = "eOutcome.11 - Hospital Admission Date/Time"
  * ^comment = "NEMSIS eOutcome.11. Usage: Required/National. NV: NotRecorded."

// ── eOutcome.12 - Hospital Procedures ────────────────────────
* component[hospitalProcedure].code = $nemsis-encounter-cs#eOutcomeHospitalProcedure
  * ^short = "eOutcome.12 - Hospital Procedure (ICD-10-PCS)"
* component[hospitalProcedure].value[x] only CodeableConcept
* component[hospitalProcedure].valueCodeableConcept MS
* component[hospitalProcedure].valueCodeableConcept.coding.system = "http://www.cms.gov/Medicare/Coding/ICD10"
  * ^short = "eOutcome.12 - Hospital Procedure Code (ICD-10-PCS)"
  * ^comment = "NEMSIS eOutcome.12. Usage: Required/National. NV: NotRecorded. ICD-10-PCS procedure code. Repeating (0..M)."

// ── eOutcome.13 - Hospital Diagnoses ─────────────────────────
* component[hospitalDiagnosis].code = $loinc#29308-4 "Diagnosis"
  * ^short = "eOutcome.13 - Hospital Diagnosis (ICD-10-CM)"
* component[hospitalDiagnosis].value[x] only CodeableConcept
* component[hospitalDiagnosis].valueCodeableConcept MS
* component[hospitalDiagnosis].valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10-cm"
  * ^short = "eOutcome.13 - Hospital Diagnosis Code (ICD-10-CM)"
  * ^comment = "NEMSIS eOutcome.13. Usage: Required/National. NV: NotRecorded. ICD-10-CM diagnosis code. Repeating (0..M)."

// ── eOutcome.16 - Hospital Discharge DateTime ─────────────────
* component[hospitalDischargeDateTime].code = $loinc#8651-2
  * ^short = "eOutcome.16 - Hospital Discharge Date/Time"
* component[hospitalDischargeDateTime].value[x] only dateTime
* component[hospitalDischargeDateTime].valueDateTime MS
  * ^short = "eOutcome.16 - Hospital Discharge Date/Time"
  * ^comment = "NEMSIS eOutcome.16. Usage: Required/National. NV: NotRecorded."

// ── eOutcome.18 - ED Admission DateTime ──────────────────────
* component[edAdmitDateTime].code = $nemsis-encounter-cs#eOutcomeEDArrivalDateTime
  * ^short = "eOutcome.18 - ED Admission Date/Time"
* component[edAdmitDateTime].value[x] only dateTime
* component[edAdmitDateTime].valueDateTime MS
  * ^short = "eOutcome.18 - ED Admission Date/Time"
  * ^comment = "NEMSIS eOutcome.18. Usage: Required/National. NV: NotRecorded."

// ── eOutcome.21 - Injury Severity Score (ISS) ────────────────
* component[injurySeverityScore].code = $nemsis-encounter-cs#eOutcomeInjurySeverityScore
  * ^short = "eOutcome.21 - Injury Severity Score"
* component[injurySeverityScore].value[x] only integer
* component[injurySeverityScore].valueInteger MS
  * ^short = "eOutcome.21 - Injury Severity Score (ISS) integer 1–75"
  * ^comment = "NEMSIS eOutcome.21. Usage: Optional. AIS-based ISS score, range 1–75."
