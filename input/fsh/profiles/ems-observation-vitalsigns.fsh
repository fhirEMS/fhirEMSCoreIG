// ============================================================
// EMS Observation — Vital Signs (Parent Profile)
// NEMSIS Section: eVitals
// Derived from: US Core Vital Signs (6.1.0)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSObservationVitalSigns
Parent: $us-core-vitals
Id: ems-observation-vitalsigns
Title: "EMS Vital Signs Observation"
Description: """
  Parent profile for all EMS vital sign observations. Derived from US Core Vital Signs.
  Covers NEMSIS eVitals section (Version 3.5.1.251001CP2). Each vital sign set in
  NEMSIS (VitalGroup) produces one Observation per element per group (NDR-007).

  Use this profile directly for: Heart Rate (eVitals.10), Respiratory Rate (eVitals.14),
  Pulse Oximetry (eVitals.12), Body Temperature (eVitals.24), Blood Glucose (eVitals.18),
  ETCO2 (eVitals.16), Carbon Monoxide (eVitals.17), AVPU (eVitals.26), Pain Score
  (eVitals.27), Cardiac Rhythm (eVitals.03), Stroke Scale (eVitals.29), Reperfusion
  Checklist (eVitals.31), Pulse Rhythm (eVitals.13), Respiratory Effort (eVitals.15).

  Use EMSObservationBP for Blood Pressure (eVitals.06/07 — component panel).
  Use EMSObservationGCS for Glasgow Coma Score (eVitals.19–23 — hasMember panel).

  LOINC codes for each vital element (from CLAUDE.md terminology strategy):
    HR:          8867-4     SpO2:       59408-5    Resp Rate:   9279-1
    SBP (comp):  8480-6     DBP (comp): 8462-4     Temp:        8310-5
    ETCO2:       19889-5    BG:         59469-7    Weight:      29463-7
    AVPU:        67775-7    Pain:       72514-3    GCS Total:   9269-2
    GCS Eye:     9267-6     GCS Verbal: 9268-4     GCS Motor:   9266-8
"""

// ── Extensions ───────────────────────────────────────────────
* extension contains EMSVitalObtainedPrior named obtainedPrior 0..1 MS
  * ^short = "eVitals.02 - Obtained Prior to this Unit's EMS Care"
  * ^comment = "NEMSIS eVitals.02. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Flags whether this vital was obtained by a prior provider."

// ── Category — inherited from us-core-vital-signs ────────────
// US Core vital-signs requires category 1..* with VSCat slice (vital-signs) 1..1 MS.
// Explicitly declared here for conformance clarity. The VSCat slice is fixed by
// the parent profile; child profiles must not remove it.
* category 1..* MS
  * ^comment = "US Core vital-signs requires category:VSCat = vital-signs (1..1). Inherited from us-core-vital-signs. All EMS vital sign observations must carry this category."
* category[VSCat] 1..1 MS
* category[VSCat] = $obs-cat#vital-signs "Vital Signs"
  * ^comment = "US Core vital-signs requires this slice fixed to vital-signs (1..1 MS). Re-declared here for conformance clarity."

// ── eVitals.01 - Date/Time Vital Signs Taken ─────────────────
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^short = "eVitals.01 - Date/Time Vital Signs Taken"
  * ^comment = "NEMSIS eVitals.01. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. The date/time this vital sign set was obtained."

// ── Subject ──────────────────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)

// ── Encounter ────────────────────────────────────────────────
* encounter MS
* encounter only Reference(EMSEncounter)
  * ^short = "The EMS encounter this vital was collected during"

// ── Performer ────────────────────────────────────────────────
* performer MS
* performer only Reference(EMSPractitioner)
  * ^short = "EMS crew member who obtained the vital sign"

// ── Status ───────────────────────────────────────────────────
* status MS
* status = #final
  * ^short = "Vital sign status — final for completed assessments"

// ── value[x] / dataAbsentReason ──────────────────────────────
// NV mapping: NotRecorded → dataAbsentReason#not-asked
//             NotApplicable → dataAbsentReason#not-applicable
// PN on numeric vitals: use ext-ems-pertinent-negative extension
* dataAbsentReason MS
  * ^short = "NV code when vital was not recorded or not applicable"
  * ^comment = "NEMSIS NV pattern per NDR-001. NV.NotRecorded → not-asked; NV.NotApplicable → not-applicable."
