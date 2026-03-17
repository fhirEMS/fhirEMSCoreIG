// ============================================================
// EMS Physical Exam ValueSets
// NEMSIS eExam section — NEMSIS 3.5.1.251001CP2
// ============================================================

// ── eExam.02 - Length Based Tape Measure (Broselow-Luten) ─────
ValueSet: EMSExamLengthTapeMeasureVS
Id: vs-ems-exam-length-tape
Title: "EMS Length Based Tape Measure (Broselow-Luten)"
Description: "NEMSIS eExam.02 - Broselow-Luten color zone for length-based weight estimation."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-length-tape"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3502001 "Blue"
* $nemsis-exam#3502003 "Green"
* $nemsis-exam#3502005 "Grey"
* $nemsis-exam#3502007 "Orange"
* $nemsis-exam#3502009 "Pink"
* $nemsis-exam#3502011 "Purple"
* $nemsis-exam#3502013 "Red"
* $nemsis-exam#3502015 "White"
* $nemsis-exam#3502017 "Yellow"

// ── eExam.04 - Skin Assessment ────────────────────────────────
ValueSet: EMSExamSkinVS
Id: vs-ems-exam-skin
Title: "EMS Skin Assessment"
Description: "NEMSIS eExam.04 - Physical findings on skin assessment."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-skin"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3504001 "Clammy"
* $nemsis-exam#3504003 "Cold"
* $nemsis-exam#3504005 "Cyanotic"
* $nemsis-exam#3504007 "Diaphoretic"
* $nemsis-exam#3504009 "Dry"
* $nemsis-exam#3504011 "Flushed"
* $nemsis-exam#3504013 "Hot"
* $nemsis-exam#3504015 "Jaundiced"
* $nemsis-exam#3504017 "Lividity"
* $nemsis-exam#3504019 "Mottled"
* $nemsis-exam#3504021 "Normal"
* $nemsis-exam#3504023 "Not Done"
* $nemsis-exam#3504025 "Pale"
* $nemsis-exam#3504027 "Poor Turgor"
* $nemsis-exam#3504029 "Red (Erythematous)"
* $nemsis-exam#3504031 "Tenting"
* $nemsis-exam#3504033 "Warm"
* $nemsis-exam#3504035 "Capillary Nail Bed Refill less than 2 seconds"
* $nemsis-exam#3504037 "Capillary Nail Bed Refill 2-4 seconds"
* $nemsis-exam#3504039 "Capillary Nail Bed Refill more than 4 seconds"

// ── eExam.05 - Head Assessment ────────────────────────────────
ValueSet: EMSExamHeadVS
Id: vs-ems-exam-head
Title: "EMS Head Assessment"
Description: "NEMSIS eExam.05 - Physical findings on head assessment."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-head"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3505001 "Abrasion"
* $nemsis-exam#3505003 "Avulsion"
* $nemsis-exam#3505005 "Bleeding Controlled"
* $nemsis-exam#3505007 "Bleeding Uncontrolled"
* $nemsis-exam#3505009 "Burn-Blistering"
* $nemsis-exam#3505011 "Burn-Charring"
* $nemsis-exam#3505013 "Burn-Redness"
* $nemsis-exam#3505015 "Burn-White/Waxy"
* $nemsis-exam#3505017 "Decapitation"
* $nemsis-exam#3505019 "Deformity"
* $nemsis-exam#3505021 "Drainage"
* $nemsis-exam#3505023 "Foreign Body"
* $nemsis-exam#3505029 "Laceration"
* $nemsis-exam#3505031 "Mass/Lesion"
* $nemsis-exam#3505033 "Normal"
* $nemsis-exam#3505035 "Not Done"
* $nemsis-exam#3505037 "Pain"
* $nemsis-exam#3505039 "Puncture/Stab Wound"
* $nemsis-exam#3505045 "Gunshot Wound"
* $nemsis-exam#3505047 "Crush Injury"
* $nemsis-exam#3505049 "Swelling"
* $nemsis-exam#3505051 "Contusion"
* $nemsis-exam#3505053 "Tenderness"

// ── eExam.06 - Face Assessment ────────────────────────────────
ValueSet: EMSExamFaceVS
Id: vs-ems-exam-face
Title: "EMS Face Assessment"
Description: "NEMSIS eExam.06 - Physical findings on face assessment."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-face"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3506001 "Abrasion"
* $nemsis-exam#3506003 "Asymmetric Smile or Droop"
* $nemsis-exam#3506005 "Avulsion"
* $nemsis-exam#3506007 "Bleeding Controlled"
* $nemsis-exam#3506009 "Bleeding Uncontrolled"
* $nemsis-exam#3506011 "Burn-Blistering"
* $nemsis-exam#3506013 "Burn-Charring"
* $nemsis-exam#3506015 "Burn-Redness"
* $nemsis-exam#3506017 "Burn-White/Waxy"
* $nemsis-exam#3506021 "Deformity"
* $nemsis-exam#3506023 "Drainage"
* $nemsis-exam#3506025 "Foreign Body"
* $nemsis-exam#3506031 "Laceration"
* $nemsis-exam#3506033 "Mass/Lesion"
* $nemsis-exam#3506035 "Normal"
* $nemsis-exam#3506037 "Not Done"
* $nemsis-exam#3506039 "Pain"
* $nemsis-exam#3506041 "Puncture/Stab Wound"
* $nemsis-exam#3506047 "Gunshot Wound"
* $nemsis-exam#3506049 "Crush Injury"
* $nemsis-exam#3506051 "Tenderness"
* $nemsis-exam#3506053 "Swelling"
* $nemsis-exam#3506055 "Contusion"

// ── eExam.07 - Neck Assessment ────────────────────────────────
ValueSet: EMSExamNeckVS
Id: vs-ems-exam-neck
Title: "EMS Neck Assessment"
Description: "NEMSIS eExam.07 - Physical findings on neck assessment."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-neck"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3507001 "Abrasion"
* $nemsis-exam#3507003 "Avulsion"
* $nemsis-exam#3507005 "Bleeding Controlled"
* $nemsis-exam#3507007 "Bleeding Uncontrolled"
* $nemsis-exam#3507009 "Burn-Blistering"
* $nemsis-exam#3507011 "Burn-Charring"
* $nemsis-exam#3507013 "Burn-Redness"
* $nemsis-exam#3507015 "Burn-White/Waxy"
* $nemsis-exam#3507017 "Decapitation"
* $nemsis-exam#3507019 "Foreign Body"
* $nemsis-exam#3507025 "JVD"
* $nemsis-exam#3507027 "Laceration"
* $nemsis-exam#3507029 "Normal"
* $nemsis-exam#3507031 "Not Done"
* $nemsis-exam#3507033 "Pain"
* $nemsis-exam#3507035 "Puncture/Stab Wound"
* $nemsis-exam#3507037 "Stridor"
* $nemsis-exam#3507039 "Subcutaneous Air"
* $nemsis-exam#3507045 "Tracheal Deviation-Left"
* $nemsis-exam#3507047 "Tracheal Deviation-Right"
* $nemsis-exam#3507049 "Gunshot Wound"
* $nemsis-exam#3507051 "Crush Injury"
* $nemsis-exam#3507053 "Swelling"
* $nemsis-exam#3507055 "Contusion"
* $nemsis-exam#3507057 "Deformity"
* $nemsis-exam#3507059 "Tenderness"

// ── eExam.09 - Heart Assessment ───────────────────────────────
ValueSet: EMSExamHeartVS
Id: vs-ems-exam-heart
Title: "EMS Heart Assessment"
Description: "NEMSIS eExam.09 - Physical findings on heart/cardiac auscultation."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-heart"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3509001 "Clicks"
* $nemsis-exam#3509003 "Heart Sounds Decreased"
* $nemsis-exam#3509005 "Murmur-Diastolic"
* $nemsis-exam#3509007 "Murmur-Systolic"
* $nemsis-exam#3509009 "Normal"
* $nemsis-exam#3509011 "Not Done"
* $nemsis-exam#3509013 "Rubs"
* $nemsis-exam#3509015 "S1"
* $nemsis-exam#3509017 "S2"
* $nemsis-exam#3509019 "S3"
* $nemsis-exam#3509021 "S4"

// ── eExam.10 - Abdominal Assessment Finding Location ──────────
ValueSet: EMSExamAbdominalFindingLocationVS
Id: vs-ems-exam-abd-location
Title: "EMS Abdominal Assessment Finding Location"
Description: "NEMSIS eExam.10 - Location qualifier for abdominal assessment findings."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-abd-location"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3510001 "Generalized"
* $nemsis-exam#3510003 "Left Lower Quadrant"
* $nemsis-exam#3510005 "Left Upper Quadrant"
* $nemsis-exam#3510007 "Periumbilical"
* $nemsis-exam#3510009 "Right Lower Quadrant"
* $nemsis-exam#3510011 "Right Upper Quadrant"
* $nemsis-exam#3510013 "Epigastric"

// ── eExam.11 - Abdomen Assessment ────────────────────────────
ValueSet: EMSExamAbdomenVS
Id: vs-ems-exam-abdomen
Title: "EMS Abdomen Assessment"
Description: "NEMSIS eExam.11 - Physical findings on abdominal assessment."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-abdomen"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3511001 "Abrasion"
* $nemsis-exam#3511003 "Avulsion"
* $nemsis-exam#3511005 "Bleeding Controlled"
* $nemsis-exam#3511007 "Bleeding Uncontrolled"
* $nemsis-exam#3511009 "Bowel Sounds-Absent"
* $nemsis-exam#3511011 "Bowel Sounds-Present"
* $nemsis-exam#3511013 "Burn-Blistering"
* $nemsis-exam#3511015 "Burn-Charring"
* $nemsis-exam#3511017 "Burn-Redness"
* $nemsis-exam#3511019 "Burn-White/Waxy"
* $nemsis-exam#3511021 "Distention"
* $nemsis-exam#3511023 "Foreign Body"
* $nemsis-exam#3511025 "Guarding"
* $nemsis-exam#3511031 "Laceration"
* $nemsis-exam#3511033 "Mass/Lesion"
* $nemsis-exam#3511035 "Mass-Pulsating"
* $nemsis-exam#3511037 "Normal"
* $nemsis-exam#3511039 "Not Done"
* $nemsis-exam#3511041 "Pain"
* $nemsis-exam#3511043 "Pregnant-Palpable Uterus"
* $nemsis-exam#3511045 "Puncture/Stab Wound"
* $nemsis-exam#3511051 "Tenderness"
* $nemsis-exam#3511053 "Gunshot Wound"
* $nemsis-exam#3511055 "Crush Injury"
* $nemsis-exam#3511057 "Swelling"
* $nemsis-exam#3511059 "Contusion"
* $nemsis-exam#3511061 "Deformity"
* $nemsis-exam#3511063 "Rebound Tenderness"
* $nemsis-exam#3511065 "Rigidity"

// ── eExam.12 - Pelvis/GU Assessment ──────────────────────────
ValueSet: EMSExamPelvicGUVS
Id: vs-ems-exam-pelvic-gu
Title: "EMS Pelvis/Genitourinary Assessment"
Description: "NEMSIS eExam.12 - Physical findings on pelvic/genitourinary assessment."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-pelvic-gu"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3512001 "Abrasion"
* $nemsis-exam#3512003 "Avulsion"
* $nemsis-exam#3512005 "Bleeding Controlled"
* $nemsis-exam#3512007 "Bleeding Uncontrolled"
* $nemsis-exam#3512009 "Bleeding-Rectal"
* $nemsis-exam#3512011 "Bleeding-Urethral"
* $nemsis-exam#3512013 "Bleeding-Vaginal"
* $nemsis-exam#3512015 "Burn-Blistering"
* $nemsis-exam#3512017 "Burn-Charring"
* $nemsis-exam#3512019 "Burn-Redness"
* $nemsis-exam#3512021 "Burn-White/Waxy"
* $nemsis-exam#3512023 "Deformity"
* $nemsis-exam#3512025 "Foreign Body"
* $nemsis-exam#3512027 "Genital Injury"
* $nemsis-exam#3512033 "Laceration"
* $nemsis-exam#3512035 "Mass/Lesion"
* $nemsis-exam#3512037 "Normal"
* $nemsis-exam#3512039 "Not Done"
* $nemsis-exam#3512041 "Pain"
* $nemsis-exam#3512043 "Pelvic Fracture"
* $nemsis-exam#3512045 "Pelvic Instability"
* $nemsis-exam#3512047 "Penile Priapism/Erection"
* $nemsis-exam#3512049 "Pregnant-Crowning"
* $nemsis-exam#3512051 "Puncture/Stab Wound"
* $nemsis-exam#3512057 "Tenderness"
* $nemsis-exam#3512059 "Gunshot Wound"
* $nemsis-exam#3512061 "Crush Injury"
* $nemsis-exam#3512063 "Swelling"
* $nemsis-exam#3512065 "Contusion"

// ── eExam.13 - Back and Spine Assessment Finding Location ──────
ValueSet: EMSExamBackSpineLocationVS
Id: vs-ems-exam-back-location
Title: "EMS Back and Spine Assessment Finding Location"
Description: "NEMSIS eExam.13 - Location qualifier for back and spine assessment findings."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-back-location"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3513001 "Back-General"
* $nemsis-exam#3513003 "Cervical-Left"
* $nemsis-exam#3513005 "Cervical-Midline"
* $nemsis-exam#3513007 "Cervical-Right"
* $nemsis-exam#3513009 "Lumbar-Left"
* $nemsis-exam#3513011 "Lumbar-Midline"
* $nemsis-exam#3513013 "Lumbar-Right"
* $nemsis-exam#3513015 "Thoracic-Left"
* $nemsis-exam#3513017 "Thoracic-Midline"
* $nemsis-exam#3513019 "Thoracic-Right"
* $nemsis-exam#3513021 "Sacral-Left"
* $nemsis-exam#3513023 "Sacral-Midline"
* $nemsis-exam#3513025 "Sacral-Right"
* $nemsis-exam#3513029 "Flank-Left"
* $nemsis-exam#3513031 "Flank-Right"

// ── eExam.14 - Back and Spine Assessment ─────────────────────
ValueSet: EMSExamBackSpineVS
Id: vs-ems-exam-back-spine
Title: "EMS Back and Spine Assessment"
Description: "NEMSIS eExam.14 - Physical findings on back and spine assessment."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-back-spine"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3514001 "Abrasion"
* $nemsis-exam#3514003 "Avulsion"
* $nemsis-exam#3514005 "Bleeding Controlled"
* $nemsis-exam#3514007 "Bleeding Uncontrolled"
* $nemsis-exam#3514009 "Burn-Blistering"
* $nemsis-exam#3514011 "Burn-Charring"
* $nemsis-exam#3514013 "Burn-Redness"
* $nemsis-exam#3514015 "Burn-White/Waxy"
* $nemsis-exam#3514017 "Deformity"
* $nemsis-exam#3514019 "Foreign Body"
* $nemsis-exam#3514025 "Laceration"
* $nemsis-exam#3514027 "Normal"
* $nemsis-exam#3514029 "Not Done"
* $nemsis-exam#3514031 "Pain"
* $nemsis-exam#3514033 "Pain with Range of Motion"
* $nemsis-exam#3514035 "Puncture/Stab Wound"
* $nemsis-exam#3514041 "Tenderness Costovertebral Angle"
* $nemsis-exam#3514043 "Tenderness Midline Spinous Process"
* $nemsis-exam#3514045 "Tenderness Paraspinous"
* $nemsis-exam#3514047 "Gunshot Wound"
* $nemsis-exam#3514049 "Crush Injury"
* $nemsis-exam#3514051 "Swelling"
* $nemsis-exam#3514053 "Contusion"
* $nemsis-exam#3514055 "Tenderness"

// ── eExam.15 - Extremity Assessment Finding Location ──────────
ValueSet: EMSExamExtremityLocationVS
Id: vs-ems-exam-extremity-location
Title: "EMS Extremity Assessment Finding Location"
Description: "NEMSIS eExam.15 - Location qualifier for extremity assessment findings."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-extremity-location"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3515001 "Ankle-Left"
* $nemsis-exam#3515003 "Ankle-Right"
* $nemsis-exam#3515005 "Arm-Upper-Left"
* $nemsis-exam#3515007 "Arm-Upper-Right"
* $nemsis-exam#3515009 "Elbow-Left"
* $nemsis-exam#3515011 "Elbow-Right"
* $nemsis-exam#3515013 "Finger-2nd (Index)-Left"
* $nemsis-exam#3515015 "Finger-2nd (Index)-Right"
* $nemsis-exam#3515017 "Finger-3rd (Middle)-Left"
* $nemsis-exam#3515019 "Finger-3rd (Middle)-Right"
* $nemsis-exam#3515021 "Finger-4th (Ring)-Left"
* $nemsis-exam#3515023 "Finger-4th (Ring)-Right"
* $nemsis-exam#3515025 "Finger-5th (Smallest)-Left"
* $nemsis-exam#3515027 "Finger-5th (Smallest)-Right"
* $nemsis-exam#3515029 "Foot-Dorsal-Left"
* $nemsis-exam#3515031 "Foot-Dorsal-Right"
* $nemsis-exam#3515033 "Foot-Plantar-Left"
* $nemsis-exam#3515035 "Foot-Plantar-Right"
* $nemsis-exam#3515037 "Arm-Lower-Left"
* $nemsis-exam#3515039 "Arm-Lower-Right"
* $nemsis-exam#3515041 "Hand-Dorsal-Left"
* $nemsis-exam#3515043 "Hand-Dorsal-Right"
* $nemsis-exam#3515045 "Hand-Palm-Left"
* $nemsis-exam#3515047 "Hand-Palm-Right"
* $nemsis-exam#3515049 "Hip-Left"
* $nemsis-exam#3515051 "Hip-Right"
* $nemsis-exam#3515053 "Knee-Left"
* $nemsis-exam#3515055 "Knee-Right"
* $nemsis-exam#3515057 "Leg-Lower-Left"
* $nemsis-exam#3515059 "Leg-Lower-Right"
* $nemsis-exam#3515061 "Leg-Upper-Left"
* $nemsis-exam#3515063 "Leg-Upper-Right"
* $nemsis-exam#3515065 "Shoulder-Left"
* $nemsis-exam#3515067 "Shoulder-Right"
* $nemsis-exam#3515069 "Thumb-Left"
* $nemsis-exam#3515071 "Thumb-Right"
* $nemsis-exam#3515073 "Toe-1st (Big)-Left"
* $nemsis-exam#3515075 "Toe-1st (Big)-Right"
* $nemsis-exam#3515077 "Toe-2nd-Left"
* $nemsis-exam#3515079 "Toe-2nd-Right"
* $nemsis-exam#3515081 "Toe-3rd-Left"
* $nemsis-exam#3515083 "Toe-3rd-Right"
* $nemsis-exam#3515085 "Toe-4th-Left"
* $nemsis-exam#3515087 "Toe-4th-Right"
* $nemsis-exam#3515089 "Toe-5th (Smallest)-Left"
* $nemsis-exam#3515091 "Toe-5th (Smallest)-Right"
* $nemsis-exam#3515093 "Wrist-Left"
* $nemsis-exam#3515095 "Wrist-Right"
* $nemsis-exam#3515097 "Arm-Whole Arm and Hand-Left"
* $nemsis-exam#3515099 "Arm-Whole Arm and Hand-Right"
* $nemsis-exam#3515101 "Hand-Whole Hand-Left"
* $nemsis-exam#3515103 "Hand-Whole Hand-Right"
* $nemsis-exam#3515105 "Leg-Whole Leg-Left"
* $nemsis-exam#3515107 "Leg-Whole Leg-Right"
* $nemsis-exam#3515109 "Foot-Whole Foot-Left"
* $nemsis-exam#3515111 "Foot-Whole Foot-Right"

// ── eExam.16 - Extremities Assessment ─────────────────────────
ValueSet: EMSExamExtremitiesVS
Id: vs-ems-exam-extremities
Title: "EMS Extremities Assessment"
Description: "NEMSIS eExam.16 - Physical findings on extremities assessment."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-extremities"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3516001 "Abrasion"
* $nemsis-exam#3516003 "Amputation-Acute"
* $nemsis-exam#3516005 "Amputation-Previous"
* $nemsis-exam#3516007 "Avulsion"
* $nemsis-exam#3516009 "Bleeding Controlled"
* $nemsis-exam#3516011 "Bleeding Uncontrolled"
* $nemsis-exam#3516013 "Burn-Blistering"
* $nemsis-exam#3516015 "Burn-Charring"
* $nemsis-exam#3516017 "Burn-Redness"
* $nemsis-exam#3516019 "Burn-White/Waxy"
* $nemsis-exam#3516021 "Clubbing (of fingers)"
* $nemsis-exam#3516023 "Crush Injury"
* $nemsis-exam#3516025 "Deformity"
* $nemsis-exam#3516027 "Dislocation"
* $nemsis-exam#3516029 "Edema"
* $nemsis-exam#3516031 "Foreign Body"
* $nemsis-exam#3516033 "Fracture-Closed"
* $nemsis-exam#3516035 "Fracture-Open"
* $nemsis-exam#3516041 "Laceration"
* $nemsis-exam#3516043 "Motor Function-Abnormal/Weakness"
* $nemsis-exam#3516045 "Motor Function-Absent"
* $nemsis-exam#3516047 "Motor Function-Normal"
* $nemsis-exam#3516049 "Normal"
* $nemsis-exam#3516051 "Not Done"
* $nemsis-exam#3516053 "Pain"
* $nemsis-exam#3516055 "Paralysis"
* $nemsis-exam#3516057 "Pulse-Abnormal"
* $nemsis-exam#3516059 "Pulse-Absent"
* $nemsis-exam#3516061 "Pulse-Normal"
* $nemsis-exam#3516063 "Puncture/Stab Wound"
* $nemsis-exam#3516065 "Sensation-Abnormal"
* $nemsis-exam#3516067 "Sensation-Absent"
* $nemsis-exam#3516069 "Sensation-Normal"
* $nemsis-exam#3516075 "Tenderness"
* $nemsis-exam#3516077 "Gunshot Wound"
* $nemsis-exam#3516079 "Swelling"
* $nemsis-exam#3516081 "Contusion"
* $nemsis-exam#3516083 "Arm Drift"
* $nemsis-exam#3516085 "Cool/Cold to Touch"
* $nemsis-exam#3516087 "Cyanosis"
* $nemsis-exam#3516089 "Erythema/Flushing"
* $nemsis-exam#3516091 "Hot/Warm to Touch"
* $nemsis-exam#3516093 "Lividity"
* $nemsis-exam#3516095 "Mottled"
* $nemsis-exam#3516097 "Pale"

// ── eExam.17 - Eye Assessment Finding Location ────────────────
ValueSet: EMSExamEyeLocationVS
Id: vs-ems-exam-eye-location
Title: "EMS Eye Assessment Finding Location"
Description: "NEMSIS eExam.17 - Laterality qualifier for eye assessment findings."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-eye-location"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3517001 "Bilateral"
* $nemsis-exam#3517003 "Left"
* $nemsis-exam#3517005 "Right"

// ── eExam.18 - Eye Assessment ─────────────────────────────────
ValueSet: EMSExamEyeVS
Id: vs-ems-exam-eye
Title: "EMS Eye Assessment"
Description: "NEMSIS eExam.18 - Physical findings on eye assessment, including pupil size and reactivity."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-eye"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3518001 "1-mm"
* $nemsis-exam#3518003 "2-mm"
* $nemsis-exam#3518005 "3-mm"
* $nemsis-exam#3518007 "4-mm"
* $nemsis-exam#3518009 "5-mm"
* $nemsis-exam#3518011 "6-mm"
* $nemsis-exam#3518013 "7-mm"
* $nemsis-exam#3518015 "8-mm or >"
* $nemsis-exam#3518017 "Blind"
* $nemsis-exam#3518019 "Cataract Present"
* $nemsis-exam#3518021 "Clouded"
* $nemsis-exam#3518023 "Deformity"
* $nemsis-exam#3518025 "Dysconjugate Gaze"
* $nemsis-exam#3518027 "Foreign Body"
* $nemsis-exam#3518029 "Glaucoma Present"
* $nemsis-exam#3518031 "Hyphema"
* $nemsis-exam#3518033 "Jaundiced Sclera"
* $nemsis-exam#3518035 "Missing"
* $nemsis-exam#3518037 "Non-Reactive"
* $nemsis-exam#3518039 "Not Done"
* $nemsis-exam#3518041 "Non-Reactive Prosthetic"
* $nemsis-exam#3518043 "Nystagmus Noted"
* $nemsis-exam#3518045 "Open Globe"
* $nemsis-exam#3518047 "PERRL"
* $nemsis-exam#3518049 "Pupil-Irregular/Teardrop"
* $nemsis-exam#3518051 "Reactive"
* $nemsis-exam#3518053 "Sluggish"
* $nemsis-exam#3518055 "Swelling"
* $nemsis-exam#3518057 "Contusion"
* $nemsis-exam#3518059 "Puncture/Stab Wound"
* $nemsis-exam#3518061 "Dilated"
* $nemsis-exam#3518063 "Pin Point"

// ── eExam.19 - Mental Status Assessment ───────────────────────
ValueSet: EMSExamMentalStatusVS
Id: vs-ems-exam-mental-status
Title: "EMS Mental Status Assessment"
Description: "NEMSIS eExam.19 - Mental status and cognitive assessment findings."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-mental-status"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3519001 "Combative"
* $nemsis-exam#3519003 "Confused"
* $nemsis-exam#3519005 "Hallucinations"
* $nemsis-exam#3519007 "Normal Baseline for Patient"
* $nemsis-exam#3519009 "Not Done"
* $nemsis-exam#3519011 "Oriented-Person"
* $nemsis-exam#3519013 "Oriented-Place"
* $nemsis-exam#3519015 "Oriented-Event"
* $nemsis-exam#3519017 "Oriented-Time"
* $nemsis-exam#3519021 "Unresponsive"
* $nemsis-exam#3519023 "Agitation"
* $nemsis-exam#3519025 "Somnolent"
* $nemsis-exam#3519027 "Stupor"
* $nemsis-exam#3519029 "Altered mental status, unspecified"
* $nemsis-exam#3519031 "Developmentally Impaired"
* $nemsis-exam#3519033 "Disorientation, unspecified"
* $nemsis-exam#3519035 "Pharmacologically Paralyzed"
* $nemsis-exam#3519037 "Pharmacologically Sedated"
* $nemsis-exam#3519039 "Psychologically Impaired"
* $nemsis-exam#3519041 "Slowness and poor responsiveness"
* $nemsis-exam#3519043 "State of emotional shock and stress, unspecified"
* $nemsis-exam#3519045 "Strange and inexplicable behavior"
* $nemsis-exam#3519047 "Uncooperative"
* $nemsis-exam#3519049 "Unspecified coma"

// ── eExam.20 - Neurological Assessment ───────────────────────
ValueSet: EMSExamNeurologicalVS
Id: vs-ems-exam-neurological
Title: "EMS Neurological Assessment"
Description: "NEMSIS eExam.20 - Neurological assessment findings including strength, speech, coordination, and seizures."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-neurological"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3520001 "Aphagia"
* $nemsis-exam#3520003 "Aphasia"
* $nemsis-exam#3520005 "Cerebellar Function-Abnormal"
* $nemsis-exam#3520007 "Cerebellar Function-Normal"
* $nemsis-exam#3520009 "Decerebrate Posturing"
* $nemsis-exam#3520011 "Decorticate Posturing"
* $nemsis-exam#3520013 "Gait-Abnormal"
* $nemsis-exam#3520015 "Gait-Normal"
* $nemsis-exam#3520017 "Hemiplegia-Left"
* $nemsis-exam#3520019 "Hemiplegia-Right"
* $nemsis-exam#3520021 "Normal Baseline for Patient"
* $nemsis-exam#3520023 "Not Done"
* $nemsis-exam#3520026 "Status Seizure"
* $nemsis-exam#3520027 "Speech Normal"
* $nemsis-exam#3520029 "Speech Slurring"
* $nemsis-exam#3520031 "Strength-Asymmetric"
* $nemsis-exam#3520033 "Strength-Normal"
* $nemsis-exam#3520035 "Strength-Symmetric"
* $nemsis-exam#3520037 "Tremors"
* $nemsis-exam#3520039 "Weakness-Facial Droop-Left"
* $nemsis-exam#3520041 "Weakness-Facial Droop-Right"
* $nemsis-exam#3520043 "Weakness-Left Sided"
* $nemsis-exam#3520045 "Weakness-Right Sided"
* $nemsis-exam#3520051 "Arm Drift-Left"
* $nemsis-exam#3520053 "Arm Drift-Right"
* $nemsis-exam#3520055 "Other Seizures"

// ── eExam.21 - Stroke/CVA Symptoms Resolved ───────────────────
ValueSet: EMSExamStrokeSymptomsResolvedVS
Id: vs-ems-exam-stroke-resolved
Title: "EMS Stroke/CVA Symptoms Resolved"
Description: "NEMSIS eExam.21 - Whether stroke/CVA symptoms resolved prior to or during EMS care."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-stroke-resolved"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3521001 "No"
* $nemsis-exam#3521003 "Yes-Resolved Prior to EMS Arrival"
* $nemsis-exam#3521005 "Yes-Resolved in EMS Presence"

// ── eExam.22 - Lung Assessment Finding Location ───────────────
ValueSet: EMSExamLungLocationVS
Id: vs-ems-exam-lung-location
Title: "EMS Lung Assessment Finding Location"
Description: "NEMSIS eExam.22 - Laterality qualifier for lung assessment findings."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-lung-location"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3522001 "Left"
* $nemsis-exam#3522003 "Right"
* $nemsis-exam#3522005 "Bilateral"

// ── eExam.23 - Lung Assessment ────────────────────────────────
ValueSet: EMSExamLungVS
Id: vs-ems-exam-lung
Title: "EMS Lung Assessment"
Description: "NEMSIS eExam.23 - Auscultatory and respiratory findings on lung assessment."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-lung"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3523001 "Breath Sounds-Absent"
* $nemsis-exam#3523003 "Breath Sounds-Decreased"
* $nemsis-exam#3523005 "Breath Sounds-Equal"
* $nemsis-exam#3523007 "Breath Sounds-Normal"
* $nemsis-exam#3523009 "Foreign Body"
* $nemsis-exam#3523011 "Increased Respiratory Effort"
* $nemsis-exam#3523013 "Normal"
* $nemsis-exam#3523015 "Not Done"
* $nemsis-exam#3523017 "Pain"
* $nemsis-exam#3523019 "Pain with Inspiration/Expiration"
* $nemsis-exam#3523021 "Rales"
* $nemsis-exam#3523023 "Rhonchi"
* $nemsis-exam#3523025 "Rhonchi/Wheezing"
* $nemsis-exam#3523027 "Stridor"
* $nemsis-exam#3523029 "Wheezing-Expiratory"
* $nemsis-exam#3523031 "Wheezing-Inspiratory"

// ── eExam.24 - Chest Assessment Finding Location ──────────────
ValueSet: EMSExamChestLocationVS
Id: vs-ems-exam-chest-location
Title: "EMS Chest Assessment Finding Location"
Description: "NEMSIS eExam.24 - Location qualifier for chest assessment findings."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-chest-location"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3524001 "Left - Anterior"
* $nemsis-exam#3524005 "Right - Anterior"
* $nemsis-exam#3524009 "General - Anterior"
* $nemsis-exam#3524011 "General - Posterior"
* $nemsis-exam#3524013 "Left - Side"
* $nemsis-exam#3524015 "Right - Side"

// ── eExam.25 - Chest Assessment ───────────────────────────────
ValueSet: EMSExamChestVS
Id: vs-ems-exam-chest
Title: "EMS Chest Assessment"
Description: "NEMSIS eExam.25 - Physical findings on chest assessment."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-exam-chest"
* ^status = #active
* ^experimental = true
* $nemsis-exam#3525001 "Abrasion"
* $nemsis-exam#3525003 "Avulsion"
* $nemsis-exam#3525005 "Accessory Muscles Used with Breathing"
* $nemsis-exam#3525007 "Bleeding Controlled"
* $nemsis-exam#3525009 "Bleeding Uncontrolled"
* $nemsis-exam#3525011 "Burn-Blistering"
* $nemsis-exam#3525013 "Burn-Charring"
* $nemsis-exam#3525015 "Burn-Redness"
* $nemsis-exam#3525017 "Burn-White/Waxy"
* $nemsis-exam#3525019 "Crush Injury"
* $nemsis-exam#3525021 "Deformity"
* $nemsis-exam#3525023 "Flail Segment"
* $nemsis-exam#3525025 "Implanted Device"
* $nemsis-exam#3525027 "Laceration"
* $nemsis-exam#3525029 "Normal"
* $nemsis-exam#3525031 "Not Done"
* $nemsis-exam#3525033 "Pain"
* $nemsis-exam#3525035 "Pain with Inspiration/Expiration"
* $nemsis-exam#3525037 "Puncture/Stab Wound"
* $nemsis-exam#3525039 "Retraction"
* $nemsis-exam#3525041 "Tenderness"
* $nemsis-exam#3525043 "Gunshot Wound"
* $nemsis-exam#3525045 "Swelling"
* $nemsis-exam#3525047 "Contusion"
