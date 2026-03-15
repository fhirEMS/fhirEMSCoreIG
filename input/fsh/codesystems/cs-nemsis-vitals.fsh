// ============================================================
// NEMSIS Vitals CodeSystem
// eVitals section enumeration codes
// NEMSIS 3.5.1.251001CP2
// ============================================================

CodeSystem: NEMSISVitals
Id: cs-nemsis-vitals
Title: "NEMSIS Vital Signs Codes"
Description: "Enumeration codes from the NEMSIS eVitals section (NEMSIS 3.5.1.251001CP2)."
* ^url = "http://hl7.org/fhir/us/emscore/CodeSystem/nemsis-vitals"
* ^version = "3.5.1.251001CP2"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// ── eVitals.03 - Cardiac Rhythm / ECG ────────────────────────
* #9901001 "Agonal/Idioventricular"
* #9901003 "Asystole"
* #9901005 "Artifact"
* #9901007 "Atrial Fibrillation"
* #9901009 "Atrial Flutter"
* #9901011 "AV Block-1st Degree"
* #9901013 "AV Block-2nd Degree-Type 1"
* #9901015 "AV Block-2nd Degree-Type 2"
* #9901017 "AV Block-3rd Degree"
* #9901019 "Junctional"
* #9901021 "Left Bundle Branch Block"
* #9901023 "Non-STEMI Anterior Ischemia"
* #9901025 "Non-STEMI Inferior Ischemia"
* #9901027 "Non-STEMI Lateral Ischemia"
* #9901029 "Non-STEMI Posterior Ischemia"
* #9901030 "Non-STEMI Septal Ischemia"
* #9901031 "Other"
* #9901033 "Paced Rhythm"
* #9901035 "PEA"
* #9901037 "Premature Atrial Contractions"
* #9901039 "Premature Ventricular Contractions"
* #9901041 "Right Bundle Branch Block"
* #9901043 "Sinus Arrhythmia"
* #9901045 "Sinus Bradycardia"
* #9901047 "Sinus Rhythm"
* #9901049 "Sinus Tachycardia"
* #9901051 "STEMI Anterior Ischemia"
* #9901053 "STEMI Inferior Ischemia"
* #9901055 "STEMI Lateral Ischemia"
* #9901057 "STEMI Posterior Ischemia"
* #9901058 "STEMI Septal Ischemia"
* #9901059 "Supraventricular Tachycardia"
* #9901061 "Torsades De Points"
* #9901063 "Unknown AED Non-Shockable Rhythm"
* #9901065 "Unknown AED Shockable Rhythm"
* #9901067 "Ventricular Fibrillation"
* #9901069 "Ventricular Tachycardia (With Pulse)"
* #9901071 "Ventricular Tachycardia (Pulseless)"

// ── eVitals.04 - ECG Type ─────────────────────────────────────
* #3304000 "2 Lead ECG (pads or paddles)"
* #3304001 "3 Lead"
* #3304003 "4 Lead"
* #3304005 "5 Lead"
* #3304007 "12 Lead-Left Sided (Normal)"
* #3304009 "12 Lead-Right Sided"
* #3304011 "15 Lead"
* #3304013 "18 Lead"
* #3304015 "Other"

// ── eVitals.05 - Method of ECG Interpretation ─────────────────
* #3305001 "Computer Interpretation"
* #3305003 "Manual Interpretation"
* #3305005 "Transmission with No Interpretation"
* #3305007 "Transmission with Remote Interpretation"

// ── eVitals.08 - Method of Blood Pressure Measurement ─────────
* #3308001 "Arterial Line"
* #3308003 "Doppler"
* #3308005 "Cuff-Automated"
* #3308007 "Cuff-Manual Auscultated"
* #3308009 "Cuff-Manual Palpated Only"
* #3308011 "Venous Line"

// ── eVitals.13 - Pulse Rhythm ─────────────────────────────────
* #3313001 "Irregularly Irregular"
* #3313003 "Regular"
* #3313005 "Regularly Irregular"

// ── eVitals.15 - Respiratory Effort ──────────────────────────
* #3315001 "Apneic"
* #3315003 "Labored"
* #3315005 "Mechanically Assisted (BVM, CPAP, etc.)"
* #3315007 "Normal"
* #3315009 "Rapid"
* #3315011 "Shallow"
* #3315013 "Weak/Agonal"

// ── eVitals.22 - GCS Qualifier ────────────────────────────────
* #3322001 "Eye Obstruction Prevents Eye Assessment"
* #3322003 "Initial GCS has legitimate values without interventions"
* #3322005 "Patient Chemically Paralyzed"
* #3322007 "Patient Chemically Sedated"
* #3322009 "Patient Intubated"

// ── eVitals.26 - Level of Responsiveness (AVPU) ───────────────
* #3326001 "Alert"
* #3326003 "Verbal"
* #3326005 "Painful"
* #3326007 "Unresponsive"

// ── eVitals.28 - Pain Scale Type ──────────────────────────────
* #3328001 "FLACC (Face, Legs, Activity, Cry, Consolability)"
* #3328003 "Numeric (0-10)"
* #3328005 "Other"
* #3328007 "Wong-Baker (FACES)"

// ── eVitals.29 - Stroke Scale Result ──────────────────────────
* #3329001 "Negative"
* #3329003 "Non-Conclusive"
* #3329005 "Positive"

// ── eVitals.30 - Stroke Scale Type ────────────────────────────
* #3330001 "Cincinnati Prehospital Stroke Scale (CPSS)"
* #3330004 "Los Angeles Prehospital Stroke Screen (LAPSS)"
* #3330005 "Massachusetts Stroke Scale (MSS)"
* #3330007 "Miami Emergency Neurologic Deficit Exam (MEND)"
* #3330009 "NIH Stroke Scale (NIHSS)"
* #3330011 "Other Stroke Scale Type"
* #3330013 "FAST"
* #3330015 "Boston Stroke Scale (BOSS)"
* #3330017 "Ontario Prehospital Stroke Scale (OPSS)"
* #3330019 "Melbourne Ambulance Stroke Screen (MASS)"
* #3330021 "Rapid Arterial oCclusion Evaluation (RACE)"
* #3330023 "Los Angeles Motor Score (LAMS)"
* #3330025 "Vision, Aphasia, Neglect (VAN)"
* #3330027 "FAST-ED"
* #3330029 "BEFAST"

// ── eVitals.31 - Reperfusion Checklist ────────────────────────
* #3331001 "Definite Contraindications to Thrombolytic Use"
* #3331003 "No Contraindications to Thrombolytic Use"
* #3331005 "Possible Contraindications to Thrombolytic Use"
