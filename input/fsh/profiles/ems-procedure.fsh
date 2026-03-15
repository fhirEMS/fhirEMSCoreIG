// ============================================================
// EMS Procedure
// NEMSIS: eProcedures section (15 elements)
// Derived from: US Core Procedure (6.1.0)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSProcedure
Parent: $us-core-procedure
Id: ems-procedure
Title: "EMS Procedure"
Description: """
  EMS procedure derived from US Core Procedure. Represents the NEMSIS
  eProcedures section (Version 3.5.1.251001CP2). Each procedure in a
  NEMSIS ProcedureGroup maps to one FHIR Procedure resource.

  eProcedures.03 uses SNOMED CT codes (direct pass-through from NEMSIS).
  Complications (eProcedures.07) map to Procedure.complication.
  Outcome/success (eProcedures.06) maps to Procedure.outcome.
  Vascular access site (eProcedures.13) maps to Procedure.bodySite.
  Additional NEMSIS context (prior EMS care, attempt count, response,
  authorization, airway technique, by-another-unit) is carried in
  the EMSProcedureContext extension.
"""

// ── Extension ─────────────────────────────────────────────────
* extension contains EMSProcedureContext named procedureContext 0..1 MS
  * ^short = "eProcedures.02/05/08/11/14/15 - EMS Procedure Context"
  * ^comment = "Carries NEMSIS eProcedures elements not representable in base FHIR Procedure: priorEMSCare (.02), numberOfAttempts (.05), response (.08), authorization (.11), airwayTechnique (.14), byAnotherUnit (.15)."

// ── eVitals.01-equivalent: Date/Time ─────────────────────────
// eProcedures.01 - Date/Time Procedure Performed (Required/National)
* performed[x] 1..1 MS
* performed[x] only dateTime
  * ^short = "eProcedures.01 - Date/Time Procedure Performed"
  * ^comment = "NEMSIS eProcedures.01. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."

// ── eProcedures.03 - Procedure Code ──────────────────────────
// NEMSIS uses SNOMED CT codes directly for eProcedures.03
* code 1..1 MS
* code from http://hl7.org/fhir/us/core/ValueSet/us-core-procedure-code (extensible)
  * ^short = "eProcedures.03 - Procedure (SNOMED CT)"
  * ^comment = "NEMSIS eProcedures.03. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. PN: ExamFindingNotPresent, UnableToComplete. NEMSIS stores SNOMED CT codes directly — map to code.coding with system http://snomed.info/sct. US Core extensible binding to us-core-procedure-code ValueSet."

// ── Subject / Encounter ───────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
* encounter MS
* encounter only Reference(EMSEncounter)
  * ^short = "The EMS encounter during which this procedure was performed"

// ── eProcedures.06 - Procedure Successful ────────────────────
// Maps to Procedure.outcome (success/failure)
* outcome MS
  * ^short = "eProcedures.06 - Procedure Successful"
  * ^comment = "NEMSIS eProcedures.06. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Maps to outcome: successful → outcome code indicating success; unsuccessful → failure code."

// ── eProcedures.07 - Procedure Complication ──────────────────
* complication MS
* complication from EMSProcedureComplicationVS (required)
  * ^short = "eProcedures.07 - Procedure Complication"
  * ^comment = "NEMSIS eProcedures.07. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Repeating (1..M). Adverse events occurring with the procedure."

// ── eProcedures.09/10 - Performer ────────────────────────────
* performer MS
* performer.actor only Reference(EMSPractitioner)
  * ^short = "eProcedures.09 - Procedure Crew Member ID"
* performer.function MS
* performer.function from EMSCaregiverLevelVS (required)
  * ^short = "eProcedures.10 - Role/Type of Person Performing the Procedure"
  * ^comment = "NEMSIS eProcedures.10. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."

// ── eProcedures.12 - Authorizing Physician ────────────────────
// A second performer entry can carry eProcedures.12 as a Reference to Practitioner
// No separate constraint required; performer is 0..* in base

// ── eProcedures.13 - Vascular Access Location ─────────────────
* bodySite MS
* bodySite from EMSVascularAccessLocationVS (required)
  * ^short = "eProcedures.13 - Vascular Access Location"
  * ^comment = "NEMSIS eProcedures.13. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. Anatomical site of vascular access."

// ── Status / NV ───────────────────────────────────────────────
* status MS
* status from http://hl7.org/fhir/ValueSet/event-status (required)
  * ^comment = "US Core (inherited from FHIR R4) requires required binding to event-status ValueSet. Use 'completed' for successfully performed procedures. Use 'not-done' + statusReason for NV (NotRecorded → dataAbsentReason not-asked pattern)."
