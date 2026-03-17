// ============================================================
// EMS Vital Signs ValueSets
// NEMSIS eVitals section
// ============================================================

// ── EMSCardiacRhythmVS ────────────────────────────────────────
// NEMSIS: eVitals.03 - Cardiac Rhythm / ECG (Required/National)
ValueSet: EMSCardiacRhythmVS
Id: vs-ems-cardiac-rhythm
Title: "EMS Cardiac Rhythm"
Description: "NEMSIS eVitals.03 - Cardiac rhythm or ECG interpretation."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-cardiac-rhythm"
* ^status = #active
* ^experimental = true
* $nemsis-vitals#9901001 "Agonal/Idioventricular"
* $nemsis-vitals#9901003 "Asystole"
* $nemsis-vitals#9901005 "Artifact"
* $nemsis-vitals#9901007 "Atrial Fibrillation"
* $nemsis-vitals#9901009 "Atrial Flutter"
* $nemsis-vitals#9901011 "AV Block-1st Degree"
* $nemsis-vitals#9901013 "AV Block-2nd Degree-Type 1"
* $nemsis-vitals#9901015 "AV Block-2nd Degree-Type 2"
* $nemsis-vitals#9901017 "AV Block-3rd Degree"
* $nemsis-vitals#9901019 "Junctional"
* $nemsis-vitals#9901021 "Left Bundle Branch Block"
* $nemsis-vitals#9901023 "Non-STEMI Anterior Ischemia"
* $nemsis-vitals#9901025 "Non-STEMI Inferior Ischemia"
* $nemsis-vitals#9901027 "Non-STEMI Lateral Ischemia"
* $nemsis-vitals#9901029 "Non-STEMI Posterior Ischemia"
* $nemsis-vitals#9901030 "Non-STEMI Septal Ischemia"
* $nemsis-vitals#9901031 "Other"
* $nemsis-vitals#9901033 "Paced Rhythm"
* $nemsis-vitals#9901035 "PEA"
* $nemsis-vitals#9901037 "Premature Atrial Contractions"
* $nemsis-vitals#9901039 "Premature Ventricular Contractions"
* $nemsis-vitals#9901041 "Right Bundle Branch Block"
* $nemsis-vitals#9901043 "Sinus Arrhythmia"
* $nemsis-vitals#9901045 "Sinus Bradycardia"
* $nemsis-vitals#9901047 "Sinus Rhythm"
* $nemsis-vitals#9901049 "Sinus Tachycardia"
* $nemsis-vitals#9901051 "STEMI Anterior Ischemia"
* $nemsis-vitals#9901053 "STEMI Inferior Ischemia"
* $nemsis-vitals#9901055 "STEMI Lateral Ischemia"
* $nemsis-vitals#9901057 "STEMI Posterior Ischemia"
* $nemsis-vitals#9901058 "STEMI Septal Ischemia"
* $nemsis-vitals#9901059 "Supraventricular Tachycardia"
* $nemsis-vitals#9901061 "Torsades De Points"
* $nemsis-vitals#9901063 "Unknown AED Non-Shockable Rhythm"
* $nemsis-vitals#9901065 "Unknown AED Shockable Rhythm"
* $nemsis-vitals#9901067 "Ventricular Fibrillation"
* $nemsis-vitals#9901069 "Ventricular Tachycardia (With Pulse)"
* $nemsis-vitals#9901071 "Ventricular Tachycardia (Pulseless)"

// ── EMSECGTypeVS ──────────────────────────────────────────────
// NEMSIS: eVitals.04 - ECG Type (Required/National)
ValueSet: EMSECGTypeVS
Id: vs-ems-ecg-type
Title: "EMS ECG Type"
Description: "NEMSIS eVitals.04 - The number of leads used for ECG acquisition."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-ecg-type"
* ^status = #active
* ^experimental = true
* $nemsis-vitals#3304000 "2 Lead ECG (pads or paddles)"
* $nemsis-vitals#3304001 "3 Lead"
* $nemsis-vitals#3304003 "4 Lead"
* $nemsis-vitals#3304005 "5 Lead"
* $nemsis-vitals#3304007 "12 Lead-Left Sided (Normal)"
* $nemsis-vitals#3304009 "12 Lead-Right Sided"
* $nemsis-vitals#3304011 "15 Lead"
* $nemsis-vitals#3304013 "18 Lead"
* $nemsis-vitals#3304015 "Other"

// ── EMSECGMethodVS ────────────────────────────────────────────
// NEMSIS: eVitals.05 - Method of ECG Interpretation (Required/National)
ValueSet: EMSECGMethodVS
Id: vs-ems-ecg-method
Title: "EMS ECG Interpretation Method"
Description: "NEMSIS eVitals.05 - How the ECG was interpreted."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-ecg-method"
* ^status = #active
* ^experimental = true
* $nemsis-vitals#3305001 "Computer Interpretation"
* $nemsis-vitals#3305003 "Manual Interpretation"
* $nemsis-vitals#3305005 "Transmission with No Interpretation"
* $nemsis-vitals#3305007 "Transmission with Remote Interpretation"

// ── EMSBPMethodVS ─────────────────────────────────────────────
// NEMSIS: eVitals.08 - Method of Blood Pressure Measurement (Recommended)
ValueSet: EMSBPMethodVS
Id: vs-ems-bp-method
Title: "EMS Blood Pressure Measurement Method (ValueSet)"
Description: "NEMSIS eVitals.08 - The technique used to measure blood pressure."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-bp-method"
* ^status = #active
* ^experimental = true
* $nemsis-vitals#3308001 "Arterial Line"
* $nemsis-vitals#3308003 "Doppler"
* $nemsis-vitals#3308005 "Cuff-Automated"
* $nemsis-vitals#3308007 "Cuff-Manual Auscultated"
* $nemsis-vitals#3308009 "Cuff-Manual Palpated Only"
* $nemsis-vitals#3308011 "Venous Line"

// ── EMSPulseRhythmVS ──────────────────────────────────────────
// NEMSIS: eVitals.13 - Pulse Rhythm (Optional)
ValueSet: EMSPulseRhythmVS
Id: vs-ems-pulse-rhythm
Title: "EMS Pulse Rhythm"
Description: "NEMSIS eVitals.13 - The regularity of the patient's pulse."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-pulse-rhythm"
* ^status = #active
* ^experimental = true
* $nemsis-vitals#3313001 "Irregularly Irregular"
* $nemsis-vitals#3313003 "Regular"
* $nemsis-vitals#3313005 "Regularly Irregular"

// ── EMSRespiratoryEffortVS ────────────────────────────────────
// NEMSIS: eVitals.15 - Respiratory Effort (Optional)
ValueSet: EMSRespiratoryEffortVS
Id: vs-ems-respiratory-effort
Title: "EMS Respiratory Effort"
Description: "NEMSIS eVitals.15 - The quality of the patient's respiratory effort."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-respiratory-effort"
* ^status = #active
* ^experimental = true
* $nemsis-vitals#3315001 "Apneic"
* $nemsis-vitals#3315003 "Labored"
* $nemsis-vitals#3315005 "Mechanically Assisted (BVM, CPAP, etc.)"
* $nemsis-vitals#3315007 "Normal"
* $nemsis-vitals#3315009 "Rapid"
* $nemsis-vitals#3315011 "Shallow"
* $nemsis-vitals#3315013 "Weak/Agonal"

// ── EMSGCSQualifierVS ─────────────────────────────────────────
// NEMSIS: eVitals.22 - Glasgow Coma Score-Qualifier (Required/National)
ValueSet: EMSGCSQualifierVS
Id: vs-ems-gcs-qualifier
Title: "EMS GCS Qualifier"
Description: "NEMSIS eVitals.22 - Qualifiers documenting conditions that affect GCS scoring validity."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-gcs-qualifier"
* ^status = #active
* ^experimental = true
* $nemsis-vitals#3322001 "Eye Obstruction Prevents Eye Assessment"
* $nemsis-vitals#3322003 "Initial GCS has legitimate values without interventions"
* $nemsis-vitals#3322005 "Patient Chemically Paralyzed"
* $nemsis-vitals#3322007 "Patient Chemically Sedated"
* $nemsis-vitals#3322009 "Patient Intubated"

// ── EMSAVPUVs ─────────────────────────────────────────────────
// NEMSIS: eVitals.26 - Level of Responsiveness (AVPU) (Required/National)
ValueSet: EMSAVPUVs
Id: vs-ems-avpu
Title: "EMS AVPU Level of Responsiveness"
Description: "NEMSIS eVitals.26 - The patient's level of responsiveness using the AVPU scale."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-avpu"
* ^status = #active
* ^experimental = true
* $nemsis-vitals#3326001 "Alert"
* $nemsis-vitals#3326003 "Verbal"
* $nemsis-vitals#3326005 "Painful"
* $nemsis-vitals#3326007 "Unresponsive"

// ── EMSPainScaleTypeVS ────────────────────────────────────────
// NEMSIS: eVitals.28 - Pain Scale Type (Recommended)
ValueSet: EMSPainScaleTypeVS
Id: vs-ems-pain-scale-type
Title: "EMS Pain Scale Type (ValueSet)"
Description: "NEMSIS eVitals.28 - The type of pain scale used to assess the patient's pain."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-pain-scale-type"
* ^status = #active
* ^experimental = true
* $nemsis-vitals#3328001 "FLACC (Face, Legs, Activity, Cry, Consolability)"
* $nemsis-vitals#3328003 "Numeric (0-10)"
* $nemsis-vitals#3328005 "Other"
* $nemsis-vitals#3328007 "Wong-Baker (FACES)"

// ── EMSStrokeScaleResultVS ────────────────────────────────────
// NEMSIS: eVitals.29 - Stroke Scale Result (Required/National)
ValueSet: EMSStrokeScaleResultVS
Id: vs-ems-stroke-scale-result
Title: "EMS Stroke Scale Result"
Description: "NEMSIS eVitals.29 - The result of the prehospital stroke scale assessment."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-stroke-scale-result"
* ^status = #active
* ^experimental = true
* $nemsis-vitals#3329001 "Negative"
* $nemsis-vitals#3329003 "Non-Conclusive"
* $nemsis-vitals#3329005 "Positive"

// ── EMSStrokeScaleTypeVS ──────────────────────────────────────
// NEMSIS: eVitals.30 - Stroke Scale Type (Required/National)
ValueSet: EMSStrokeScaleTypeVS
Id: vs-ems-stroke-scale-type
Title: "EMS Stroke Scale Type"
Description: "NEMSIS eVitals.30 - The prehospital stroke screening tool used."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-stroke-scale-type"
* ^status = #active
* ^experimental = true
* $nemsis-vitals#3330001 "Cincinnati Prehospital Stroke Scale (CPSS)"
* $nemsis-vitals#3330004 "Los Angeles Prehospital Stroke Screen (LAPSS)"
* $nemsis-vitals#3330005 "Massachusetts Stroke Scale (MSS)"
* $nemsis-vitals#3330007 "Miami Emergency Neurologic Deficit Exam (MEND)"
* $nemsis-vitals#3330009 "NIH Stroke Scale (NIHSS)"
* $nemsis-vitals#3330011 "Other Stroke Scale Type"
* $nemsis-vitals#3330013 "FAST"
* $nemsis-vitals#3330015 "Boston Stroke Scale (BOSS)"
* $nemsis-vitals#3330017 "Ontario Prehospital Stroke Scale (OPSS)"
* $nemsis-vitals#3330019 "Melbourne Ambulance Stroke Screen (MASS)"
* $nemsis-vitals#3330021 "Rapid Arterial oCclusion Evaluation (RACE)"
* $nemsis-vitals#3330023 "Los Angeles Motor Score (LAMS)"
* $nemsis-vitals#3330025 "Vision, Aphasia, Neglect (VAN)"
* $nemsis-vitals#3330027 "FAST-ED"
* $nemsis-vitals#3330029 "BEFAST"

// ── EMSReperfusionChecklistVS ─────────────────────────────────
// NEMSIS: eVitals.31 - Reperfusion Checklist (Required/National)
ValueSet: EMSReperfusionChecklistVS
Id: vs-ems-reperfusion-checklist
Title: "EMS Reperfusion Checklist"
Description: "NEMSIS eVitals.31 - Contraindication status for thrombolytic therapy per the reperfusion checklist."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-reperfusion-checklist"
* ^status = #active
* ^experimental = true
* $nemsis-vitals#3331001 "Definite Contraindications to Thrombolytic Use"
* $nemsis-vitals#3331003 "No Contraindications to Thrombolytic Use"
* $nemsis-vitals#3331005 "Possible Contraindications to Thrombolytic Use"
