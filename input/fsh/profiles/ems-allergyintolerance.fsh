// ============================================================
// EMS AllergyIntolerance
// NEMSIS: eHistory.06 (Medication Allergies), eHistory.07 (Environmental/Food)
// Derived from: US Core AllergyIntolerance (6.1.0)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSAllergyIntolerance
Parent: $us-core-allergy
Id: ems-allergyintolerance
Title: "EMS AllergyIntolerance"
Description: """
  EMS allergy and intolerance record derived from US Core AllergyIntolerance.
  Represents NEMSIS eHistory.06 (Medication Allergies, Recommended) and
  eHistory.07 (Environmental/Food Allergies, Optional).
  NEMSIS Version 3.5.1.251001CP2.

  eHistory.06 (MedicationAllergies): substance from RxNorm.
  eHistory.07 (Environmental/Food Allergies): substance from SNOMED CT
  (NEMSIS stores SNOMED CT codes directly for eHistory.07).

  NV applies to eHistory.06: NotRecorded → dataAbsentReason#not-asked;
  NotApplicable → dataAbsentReason#not-applicable.
  PN applies to eHistory.06: ExamFindingNotPresent, UnableToComplete
  via ext-ems-pertinent-negative.
"""

// ── Subject / Encounter ───────────────────────────────────────
* patient 1..1 MS
* patient only Reference(EMSPatient)

// ── eHistory.06/.07 - Allergy Substance ──────────────────────
* code 1..1 MS
  * ^short = "eHistory.06/.07 - Allergy Substance"
  * ^comment = "NEMSIS eHistory.06: Medication Allergies (RxNorm). Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. PN: ExamFindingNotPresent, UnableToComplete. NEMSIS eHistory.07: Environmental/Food Allergies (SNOMED CT). Usage: Optional. Substance codes: RxNorm for medications, SNOMED CT for environmental/food. The category element distinguishes medication vs. environmental/food allergies."

// ── Category ──────────────────────────────────────────────────
* category MS
  * ^comment = "Use 'medication' for eHistory.06 (Medication Allergies); use 'environment' or 'food' for eHistory.07 (Environmental/Food Allergies)."

// ── Clinical Status ───────────────────────────────────────────
* clinicalStatus MS
* clinicalStatus from http://hl7.org/fhir/ValueSet/allergyintolerance-clinical (required)
  * ^comment = "US Core requires required binding to allergyintolerance-clinical ValueSet. Use 'active' for current allergies; 'inactive' for historical allergies. Map NV.NotApplicable → omit (nillable element)."

// ── Verification Status ───────────────────────────────────────
* verificationStatus MS
* verificationStatus from http://hl7.org/fhir/ValueSet/allergyintolerance-verification (required)
  * ^comment = "US Core requires required binding to allergyintolerance-verification ValueSet. Use 'confirmed' for documented allergies."

// ── Reaction (US Core MS) ─────────────────────────────────────
* reaction MS
  * ^comment = "US Core requires MS. Populate when allergy reaction details are available."
* reaction.manifestation MS
  * ^comment = "US Core requires MS. Clinical symptoms/signs of the allergy reaction."

// ── Recorder ─────────────────────────────────────────────────
* recorder MS
* recorder only Reference(EMSPractitioner)
  * ^short = "EMS crew member documenting the allergy"
