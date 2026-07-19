// ============================================================
// Profile: EMS Condition — Problems / Past Medical History
// NEMSIS 3.5.1.251001CP2 — eHistory section
// Parent: US Core Condition (Problems and Health Concerns)
// ============================================================

Profile: EMSConditionProblems
Id: ems-condition-problems
Title: "EMS Condition — Past Medical History"
Description: "Documents the patient's pre-existing medical/surgical history (eHistory.08) as reported during an EMS response. Condition.code carries the ICD-10-CM history code; advance directives, history source, immunizations, alcohol/drug indicators, pregnancy, and last oral intake are captured in the ext-ems-history-context extension. Create one resource per reported condition."
Parent: $us-core-condition-ph

* ^url = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition-problems"
* ^version = "0.2.0"
* ^status = #active
* ^experimental = false

// ── eHistory context extension ────────────────────────────────
* extension contains $ext-ems-history-context named historyContext 0..1 MS
* extension[historyContext]
  * ^short = "eHistory — Patient history context (NEMSIS eHistory.02–.05, .09–.11, .16–.19)"
  * ^comment = "Complex extension carrying patient-level history data reported with the medical/surgical history. When multiple EMSConditionProblems resources exist for one encounter, populate the context on one of them (or repeat identically)."

// ── Condition code — eHistory.08 Medical/Surgical History ────
* code 1..1 MS
  * ^short = "eHistory.08 - Medical/Surgical History (ICD-10-CM)"
  * ^comment = "NEMSIS eHistory.08. Usage: Recommended. Nillable. NV: NotRecorded. PN: DeniesSymptom (patient denies medical history). NEMSIS uses ICD-10-CM codes; use $icd10cm codings within the inherited US Core condition-code binding. NEMSIS allows multiple history entries (0..M) — one EMSConditionProblems resource per condition."

// ── Clinical status ───────────────────────────────────────────
* clinicalStatus MS
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical (required)
  * ^short = "Clinical status (active for ongoing conditions)"
  * ^comment = "Pre-existing history reported to EMS is typically 'active'; use 'inactive' or 'resolved' when the patient reports a resolved condition."

// ── Verification status ───────────────────────────────────────
* verificationStatus MS
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status (required)
  * ^short = "Verification status (unconfirmed for patient-reported history)"
  * ^comment = "History obtained in the field is typically patient- or family-reported; 'unconfirmed' is appropriate unless documentation is available."

// ── Category — problem-list-item ─────────────────────────────
* category 1..* MS
* category[us-core] = $condition-cat#problem-list-item "Problem List Item"

// ── Subject and encounter ─────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
* encounter MS
* encounter only Reference(EMSEncounter)

// ── Recorded Date (US Core MS) ───────────────────────────────
* recordedDate MS
  * ^comment = "US Core requires MS. Date the history was recorded by EMS."

// ── Recorder ─────────────────────────────────────────────────
* recorder MS
* recorder only Reference(EMSPractitioner)
