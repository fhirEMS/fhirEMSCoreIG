// ============================================================
// EMS Observation — Glasgow Coma Score (GCS Panel)
// NEMSIS: eVitals.19 (Eye), eVitals.20 (Verbal), eVitals.21 (Motor),
//         eVitals.22 (Qualifier), eVitals.23 (Total)
// Derived from: US Core Observation Clinical Result (6.1.0)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSObservationGCS
Parent: $us-core-observation
Id: ems-observation-gcs
Title: "EMS Glasgow Coma Score (GCS) Panel"
Description: """
  GCS panel Observation derived from US Core Observation Clinical Result.
  Represents NEMSIS eVitals.19 (Eye), eVitals.20 (Verbal), eVitals.21 (Motor),
  eVitals.22 (Qualifier), and eVitals.23 (Total GCS).

  Pattern (NDR per CLAUDE.md): parent GCS panel (LOINC 9269-2) with three
  hasMember references to individual Eye/Verbal/Motor sub-Observations, plus
  a qualifier component. Sub-observations use this same profile.

  LOINC codes: Total=9269-2, Eye=9267-6, Verbal=9268-4, Motor=9266-8.
  GCS scores are integers: Eye 1–4, Verbal 1–5, Motor 1–6.
  NEMSIS Version 3.5.1.251001CP2.
"""

// ── Extensions ───────────────────────────────────────────────
* extension contains EMSVitalObtainedPrior named obtainedPrior 0..1 MS
  * ^short = "eVitals.02 - Obtained Prior to this Unit's EMS Care"

// ── Fixed code: GCS Total panel ──────────────────────────────
// When used as the panel (parent), code = LOINC 9269-2
// When used as a sub-Observation (Eye/Verbal/Motor), override code accordingly
* code MS
  * ^short = "LOINC code identifying the GCS component or panel"
  * ^comment = "Panel: 9269-2 (GCS total). Sub-observations: Eye=9267-6, Verbal=9268-4, Motor=9266-8."

// ── Category — required by us-core-observation-clinical-result ─
* category 1..* MS
* category[us-core] = $obs-cat#exam "Exam"
  * ^comment = "US Core requires category 1..*. GCS is a neurological physical examination finding; 'exam' category is used (per us-core-clinical-result-observation-category VS)."

// ── eVitals.01 - Date/Time ────────────────────────────────────
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^short = "eVitals.01 - Date/Time Vital Signs Taken"

// ── Subject / Encounter ───────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
* encounter MS
* encounter only Reference(EMSEncounter)

// ── eVitals.19/20/21 - hasMember (Eye, Verbal, Motor) ────────
* hasMember MS
* hasMember only Reference(EMSObservationGCS)
  * ^short = "eVitals.19/20/21 - GCS Eye, Verbal, Motor sub-observations"
  * ^comment = "On the panel Observation: reference three sub-Observations (Eye LOINC 9267-6, Verbal 9268-4, Motor 9266-8). Each sub-Observation carries an integer valueInteger."

// ── eVitals.19/20/21 - value (for sub-observations) ──────────
* value[x] MS
* value[x] only integer
  * ^short = "eVitals.19/20/21 - GCS component integer score"
  * ^comment = "NEMSIS eVitals.19 (Eye, 1–4), eVitals.20 (Verbal, 1–5), eVitals.21 (Motor, 1–6). On panel Observation, use component for qualifier instead."

* dataAbsentReason MS
  * ^comment = "NV.NotRecorded → not-asked; NV.NotApplicable → not-applicable. NV applies to all GCS elements."

// ── eVitals.22 - GCS Qualifier ────────────────────────────────
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains gcsQualifier 0..* MS

* component[gcsQualifier]
  * ^short = "eVitals.22 - GCS Qualifier"
  * ^comment = "NEMSIS eVitals.22. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Repeating (1..M). Documents conditions affecting GCS validity (intubation, sedation, paralysis, eye obstruction)."
  * code = $loinc#55285-1 "Glasgow coma score special circumstances"
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSGCSQualifierVS (required)
