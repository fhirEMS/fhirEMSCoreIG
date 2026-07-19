// ============================================================
// Profile: EMS Cardiac Arrest Condition
// NEMSIS 3.5.1.251001CP2 — eArrest section (NDR-009)
// Parent: US Core Condition (Encounter Diagnosis)
// ============================================================

Profile: EMSConditionArrest
Id: ems-condition-arrest
Title: "EMS Cardiac Arrest Condition"
Description: "Documents the presence (or absence) of cardiac arrest during an EMS response event. Follows NDR-009: the arrest status, etiology, resuscitation data, ROSC, and outcome are captured in the ext-ems-arrest-context extension. The FHIR Condition.code uses SNOMED CT 410429000 (Cardiac arrest)."
Parent: $us-core-condition

* ^url = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition-arrest"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false

// ── eArrest context extension ─────────────────────────────────
// eArrest.01–22 mapped to ext-ems-arrest-context sub-extensions
* extension contains $ext-ems-arrest-context named arrestContext 0..1 MS
* extension[arrestContext]
  * ^short = "eArrest — Cardiac arrest details (NEMSIS eArrest.01–22)"
  * ^comment = "NDR-009. Complex extension containing all NEMSIS eArrest data elements."

// ── Condition code — SNOMED 410429000 (Cardiac arrest) ────────
* code 1..1 MS
* code = $snomed#410429000 "Cardiac arrest"
  * ^short = "Cardiac arrest (SNOMED 410429000)"
  * ^comment = "NDR-009. Fixed SNOMED CT code identifying this Condition as a cardiac arrest event. Arrest-specific data (eArrest.01 status, eArrest.02 etiology, etc.) is in extension[arrestContext]."

// ── Clinical status ───────────────────────────────────────────
* clinicalStatus 1..1 MS
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical (required)
  * ^short = "Clinical status (active / resolved)"
  * ^comment = "US Core requires required binding to condition-clinical ValueSet. Set to 'active' if arrest is ongoing; 'resolved' if ROSC achieved or patient expired."

// ── Verification status ───────────────────────────────────────
* verificationStatus 1..1 MS
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status (required)
  * ^short = "Verification status (confirmed / differential)"
  * ^comment = "US Core requires required binding to condition-ver-status ValueSet. Use 'confirmed' for a documented cardiac arrest. Use 'entered-in-error' if eArrest.01 = No."

// ── Category — encounter-diagnosis ───────────────────────────
* category 1..* MS
* category[us-core] = $condition-cat#encounter-diagnosis "Encounter Diagnosis"

// ── Subject and encounter ─────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
* encounter MS
* encounter only Reference(EMSEncounter)

// ── Onset — eArrest.14 Date/Time of Cardiac Arrest ───────────
* onset[x] MS
* onsetDateTime MS
  * ^short = "eArrest.14 - Date/Time of Cardiac Arrest"
  * ^comment = "NEMSIS eArrest.14. Usage: Required/National. Nillable. NV: NotRecorded. PN: ExamFindingNotPresent, UnableToComplete. Also captured in extension[arrestContext].arrestDateTime."

// ── Abatement / Recorded Date (US Core MS) ───────────────────
* abatement[x] MS
  * ^comment = "US Core requires MS. Use when arrest resolved (ROSC or patient expired)."
* recordedDate MS
  * ^comment = "US Core requires MS. Date the cardiac arrest condition was first recorded."

// ── Recorder ─────────────────────────────────────────────────
* recorder MS
* recorder only Reference(EMSPractitioner)
