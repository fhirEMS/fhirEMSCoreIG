// ============================================================
// fhirEMSCore Vital Signs Extensions
// NEMSIS 3.5.1.251001CP2 — eVitals section
// ============================================================

// ── Extension: EMS Vital Obtained Prior to EMS Care ──────────
// NEMSIS: eVitals.02 - Obtained Prior to this Unit's EMS Care (Required/National)
Extension: EMSVitalObtainedPrior
Id: ext-ems-vital-obtained-prior
Title: "EMS Vital Obtained Prior to EMS Care"
Description: "NEMSIS eVitals.02 - Whether this vital sign set was obtained by another provider prior to this EMS unit's care. Required/National. Nillable. NV: NotRecorded, NotApplicable."
Context: Observation
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/yesnodontknow (extensible)

// ── Extension: EMS ECG Context ───────────────────────────────
// NEMSIS: eVitals.04 (ECG Type) + eVitals.05 (Method of ECG Interpretation)
// Both Required/National. Used on cardiac rhythm Observations.
Extension: EMSECGContext
Id: ext-ems-ecg-context
Title: "EMS ECG Context"
Description: "NEMSIS eVitals.04 (ECG Type) and eVitals.05 (Method of ECG Interpretation). Both Required/National. Nillable. NV: NotRecorded, NotApplicable."
Context: Observation
* extension contains
    ecgType   1..1 MS and
    ecgMethod 1..1 MS

* extension[ecgType]
  * ^short = "eVitals.04 - ECG Type"
  * ^comment = "NEMSIS eVitals.04. Usage: Required/National. The number of leads used for ECG acquisition."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSECGTypeVS (required)

* extension[ecgMethod]
  * ^short = "eVitals.05 - Method of ECG Interpretation"
  * ^comment = "NEMSIS eVitals.05. Usage: Required/National. How the ECG was interpreted."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSECGMethodVS (required)

// ── Extension: EMS BP Method ──────────────────────────────────
// NEMSIS: eVitals.08 - Method of Blood Pressure Measurement (Recommended)
Extension: EMSBPMethod
Id: ext-ems-bp-method
Title: "EMS Blood Pressure Measurement Method"
Description: "NEMSIS eVitals.08 - The technique used to obtain the blood pressure measurement. Recommended. Nillable. NV: NotRecorded, NotApplicable."
Context: Observation
* value[x] only CodeableConcept
* valueCodeableConcept from EMSBPMethodVS (required)

// ── Extension: EMS Stroke Scale Context ──────────────────────
// NEMSIS: eVitals.30 (Stroke Scale Type) + eVitals.34 (Stroke Scale Score)
// Both accompany eVitals.29 (Stroke Scale Result).
Extension: EMSStrokeScaleContext
Id: ext-ems-stroke-scale-context
Title: "EMS Stroke Scale Context"
Description: "NEMSIS eVitals.30 (Stroke Scale Type, Required/National) and eVitals.34 (Stroke Scale Score, Recommended). Used alongside the stroke scale result Observation."
Context: Observation
* extension contains
    scaleType  1..1 MS and
    scaleScore 0..1 MS

* extension[scaleType]
  * ^short = "eVitals.30 - Stroke Scale Type"
  * ^comment = "NEMSIS eVitals.30. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSStrokeScaleTypeVS (required)

* extension[scaleScore]
  * ^short = "eVitals.34 - Stroke Scale Score"
  * ^comment = "NEMSIS eVitals.34. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. Numeric score on the selected stroke scale."
  * value[x] only decimal

// ── Extension: EMS Pain Scale Type ───────────────────────────
// NEMSIS: eVitals.28 - Pain Scale Type (Recommended)
Extension: EMSPainScaleType
Id: ext-ems-pain-scale-type
Title: "EMS Pain Scale Type"
Description: "NEMSIS eVitals.28 - The pain assessment tool used. Recommended. Nillable. NV: NotRecorded, NotApplicable."
Context: Observation
* value[x] only CodeableConcept
* valueCodeableConcept from EMSPainScaleTypeVS (required)
