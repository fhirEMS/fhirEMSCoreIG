// ============================================================
// EMS Observation — Blood Pressure
// NEMSIS: eVitals.06 (SBP), eVitals.07 (DBP), eVitals.08 (Method)
// Derived from: US Core Blood Pressure (6.1.0)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSObservationBP
Parent: $us-core-bp
Id: ems-observation-bp
Title: "EMS Blood Pressure Observation"
Description: """
  EMS blood pressure panel derived from US Core Blood Pressure.
  Represents NEMSIS eVitals.06 (SBP), eVitals.07 (DBP), and eVitals.08
  (Method of Blood Pressure Measurement). Maps to LOINC 55284-4 (BP panel)
  with SBP component (LOINC 8480-6) and DBP component (LOINC 8462-4).
  NEMSIS Version 3.5.1.251001CP2.
"""

// ── Extensions ───────────────────────────────────────────────
* extension contains
    EMSVitalObtainedPrior named obtainedPrior 0..1 MS and
    EMSBPMethod named bpMethod 0..1 MS

* extension[obtainedPrior]
  * ^short = "eVitals.02 - Obtained Prior to this Unit's EMS Care"
  * ^comment = "NEMSIS eVitals.02. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."

* extension[bpMethod]
  * ^short = "eVitals.08 - Method of Blood Pressure Measurement"
  * ^comment = "NEMSIS eVitals.08. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable."

// ── eVitals.01 - Date/Time ────────────────────────────────────
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^short = "eVitals.01 - Date/Time Vital Signs Taken"
  * ^comment = "NEMSIS eVitals.01. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."

// ── Subject / Encounter ───────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
* encounter MS
* encounter only Reference(EMSEncounter)

// ── Component overall cardinality ─────────────────────────────
// US Core Blood Pressure requires systolic + diastolic → minimum 2 components.
* component 2..* MS
  * ^comment = "US Core Blood Pressure requires at minimum systolic and diastolic components (2..*)."

// ── eVitals.06 - SBP Component ────────────────────────────────
// US Core BP requires component[systolic] 1..1 and component[diastolic] 1..1.
// valueQuantity sub-elements (value, unit, system, code) are all 1..1 per US Core.
* component[systolic] 1..1 MS
  * ^short = "eVitals.06 - SBP (Systolic Blood Pressure)"
  * ^comment = "NEMSIS eVitals.06. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. PN: ExamFindingNotPresent, UnableToComplete, Refused. Unit: mm[Hg] (UCUM). US Core requires this component 1..1."
* component[systolic].code 1..1 MS
  * ^comment = "US Core requires component[systolic].code 1..1 MS. Fixed to LOINC 8480-6 (Systolic blood pressure) by parent profile."
* component[systolic].value[x] only Quantity
* component[systolic].valueQuantity.value 1..1 MS
* component[systolic].valueQuantity.unit 1..1 MS
* component[systolic].valueQuantity.unit = "mmHg"
* component[systolic].valueQuantity.system 1..1 MS
* component[systolic].valueQuantity.code 1..1 MS
* component[systolic].dataAbsentReason MS
  * ^comment = "NV.NotRecorded → not-asked; NV.NotApplicable → not-applicable. PN via ext-ems-pertinent-negative."

// ── eVitals.07 - DBP Component ────────────────────────────────
* component[diastolic] 1..1 MS
  * ^short = "eVitals.07 - DBP (Diastolic Blood Pressure)"
  * ^comment = "NEMSIS eVitals.07. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. PN: ExamFindingNotPresent, UnableToComplete, Refused. Unit: mm[Hg] (UCUM). US Core requires this component 1..1."
* component[diastolic].code 1..1 MS
  * ^comment = "US Core requires component[diastolic].code 1..1 MS. Fixed to LOINC 8462-4 (Diastolic blood pressure) by parent profile."
* component[diastolic].value[x] only Quantity
* component[diastolic].valueQuantity.value 1..1 MS
* component[diastolic].valueQuantity.unit 1..1 MS
* component[diastolic].valueQuantity.unit = "mmHg"
* component[diastolic].valueQuantity.system 1..1 MS
* component[diastolic].valueQuantity.code 1..1 MS
* component[diastolic].dataAbsentReason MS
  * ^comment = "NV.NotRecorded → not-asked; NV.NotApplicable → not-applicable."
