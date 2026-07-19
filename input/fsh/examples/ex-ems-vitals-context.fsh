// ============================================================
// Examples: EMS Vitals Context Extensions
// ECG rhythm, pain score, and stroke scale observations
// demonstrating ext-ems-ecg-context, ext-ems-pain-scale-type,
// and ext-ems-stroke-scale-context (+ NDR-002 PN pattern)
// NEMSIS eVitals.03-.05, .26-.30, .34
// ============================================================

// ── ECG Rhythm (eVitals.03) with ECG Context ─────────────────
Instance: ex-ems-ecg-rhythm
InstanceOf: Observation
Title: "Example EMS ECG Rhythm Observation"
Description: "Cardiac rhythm observation (eVitals.03) demonstrating the ext-ems-ecg-context extension: sinus tachycardia on a 12-lead ECG with computer interpretation."
Usage: #example

* status = #final
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding[0].code = #vital-signs
* code.text = "Cardiac Rhythm / Electrocardiography (eVitals.03)"
* effectiveDateTime = "2026-03-14T14:38:00-08:00"
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)
* valueCodeableConcept = $nemsis-vitals#9901049 "Sinus Tachycardia"

// eVitals.04/.05 - ECG Type and Interpretation Method
* extension[EMSECGContext].extension[ecgType].valueCodeableConcept
    = $nemsis-vitals#3304007 "12 Lead-Left Sided (Normal)"
* extension[EMSECGContext].extension[ecgMethod].valueCodeableConcept
    = $nemsis-vitals#3305001 "Computer Interpretation"

// ── Pain Score (eVitals.26) with Pain Scale Type ─────────────
Instance: ex-ems-pain-score
InstanceOf: Observation
Title: "Example EMS Pain Score Observation"
Description: "Pain severity score (eVitals.26, LOINC 72514-3) demonstrating the ext-ems-pain-scale-type extension: 7/10 on the numeric scale."
Usage: #example

* status = #final
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding[0].code = #vital-signs
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #72514-3
* code.coding[0].display = "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* effectiveDateTime = "2026-03-14T14:39:00-08:00"
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)
* valueInteger = 7

// eVitals.27 - Pain Scale Type
* extension[EMSPainScaleType].valueCodeableConcept
    = $nemsis-vitals#3328003 "Numeric (0-10)"

// ── Stroke Scale (eVitals.29) with Stroke Scale Context ──────
Instance: ex-ems-stroke-scale
InstanceOf: Observation
Title: "Example EMS Stroke Scale Observation"
Description: "Stroke scale result (eVitals.29) demonstrating the ext-ems-stroke-scale-context extension and the NDR-002 pertinent negative pattern: CPSS negative (stroke findings not present)."
Usage: #example

* status = #final
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding[0].code = #exam
* code.text = "Stroke Scale Result (eVitals.29)"
* effectiveDateTime = "2026-03-14T14:40:00-08:00"
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)

// Negative result with NDR-002 pertinent negative on the value
* valueCodeableConcept = $nemsis-vitals#3329001 "Negative"
* valueCodeableConcept.extension[EMSPertinentNegative].valueCodeableConcept
    = $nemsis-pn#PN.ExamFindingNotPresent "Exam Finding Not Present"

// eVitals.30/.34 - Stroke Scale Type and Score
* extension[EMSStrokeScaleContext].extension[scaleType].valueCodeableConcept
    = $nemsis-vitals#3330001 "Cincinnati Prehospital Stroke Scale (CPSS)"
* extension[EMSStrokeScaleContext].extension[scaleScore].valueDecimal = 0
