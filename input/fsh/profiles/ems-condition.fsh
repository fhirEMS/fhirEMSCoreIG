// ============================================================
// EMS Condition
// NEMSIS Sections: eSituation (primary/secondary impression, symptoms),
//                  eHistory (past medical history)
// Derived from: US Core Condition Encounter Diagnosis (6.1.0)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSCondition
Parent: $us-core-condition
Id: ems-condition
Title: "EMS Condition"
Description: """
  Represents clinical conditions documented during an EMS encounter including
  the provider's primary and secondary impressions (eSituation.11/12), primary
  symptom (eSituation.09), and prior medical history (eHistory).
  Derived from US Core Condition Encounter Diagnosis (Version 3.5.1.251001CP2).

  For encounter diagnosis (primary/secondary impression): set category to
  'encounter-diagnosis'. For prior medical history: set category to
  'problem-list-item' or 'health-concern'.
"""

// ── Subject ──────────────────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
  * ^short = "The EMS patient"

// ── eSituation.11/12 - Provider Impression (code) ────────────
* code 1..1 MS
  * ^short = "eSituation.11/12 - Provider's Primary/Secondary Impression"
  * ^comment = """
    NEMSIS eSituation.11 (Provider's Primary Impression, Required/National, NV: NotRecorded/NotApplicable)
    or eSituation.12 (Provider's Secondary Impressions, Required/National, NV: NotRecorded/NotApplicable).
    ProvidersImpression XSD type restricts to ICD-10-CM codes. Use $icd10cm system.
    For primary symptom (eSituation.09) use R-chapter ICD-10-CM codes; for provider
    impression use the full ICD-10-CM range.
  """
* code from http://hl7.org/fhir/us/core/ValueSet/us-core-condition-code (extensible)

// ── Category ─────────────────────────────────────────────────
// US Core condition-encounter-diagnosis requires category:us-core = encounter-diagnosis (1..1).
// This profile is for encounter diagnoses (eSituation primary/secondary impressions).
// For eHistory past medical problems, derive a separate profile from
// us-core-condition-problems-health-concerns.
* category 1..* MS
* category[us-core] 1..1 MS
* category[us-core] = $condition-cat#encounter-diagnosis "Encounter Diagnosis"
  * ^short = "US Core required category: encounter-diagnosis"
  * ^comment = "Required by us-core-condition-encounter-diagnosis. All eSituation.11/12 primary and secondary clinical impressions use this category. For eHistory past medical conditions use a profile derived from us-core-condition-problems-health-concerns."

// ── Clinical Status / Verification Status ────────────────────
// US Core condition-encounter-diagnosis requires MS with required bindings.
* clinicalStatus MS
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical (required)
  * ^comment = "US Core requires required binding to condition-clinical ValueSet. Use 'active' for active impressions, 'resolved' for resolved."
* verificationStatus MS
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status (required)
  * ^comment = "US Core requires required binding to condition-ver-status ValueSet. Use 'confirmed' for documented impressions."

// ── Abatement / Recorded Date (US Core MS) ───────────────────
* abatement[x] MS
  * ^comment = "US Core requires MS. Use when condition resolution date/time is known."
* recordedDate MS
  * ^comment = "US Core requires MS. Date the condition was first recorded in the EMS PCR."

// ── eSituation.01 - Symptom Onset ────────────────────────────
* onset[x] MS
  * ^short = "eSituation.01 - Date/Time of Symptom Onset"
  * ^comment = "NEMSIS eSituation.01. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. PN: UnableToComplete. Use onsetDateTime for known onset; omit for NV/PN."

// ── eSituation.13 - Initial Patient Acuity ───────────────────
// No direct Condition field; document in Observation or Encounter extension.
// Noted here for mapping completeness.

// ── Encounter Reference ──────────────────────────────────────
* encounter MS
* encounter only Reference(EMSEncounter)
  * ^short = "The EMS encounter this condition was identified during"

// ── Recorder / Asserter ──────────────────────────────────────
* recorder MS
* recorder only Reference(EMSPractitioner)
  * ^short = "EMS crew member who documented the condition"
