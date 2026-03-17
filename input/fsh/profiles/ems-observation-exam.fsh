// ============================================================
// EMS Observation — Physical Exam (eExam)
// NEMSIS: eExam section (24 elements)
// Derived from: US Core Observation Clinical Result (6.1.0)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSObservationExam
Parent: $us-core-observation
Id: ems-observation-exam
Title: "EMS Physical Exam Observation"
Description: """
  Physical examination findings Observation derived from US Core
  Observation Clinical Result. Represents NEMSIS eExam section
  assessments (Version 3.5.1.251001CP2).

  One Observation per body region assessment. Use Observation.code
  to identify the body region (LOINC or SNOMED CT when available;
  NEMSIS exam category code otherwise). Use Observation.bodySite
  for location qualifiers (eExam.10, .13, .15, .17, .22, .24).
  Each discrete finding is a component with valueCodeableConcept.
  Multiple findings for the same region → multiple components.

  Applicable NEMSIS elements:
    eExam.01: Estimated Body Weight → valueQuantity (kg)
    eExam.02: Length Tape Measure → valueCodeableConcept from EMSExamLengthTapeMeasureVS
    eExam.03: Date/Time of Assessment → effectiveDateTime
    eExam.04–25: Body region assessments → component.valueCodeableConcept

  All eExam elements are Optional in NEMSIS.
  NV: eExam.01, eExam.02, eExam.21 support NotRecorded / NotApplicable.
  PN: Most body region assessment elements (eExam.04–25) support ExamFindingNotPresent.
"""

// ── Category — required by us-core-observation-clinical-result ─
// US Core requires category 1..* MS. Physical exam findings use category 'exam'.
* category 1..* MS
* category[us-core] = $obs-cat#exam "Exam"
  * ^short = "Observation category: exam"
  * ^comment = "US Core observation-clinical-result requires category 1..*. EMS physical exam findings use 'exam' category. Required for US Core compliance."

// ── eExam.03 - Date/Time of Assessment ───────────────────────
* effective[x] MS
* effective[x] only dateTime
  * ^short = "eExam.03 - Date/Time of Assessment"
  * ^comment = "NEMSIS eExam.03. Usage: Optional. Date/time the physical examination was performed."

// ── Subject / Encounter ───────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
* encounter MS
* encounter only Reference(EMSEncounter)

// ── Observation Code ──────────────────────────────────────────
* code MS
  * ^short = "Body region or finding category being assessed"
  * ^comment = "Use LOINC or SNOMED CT to identify the body region exam. Examples: LOINC 8709-8 (Skin exam), 11396-1 (Head exam), 29546-5 (Lung exam), 10197-4 (Neurological exam), 32618-1 (Neurological exam panel)."

// ── eExam body site location ──────────────────────────────────
// eExam.10 (Abdominal), .13 (Back/Spine), .15 (Extremity),
// .17 (Eye), .22 (Lung), .24 (Chest) — location qualifiers
* bodySite MS
  * ^short = "eExam.10/.13/.15/.17/.22/.24 - Assessment Finding Location"
  * ^comment = "Location qualifier for the assessment finding. Bind to the appropriate EMSExam*LocationVS for each body region."

// ── Assessment Findings (Components) ─────────────────────────
// Multiple findings per body region → multiple components.
// Each component.code identifies the assessment type (use LOINC
// or SNOMED CT when available; NEMSIS cs-nemsis-exam code otherwise).
// component.valueCodeableConcept carries the NEMSIS finding code.
* component MS
  * ^short = "eExam.04–25 - Body Region Assessment Findings"
  * ^comment = "NEMSIS physical exam finding. code identifies the body region/exam type; valueCodeableConcept carries the finding from the appropriate EMSExam*VS ValueSet."
* component.code MS
  * ^comment = "Use LOINC or SNOMED CT to identify the type of examination finding. Examples: LOINC 39106-0 (Skin condition), SNOMED 363681005 (Examination finding)."
* component.value[x] MS
* component.value[x] only CodeableConcept
  * ^comment = "Finding from the appropriate NEMSIS eExam ValueSet (e.g., EMSExamSkinVS, EMSExamHeadVS, etc.)."

// ── value[x] for scalar exam observations ────────────────────
// eExam.01 (Estimated Body Weight) uses valueQuantity;
// eExam.02 (Length Tape Measure) uses valueCodeableConcept;
// For these, use the Observation directly (no component needed).
* value[x] MS
  * ^comment = "For scalar exam findings: eExam.01 → valueQuantity (kg, UCUM system); eExam.02 → valueCodeableConcept from EMSExamLengthTapeMeasureVS; eExam.21 → valueCodeableConcept from EMSExamStrokeSymptomsResolvedVS."

// ── dataAbsentReason ─────────────────────────────────────────
* dataAbsentReason MS
  * ^comment = "NV.NotRecorded → not-asked; NV.NotApplicable → not-applicable. PN.ExamFindingNotPresent → use ext-ems-pertinent-negative."
