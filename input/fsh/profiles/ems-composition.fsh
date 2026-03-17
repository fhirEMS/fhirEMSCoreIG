// ============================================================
// EMS Composition (Patient Care Report - PCR)
// NEMSIS: eRecord + overall PCR document structure
// Derived from: FHIR R4 Composition (no US Core profile)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSComposition
Parent: Composition
Id: ems-composition
Title: "EMS Patient Care Report (PCR)"
Description: """
  Represents an EMS Patient Care Report (PCR) as a FHIR Composition.
  This is the root document that ties together all sections of an EMS
  call. Based on NEMSIS eRecord and overall PCR structure
  (Version 3.5.1.251001CP2).

  Section codes: Standard LOINC codes are used where a clear analog
  exists. NEMSIS-specific section codes (nemsis-codes#section-*) are
  used for EMS-only sections without a well-matched LOINC code.

  Mandatory NEMSIS sections (1..1): eResponse, eTimes, ePatient,
  eScene, eSituation, eDisposition.
  Optional NEMSIS sections (0..1 or 0..*): eHistory, eVitals,
  eProcedures, eMedications, eExam, eAirway, eArrest, eNarrative.
"""

// ── eRecord.01 - PCR Record Number ───────────────────────────
* identifier 1..1 MS
  * ^short = "eRecord.01 - PCR Record Number"
  * ^comment = "NEMSIS eRecord.01. Usage: Required/National. The unique identifier for this Patient Care Report. Must be globally unique."
* identifier.system 1..1 MS
* identifier.value 1..1 MS

// ── Status ───────────────────────────────────────────────────
* status MS
* status = #final

// ── Document Type ─────────────────────────────────────────────
* type MS
* type = $loinc#67796-3 "EMS patient care report - version 3 Document NEMSIS"
  * ^short = "PCR document type (LOINC 67796-3)"

// ── Subject ───────────────────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
  * ^short = "ePatient — the patient"

// ── Encounter ─────────────────────────────────────────────────
* encounter 1..1 MS
* encounter only Reference(EMSEncounter)
  * ^short = "The EMS Encounter (eResponse)"

// ── Date / Author ─────────────────────────────────────────────
* date MS
  * ^short = "PCR creation date/time"
* author 1..* MS
* author only Reference(EMSPractitioner or EMSOrganization)
  * ^short = "Crew member(s) who authored the PCR (eCrew)"
* title MS
* title = "EMS Patient Care Report"

// ── Sections ──────────────────────────────────────────────────
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "PCR sections corresponding to NEMSIS dataset sections"

* section contains
    eResponse    1..1 MS and
    eTimes       1..1 MS and
    ePatient     1..1 MS and
    eScene       1..1 MS and
    eSituation   1..1 MS and
    eHistory     0..1 MS and
    eVitals      0..* MS and
    eExam        0..1 MS and
    eProcedures  0..* MS and
    eMedications 0..* MS and
    eAirway      0..1 MS and
    eArrest      0..1 MS and
    eNarrative   0..1 MS and
    eDisposition 1..1 MS

// ── eResponse Section ─────────────────────────────────────────
* section[eResponse]
  * code = $nemsis-cs#section-eResponse "EMS Response"
  * title = "EMS Response"
  * ^short = "NEMSIS eResponse section — response type, unit, times"
  * ^comment = "Contains references to the EMSEncounter (eResponse) resource and related response data."

// ── eTimes Section ────────────────────────────────────────────
* section[eTimes]
  * code = $nemsis-cs#section-eTimes "EMS Times"
  * title = "EMS Times"
  * ^short = "NEMSIS eTimes section — all 19 EMS timestamps"
  * ^comment = "Times data is carried primarily in the EMSTimes extension on EMSEncounter. This section references the Encounter."

// ── ePatient Section ──────────────────────────────────────────
* section[ePatient]
  * code = $loinc#29762-2 "Social history note"
  * title = "Patient Demographics"
  * ^short = "NEMSIS ePatient section — patient demographics"
  * ^comment = "Contains references to EMSPatient resources."

// ── eScene Section ────────────────────────────────────────────
* section[eScene]
  * code = $nemsis-cs#section-eScene "EMS Scene"
  * title = "Scene Information"
  * ^short = "NEMSIS eScene section — incident location, MCI, first unit on scene"
  * ^comment = "Contains references to EMSLocationScene resources."

// ── eSituation Section ────────────────────────────────────────
* section[eSituation]
  * code = $loinc#55110-1 "Conclusions [Interpretation] Document"
  * title = "Patient Situation"
  * ^short = "NEMSIS eSituation section — chief complaint, primary/secondary impressions"
  * ^comment = "Contains references to EMSCondition resources for chief complaint and impressions."

// ── eHistory Section ──────────────────────────────────────────
* section[eHistory]
  * code = $loinc#11348-0 "History of Past illness note"
  * title = "Patient History"
  * ^short = "NEMSIS eHistory section — medical/surgical history, medications, allergies"
  * ^comment = "Contains references to EMSCondition (medical history), EMSAllergyIntolerance, and NEMSIS barrier-to-care observations."

// ── eVitals Section ───────────────────────────────────────────
* section[eVitals]
  * code = $loinc#8716-3 "Vital signs note"
  * title = "Vital Signs"
  * ^short = "NEMSIS eVitals section — each VitalGroup becomes one entry per vital sign Observation"
  * ^comment = "Contains references to EMSObservationVitalSigns, EMSObservationBP, and EMSObservationGCS. Multiple VitalGroups → multiple entries (NDR-007)."

// ── eExam Section ─────────────────────────────────────────────
* section[eExam]
  * code = $nemsis-cs#section-eExam "EMS Physical Exam"
  * title = "Physical Exam"
  * ^short = "NEMSIS eExam section — body region physical examination findings"
  * ^comment = "Contains references to EMSObservationExam resources."

// ── eProcedures Section ───────────────────────────────────────
* section[eProcedures]
  * code = $loinc#29554-3 "Procedure Narrative"
  * title = "Procedures Performed"
  * ^short = "NEMSIS eProcedures section — EMS procedures performed"
  * ^comment = "Contains references to EMSProcedure resources. Multiple ProcedureGroups → multiple entries."

// ── eMedications Section ──────────────────────────────────────
* section[eMedications]
  * code = $loinc#29549-3 "Medication administered Narrative"
  * title = "Medications Administered"
  * ^short = "NEMSIS eMedications section — medications administered"
  * ^comment = "Contains references to EMSMedicationAdministration resources."

// ── eAirway Section ───────────────────────────────────────────
* section[eAirway]
  * code = $nemsis-cs#section-eAirway "EMS Airway Management"
  * title = "Airway Management"
  * ^short = "NEMSIS eAirway section — airway device, confirmation methods"
  * ^comment = "eAirway elements map primarily to Procedure resources with airway-specific codes."

// ── eArrest Section ───────────────────────────────────────────
* section[eArrest]
  * code = $nemsis-cs#section-eArrest "EMS Cardiac Arrest"
  * title = "Cardiac Arrest"
  * ^short = "NEMSIS eArrest section — cardiac arrest data (NDR-009)"
  * ^comment = "Contains references to Condition (SNOMED 410429000) and cardiac arrest Observation resources per NDR-009."

// ── eNarrative Section ────────────────────────────────────────
* section[eNarrative]
  * code = $loinc#67781-5 "Summarization of encounter note"
  * title = "PCR Narrative"
  * ^short = "NEMSIS eNarrative section — free-text clinical narrative"
  * ^comment = "NEMSIS eNarrative.01 - The free-text narrative of the EMS call. Carried as section.text."

// ── eDisposition Section ──────────────────────────────────────
* section[eDisposition]
  * code = $loinc#18776-5 "Plan of care note"
  * title = "Patient Disposition"
  * ^short = "NEMSIS eDisposition section — transport, destination, patient outcome"
  * ^comment = "References EMSEncounter.hospitalization and EMSLocationDestination."
