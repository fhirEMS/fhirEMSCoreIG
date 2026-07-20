# NEMSIS Physical Exam Codes - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS Physical Exam Codes**

## CodeSystem: NEMSIS Physical Exam Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-exam | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISExam |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.5 | |

 
Enumeration codes for the NEMSIS eExam physical examination section. Covers body region assessments and finding location qualifiers. NEMSIS 3.5.1.251001CP2. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSExamAbdominalFindingLocationVS](ValueSet-vs-ems-exam-abd-location.md)
* [EMSExamAbdomenVS](ValueSet-vs-ems-exam-abdomen.md)
* [EMSExamBackSpineLocationVS](ValueSet-vs-ems-exam-back-location.md)
* [EMSExamBackSpineVS](ValueSet-vs-ems-exam-back-spine.md)
* [EMSExamChestVS](ValueSet-vs-ems-exam-chest.md)
* [EMSExamChestLocationVS](ValueSet-vs-ems-exam-chest-location.md)
* [EMSExamExtremitiesVS](ValueSet-vs-ems-exam-extremities.md)
* [EMSExamExtremityLocationVS](ValueSet-vs-ems-exam-extremity-location.md)
* [EMSExamEyeVS](ValueSet-vs-ems-exam-eye.md)
* [EMSExamEyeLocationVS](ValueSet-vs-ems-exam-eye-location.md)
* [EMSExamFaceVS](ValueSet-vs-ems-exam-face.md)
* [EMSExamHeadVS](ValueSet-vs-ems-exam-head.md)
* [EMSExamHeartVS](ValueSet-vs-ems-exam-heart.md)
* [EMSExamLengthTapeMeasureVS](ValueSet-vs-ems-exam-length-tape.md)
* [EMSExamLungVS](ValueSet-vs-ems-exam-lung.md)
* [EMSExamLungLocationVS](ValueSet-vs-ems-exam-lung-location.md)
* [EMSExamMentalStatusVS](ValueSet-vs-ems-exam-mental-status.md)
* [EMSExamNeckVS](ValueSet-vs-ems-exam-neck.md)
* [EMSExamNeurologicalVS](ValueSet-vs-ems-exam-neurological.md)
* [EMSExamPelvicGUVS](ValueSet-vs-ems-exam-pelvic-gu.md)
* [EMSExamSkinVS](ValueSet-vs-ems-exam-skin.md)
* [EMSExamStrokeSymptomsResolvedVS](ValueSet-vs-ems-exam-stroke-resolved.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-exam",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-exam",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.5"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISExam",
  "title" : "NEMSIS Physical Exam Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-19T20:45:43-04:00",
  "publisher" : "fhirEMSCore Research Project (AI-Generated — Unofficial)",
  "contact" : [{
    "name" : "fhirEMSCore Research Project (AI-Generated — Unofficial)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/fhirEMS/fhirEMSCoreIG"
    }]
  },
  {
    "name" : "fhirEMSCore Research Project",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/fhirEMS/fhirEMSCoreIG"
    }]
  }],
  "description" : "Enumeration codes for the NEMSIS eExam physical examination section. Covers body region assessments and finding location qualifiers. NEMSIS 3.5.1.251001CP2.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 457,
  "concept" : [{
    "code" : "3502001",
    "display" : "Blue"
  },
  {
    "code" : "3502003",
    "display" : "Green"
  },
  {
    "code" : "3502005",
    "display" : "Grey"
  },
  {
    "code" : "3502007",
    "display" : "Orange"
  },
  {
    "code" : "3502009",
    "display" : "Pink"
  },
  {
    "code" : "3502011",
    "display" : "Purple"
  },
  {
    "code" : "3502013",
    "display" : "Red"
  },
  {
    "code" : "3502015",
    "display" : "White"
  },
  {
    "code" : "3502017",
    "display" : "Yellow"
  },
  {
    "code" : "3504001",
    "display" : "Clammy"
  },
  {
    "code" : "3504003",
    "display" : "Cold"
  },
  {
    "code" : "3504005",
    "display" : "Cyanotic"
  },
  {
    "code" : "3504007",
    "display" : "Diaphoretic"
  },
  {
    "code" : "3504009",
    "display" : "Dry"
  },
  {
    "code" : "3504011",
    "display" : "Flushed"
  },
  {
    "code" : "3504013",
    "display" : "Hot"
  },
  {
    "code" : "3504015",
    "display" : "Jaundiced"
  },
  {
    "code" : "3504017",
    "display" : "Lividity"
  },
  {
    "code" : "3504019",
    "display" : "Mottled"
  },
  {
    "code" : "3504021",
    "display" : "Normal"
  },
  {
    "code" : "3504023",
    "display" : "Not Done"
  },
  {
    "code" : "3504025",
    "display" : "Pale"
  },
  {
    "code" : "3504027",
    "display" : "Poor Turgor"
  },
  {
    "code" : "3504029",
    "display" : "Red (Erythematous)"
  },
  {
    "code" : "3504031",
    "display" : "Tenting"
  },
  {
    "code" : "3504033",
    "display" : "Warm"
  },
  {
    "code" : "3504035",
    "display" : "Capillary Nail Bed Refill less than 2 seconds"
  },
  {
    "code" : "3504037",
    "display" : "Capillary Nail Bed Refill 2-4 seconds"
  },
  {
    "code" : "3504039",
    "display" : "Capillary Nail Bed Refill more than 4 seconds"
  },
  {
    "code" : "3505001",
    "display" : "Abrasion"
  },
  {
    "code" : "3505003",
    "display" : "Avulsion"
  },
  {
    "code" : "3505005",
    "display" : "Bleeding Controlled"
  },
  {
    "code" : "3505007",
    "display" : "Bleeding Uncontrolled"
  },
  {
    "code" : "3505009",
    "display" : "Burn-Blistering"
  },
  {
    "code" : "3505011",
    "display" : "Burn-Charring"
  },
  {
    "code" : "3505013",
    "display" : "Burn-Redness"
  },
  {
    "code" : "3505015",
    "display" : "Burn-White/Waxy"
  },
  {
    "code" : "3505017",
    "display" : "Decapitation"
  },
  {
    "code" : "3505019",
    "display" : "Deformity"
  },
  {
    "code" : "3505021",
    "display" : "Drainage"
  },
  {
    "code" : "3505023",
    "display" : "Foreign Body"
  },
  {
    "code" : "3505029",
    "display" : "Laceration"
  },
  {
    "code" : "3505031",
    "display" : "Mass/Lesion"
  },
  {
    "code" : "3505033",
    "display" : "Normal"
  },
  {
    "code" : "3505035",
    "display" : "Not Done"
  },
  {
    "code" : "3505037",
    "display" : "Pain"
  },
  {
    "code" : "3505039",
    "display" : "Puncture/Stab Wound"
  },
  {
    "code" : "3505045",
    "display" : "Gunshot Wound"
  },
  {
    "code" : "3505047",
    "display" : "Crush Injury"
  },
  {
    "code" : "3505049",
    "display" : "Swelling"
  },
  {
    "code" : "3505051",
    "display" : "Contusion"
  },
  {
    "code" : "3505053",
    "display" : "Tenderness"
  },
  {
    "code" : "3506001",
    "display" : "Abrasion"
  },
  {
    "code" : "3506003",
    "display" : "Asymmetric Smile or Droop"
  },
  {
    "code" : "3506005",
    "display" : "Avulsion"
  },
  {
    "code" : "3506007",
    "display" : "Bleeding Controlled"
  },
  {
    "code" : "3506009",
    "display" : "Bleeding Uncontrolled"
  },
  {
    "code" : "3506011",
    "display" : "Burn-Blistering"
  },
  {
    "code" : "3506013",
    "display" : "Burn-Charring"
  },
  {
    "code" : "3506015",
    "display" : "Burn-Redness"
  },
  {
    "code" : "3506017",
    "display" : "Burn-White/Waxy"
  },
  {
    "code" : "3506021",
    "display" : "Deformity"
  },
  {
    "code" : "3506023",
    "display" : "Drainage"
  },
  {
    "code" : "3506025",
    "display" : "Foreign Body"
  },
  {
    "code" : "3506031",
    "display" : "Laceration"
  },
  {
    "code" : "3506033",
    "display" : "Mass/Lesion"
  },
  {
    "code" : "3506035",
    "display" : "Normal"
  },
  {
    "code" : "3506037",
    "display" : "Not Done"
  },
  {
    "code" : "3506039",
    "display" : "Pain"
  },
  {
    "code" : "3506041",
    "display" : "Puncture/Stab Wound"
  },
  {
    "code" : "3506047",
    "display" : "Gunshot Wound"
  },
  {
    "code" : "3506049",
    "display" : "Crush Injury"
  },
  {
    "code" : "3506051",
    "display" : "Tenderness"
  },
  {
    "code" : "3506053",
    "display" : "Swelling"
  },
  {
    "code" : "3506055",
    "display" : "Contusion"
  },
  {
    "code" : "3507001",
    "display" : "Abrasion"
  },
  {
    "code" : "3507003",
    "display" : "Avulsion"
  },
  {
    "code" : "3507005",
    "display" : "Bleeding Controlled"
  },
  {
    "code" : "3507007",
    "display" : "Bleeding Uncontrolled"
  },
  {
    "code" : "3507009",
    "display" : "Burn-Blistering"
  },
  {
    "code" : "3507011",
    "display" : "Burn-Charring"
  },
  {
    "code" : "3507013",
    "display" : "Burn-Redness"
  },
  {
    "code" : "3507015",
    "display" : "Burn-White/Waxy"
  },
  {
    "code" : "3507017",
    "display" : "Decapitation"
  },
  {
    "code" : "3507019",
    "display" : "Foreign Body"
  },
  {
    "code" : "3507025",
    "display" : "JVD"
  },
  {
    "code" : "3507027",
    "display" : "Laceration"
  },
  {
    "code" : "3507029",
    "display" : "Normal"
  },
  {
    "code" : "3507031",
    "display" : "Not Done"
  },
  {
    "code" : "3507033",
    "display" : "Pain"
  },
  {
    "code" : "3507035",
    "display" : "Puncture/Stab Wound"
  },
  {
    "code" : "3507037",
    "display" : "Stridor"
  },
  {
    "code" : "3507039",
    "display" : "Subcutaneous Air"
  },
  {
    "code" : "3507045",
    "display" : "Tracheal Deviation-Left"
  },
  {
    "code" : "3507047",
    "display" : "Tracheal Deviation-Right"
  },
  {
    "code" : "3507049",
    "display" : "Gunshot Wound"
  },
  {
    "code" : "3507051",
    "display" : "Crush Injury"
  },
  {
    "code" : "3507053",
    "display" : "Swelling"
  },
  {
    "code" : "3507055",
    "display" : "Contusion"
  },
  {
    "code" : "3507057",
    "display" : "Deformity"
  },
  {
    "code" : "3507059",
    "display" : "Tenderness"
  },
  {
    "code" : "3509001",
    "display" : "Clicks"
  },
  {
    "code" : "3509003",
    "display" : "Heart Sounds Decreased"
  },
  {
    "code" : "3509005",
    "display" : "Murmur-Diastolic"
  },
  {
    "code" : "3509007",
    "display" : "Murmur-Systolic"
  },
  {
    "code" : "3509009",
    "display" : "Normal"
  },
  {
    "code" : "3509011",
    "display" : "Not Done"
  },
  {
    "code" : "3509013",
    "display" : "Rubs"
  },
  {
    "code" : "3509015",
    "display" : "S1"
  },
  {
    "code" : "3509017",
    "display" : "S2"
  },
  {
    "code" : "3509019",
    "display" : "S3"
  },
  {
    "code" : "3509021",
    "display" : "S4"
  },
  {
    "code" : "3510001",
    "display" : "Generalized"
  },
  {
    "code" : "3510003",
    "display" : "Left Lower Quadrant"
  },
  {
    "code" : "3510005",
    "display" : "Left Upper Quadrant"
  },
  {
    "code" : "3510007",
    "display" : "Periumbilical"
  },
  {
    "code" : "3510009",
    "display" : "Right Lower Quadrant"
  },
  {
    "code" : "3510011",
    "display" : "Right Upper Quadrant"
  },
  {
    "code" : "3510013",
    "display" : "Epigastric"
  },
  {
    "code" : "3511001",
    "display" : "Abrasion"
  },
  {
    "code" : "3511003",
    "display" : "Avulsion"
  },
  {
    "code" : "3511005",
    "display" : "Bleeding Controlled"
  },
  {
    "code" : "3511007",
    "display" : "Bleeding Uncontrolled"
  },
  {
    "code" : "3511009",
    "display" : "Bowel Sounds-Absent"
  },
  {
    "code" : "3511011",
    "display" : "Bowel Sounds-Present"
  },
  {
    "code" : "3511013",
    "display" : "Burn-Blistering"
  },
  {
    "code" : "3511015",
    "display" : "Burn-Charring"
  },
  {
    "code" : "3511017",
    "display" : "Burn-Redness"
  },
  {
    "code" : "3511019",
    "display" : "Burn-White/Waxy"
  },
  {
    "code" : "3511021",
    "display" : "Distention"
  },
  {
    "code" : "3511023",
    "display" : "Foreign Body"
  },
  {
    "code" : "3511025",
    "display" : "Guarding"
  },
  {
    "code" : "3511031",
    "display" : "Laceration"
  },
  {
    "code" : "3511033",
    "display" : "Mass/Lesion"
  },
  {
    "code" : "3511035",
    "display" : "Mass-Pulsating"
  },
  {
    "code" : "3511037",
    "display" : "Normal"
  },
  {
    "code" : "3511039",
    "display" : "Not Done"
  },
  {
    "code" : "3511041",
    "display" : "Pain"
  },
  {
    "code" : "3511043",
    "display" : "Pregnant-Palpable Uterus"
  },
  {
    "code" : "3511045",
    "display" : "Puncture/Stab Wound"
  },
  {
    "code" : "3511051",
    "display" : "Tenderness"
  },
  {
    "code" : "3511053",
    "display" : "Gunshot Wound"
  },
  {
    "code" : "3511055",
    "display" : "Crush Injury"
  },
  {
    "code" : "3511057",
    "display" : "Swelling"
  },
  {
    "code" : "3511059",
    "display" : "Contusion"
  },
  {
    "code" : "3511061",
    "display" : "Deformity"
  },
  {
    "code" : "3511063",
    "display" : "Rebound Tenderness"
  },
  {
    "code" : "3511065",
    "display" : "Rigidity"
  },
  {
    "code" : "3512001",
    "display" : "Abrasion"
  },
  {
    "code" : "3512003",
    "display" : "Avulsion"
  },
  {
    "code" : "3512005",
    "display" : "Bleeding Controlled"
  },
  {
    "code" : "3512007",
    "display" : "Bleeding Uncontrolled"
  },
  {
    "code" : "3512009",
    "display" : "Bleeding-Rectal"
  },
  {
    "code" : "3512011",
    "display" : "Bleeding-Urethral"
  },
  {
    "code" : "3512013",
    "display" : "Bleeding-Vaginal"
  },
  {
    "code" : "3512015",
    "display" : "Burn-Blistering"
  },
  {
    "code" : "3512017",
    "display" : "Burn-Charring"
  },
  {
    "code" : "3512019",
    "display" : "Burn-Redness"
  },
  {
    "code" : "3512021",
    "display" : "Burn-White/Waxy"
  },
  {
    "code" : "3512023",
    "display" : "Deformity"
  },
  {
    "code" : "3512025",
    "display" : "Foreign Body"
  },
  {
    "code" : "3512027",
    "display" : "Genital Injury"
  },
  {
    "code" : "3512033",
    "display" : "Laceration"
  },
  {
    "code" : "3512035",
    "display" : "Mass/Lesion"
  },
  {
    "code" : "3512037",
    "display" : "Normal"
  },
  {
    "code" : "3512039",
    "display" : "Not Done"
  },
  {
    "code" : "3512041",
    "display" : "Pain"
  },
  {
    "code" : "3512043",
    "display" : "Pelvic Fracture"
  },
  {
    "code" : "3512045",
    "display" : "Pelvic Instability"
  },
  {
    "code" : "3512047",
    "display" : "Penile Priapism/Erection"
  },
  {
    "code" : "3512049",
    "display" : "Pregnant-Crowning"
  },
  {
    "code" : "3512051",
    "display" : "Puncture/Stab Wound"
  },
  {
    "code" : "3512057",
    "display" : "Tenderness"
  },
  {
    "code" : "3512059",
    "display" : "Gunshot Wound"
  },
  {
    "code" : "3512061",
    "display" : "Crush Injury"
  },
  {
    "code" : "3512063",
    "display" : "Swelling"
  },
  {
    "code" : "3512065",
    "display" : "Contusion"
  },
  {
    "code" : "3513001",
    "display" : "Back-General"
  },
  {
    "code" : "3513003",
    "display" : "Cervical-Left"
  },
  {
    "code" : "3513005",
    "display" : "Cervical-Midline"
  },
  {
    "code" : "3513007",
    "display" : "Cervical-Right"
  },
  {
    "code" : "3513009",
    "display" : "Lumbar-Left"
  },
  {
    "code" : "3513011",
    "display" : "Lumbar-Midline"
  },
  {
    "code" : "3513013",
    "display" : "Lumbar-Right"
  },
  {
    "code" : "3513015",
    "display" : "Thoracic-Left"
  },
  {
    "code" : "3513017",
    "display" : "Thoracic-Midline"
  },
  {
    "code" : "3513019",
    "display" : "Thoracic-Right"
  },
  {
    "code" : "3513021",
    "display" : "Sacral-Left"
  },
  {
    "code" : "3513023",
    "display" : "Sacral-Midline"
  },
  {
    "code" : "3513025",
    "display" : "Sacral-Right"
  },
  {
    "code" : "3513029",
    "display" : "Flank-Left"
  },
  {
    "code" : "3513031",
    "display" : "Flank-Right"
  },
  {
    "code" : "3514001",
    "display" : "Abrasion"
  },
  {
    "code" : "3514003",
    "display" : "Avulsion"
  },
  {
    "code" : "3514005",
    "display" : "Bleeding Controlled"
  },
  {
    "code" : "3514007",
    "display" : "Bleeding Uncontrolled"
  },
  {
    "code" : "3514009",
    "display" : "Burn-Blistering"
  },
  {
    "code" : "3514011",
    "display" : "Burn-Charring"
  },
  {
    "code" : "3514013",
    "display" : "Burn-Redness"
  },
  {
    "code" : "3514015",
    "display" : "Burn-White/Waxy"
  },
  {
    "code" : "3514017",
    "display" : "Deformity"
  },
  {
    "code" : "3514019",
    "display" : "Foreign Body"
  },
  {
    "code" : "3514025",
    "display" : "Laceration"
  },
  {
    "code" : "3514027",
    "display" : "Normal"
  },
  {
    "code" : "3514029",
    "display" : "Not Done"
  },
  {
    "code" : "3514031",
    "display" : "Pain"
  },
  {
    "code" : "3514033",
    "display" : "Pain with Range of Motion"
  },
  {
    "code" : "3514035",
    "display" : "Puncture/Stab Wound"
  },
  {
    "code" : "3514041",
    "display" : "Tenderness Costovertebral Angle"
  },
  {
    "code" : "3514043",
    "display" : "Tenderness Midline Spinous Process"
  },
  {
    "code" : "3514045",
    "display" : "Tenderness Paraspinous"
  },
  {
    "code" : "3514047",
    "display" : "Gunshot Wound"
  },
  {
    "code" : "3514049",
    "display" : "Crush Injury"
  },
  {
    "code" : "3514051",
    "display" : "Swelling"
  },
  {
    "code" : "3514053",
    "display" : "Contusion"
  },
  {
    "code" : "3514055",
    "display" : "Tenderness"
  },
  {
    "code" : "3515001",
    "display" : "Ankle-Left"
  },
  {
    "code" : "3515003",
    "display" : "Ankle-Right"
  },
  {
    "code" : "3515005",
    "display" : "Arm-Upper-Left"
  },
  {
    "code" : "3515007",
    "display" : "Arm-Upper-Right"
  },
  {
    "code" : "3515009",
    "display" : "Elbow-Left"
  },
  {
    "code" : "3515011",
    "display" : "Elbow-Right"
  },
  {
    "code" : "3515013",
    "display" : "Finger-2nd (Index)-Left"
  },
  {
    "code" : "3515015",
    "display" : "Finger-2nd (Index)-Right"
  },
  {
    "code" : "3515017",
    "display" : "Finger-3rd (Middle)-Left"
  },
  {
    "code" : "3515019",
    "display" : "Finger-3rd (Middle)-Right"
  },
  {
    "code" : "3515021",
    "display" : "Finger-4th (Ring)-Left"
  },
  {
    "code" : "3515023",
    "display" : "Finger-4th (Ring)-Right"
  },
  {
    "code" : "3515025",
    "display" : "Finger-5th (Smallest)-Left"
  },
  {
    "code" : "3515027",
    "display" : "Finger-5th (Smallest)-Right"
  },
  {
    "code" : "3515029",
    "display" : "Foot-Dorsal-Left"
  },
  {
    "code" : "3515031",
    "display" : "Foot-Dorsal-Right"
  },
  {
    "code" : "3515033",
    "display" : "Foot-Plantar-Left"
  },
  {
    "code" : "3515035",
    "display" : "Foot-Plantar-Right"
  },
  {
    "code" : "3515037",
    "display" : "Arm-Lower-Left"
  },
  {
    "code" : "3515039",
    "display" : "Arm-Lower-Right"
  },
  {
    "code" : "3515041",
    "display" : "Hand-Dorsal-Left"
  },
  {
    "code" : "3515043",
    "display" : "Hand-Dorsal-Right"
  },
  {
    "code" : "3515045",
    "display" : "Hand-Palm-Left"
  },
  {
    "code" : "3515047",
    "display" : "Hand-Palm-Right"
  },
  {
    "code" : "3515049",
    "display" : "Hip-Left"
  },
  {
    "code" : "3515051",
    "display" : "Hip-Right"
  },
  {
    "code" : "3515053",
    "display" : "Knee-Left"
  },
  {
    "code" : "3515055",
    "display" : "Knee-Right"
  },
  {
    "code" : "3515057",
    "display" : "Leg-Lower-Left"
  },
  {
    "code" : "3515059",
    "display" : "Leg-Lower-Right"
  },
  {
    "code" : "3515061",
    "display" : "Leg-Upper-Left"
  },
  {
    "code" : "3515063",
    "display" : "Leg-Upper-Right"
  },
  {
    "code" : "3515065",
    "display" : "Shoulder-Left"
  },
  {
    "code" : "3515067",
    "display" : "Shoulder-Right"
  },
  {
    "code" : "3515069",
    "display" : "Thumb-Left"
  },
  {
    "code" : "3515071",
    "display" : "Thumb-Right"
  },
  {
    "code" : "3515073",
    "display" : "Toe-1st (Big)-Left"
  },
  {
    "code" : "3515075",
    "display" : "Toe-1st (Big)-Right"
  },
  {
    "code" : "3515077",
    "display" : "Toe-2nd-Left"
  },
  {
    "code" : "3515079",
    "display" : "Toe-2nd-Right"
  },
  {
    "code" : "3515081",
    "display" : "Toe-3rd-Left"
  },
  {
    "code" : "3515083",
    "display" : "Toe-3rd-Right"
  },
  {
    "code" : "3515085",
    "display" : "Toe-4th-Left"
  },
  {
    "code" : "3515087",
    "display" : "Toe-4th-Right"
  },
  {
    "code" : "3515089",
    "display" : "Toe-5th (Smallest)-Left"
  },
  {
    "code" : "3515091",
    "display" : "Toe-5th (Smallest)-Right"
  },
  {
    "code" : "3515093",
    "display" : "Wrist-Left"
  },
  {
    "code" : "3515095",
    "display" : "Wrist-Right"
  },
  {
    "code" : "3515097",
    "display" : "Arm-Whole Arm and Hand-Left"
  },
  {
    "code" : "3515099",
    "display" : "Arm-Whole Arm and Hand-Right"
  },
  {
    "code" : "3515101",
    "display" : "Hand-Whole Hand-Left"
  },
  {
    "code" : "3515103",
    "display" : "Hand-Whole Hand-Right"
  },
  {
    "code" : "3515105",
    "display" : "Leg-Whole Leg-Left"
  },
  {
    "code" : "3515107",
    "display" : "Leg-Whole Leg-Right"
  },
  {
    "code" : "3515109",
    "display" : "Foot-Whole Foot-Left"
  },
  {
    "code" : "3515111",
    "display" : "Foot-Whole Foot-Right"
  },
  {
    "code" : "3516001",
    "display" : "Abrasion"
  },
  {
    "code" : "3516003",
    "display" : "Amputation-Acute"
  },
  {
    "code" : "3516005",
    "display" : "Amputation-Previous"
  },
  {
    "code" : "3516007",
    "display" : "Avulsion"
  },
  {
    "code" : "3516009",
    "display" : "Bleeding Controlled"
  },
  {
    "code" : "3516011",
    "display" : "Bleeding Uncontrolled"
  },
  {
    "code" : "3516013",
    "display" : "Burn-Blistering"
  },
  {
    "code" : "3516015",
    "display" : "Burn-Charring"
  },
  {
    "code" : "3516017",
    "display" : "Burn-Redness"
  },
  {
    "code" : "3516019",
    "display" : "Burn-White/Waxy"
  },
  {
    "code" : "3516021",
    "display" : "Clubbing (of fingers)"
  },
  {
    "code" : "3516023",
    "display" : "Crush Injury"
  },
  {
    "code" : "3516025",
    "display" : "Deformity"
  },
  {
    "code" : "3516027",
    "display" : "Dislocation"
  },
  {
    "code" : "3516029",
    "display" : "Edema"
  },
  {
    "code" : "3516031",
    "display" : "Foreign Body"
  },
  {
    "code" : "3516033",
    "display" : "Fracture-Closed"
  },
  {
    "code" : "3516035",
    "display" : "Fracture-Open"
  },
  {
    "code" : "3516041",
    "display" : "Laceration"
  },
  {
    "code" : "3516043",
    "display" : "Motor Function-Abnormal/Weakness"
  },
  {
    "code" : "3516045",
    "display" : "Motor Function-Absent"
  },
  {
    "code" : "3516047",
    "display" : "Motor Function-Normal"
  },
  {
    "code" : "3516049",
    "display" : "Normal"
  },
  {
    "code" : "3516051",
    "display" : "Not Done"
  },
  {
    "code" : "3516053",
    "display" : "Pain"
  },
  {
    "code" : "3516055",
    "display" : "Paralysis"
  },
  {
    "code" : "3516057",
    "display" : "Pulse-Abnormal"
  },
  {
    "code" : "3516059",
    "display" : "Pulse-Absent"
  },
  {
    "code" : "3516061",
    "display" : "Pulse-Normal"
  },
  {
    "code" : "3516063",
    "display" : "Puncture/Stab Wound"
  },
  {
    "code" : "3516065",
    "display" : "Sensation-Abnormal"
  },
  {
    "code" : "3516067",
    "display" : "Sensation-Absent"
  },
  {
    "code" : "3516069",
    "display" : "Sensation-Normal"
  },
  {
    "code" : "3516075",
    "display" : "Tenderness"
  },
  {
    "code" : "3516077",
    "display" : "Gunshot Wound"
  },
  {
    "code" : "3516079",
    "display" : "Swelling"
  },
  {
    "code" : "3516081",
    "display" : "Contusion"
  },
  {
    "code" : "3516083",
    "display" : "Arm Drift"
  },
  {
    "code" : "3516085",
    "display" : "Cool/Cold to Touch"
  },
  {
    "code" : "3516087",
    "display" : "Cyanosis"
  },
  {
    "code" : "3516089",
    "display" : "Erythema/Flushing"
  },
  {
    "code" : "3516091",
    "display" : "Hot/Warm to Touch"
  },
  {
    "code" : "3516093",
    "display" : "Lividity"
  },
  {
    "code" : "3516095",
    "display" : "Mottled"
  },
  {
    "code" : "3516097",
    "display" : "Pale"
  },
  {
    "code" : "3517001",
    "display" : "Bilateral"
  },
  {
    "code" : "3517003",
    "display" : "Left"
  },
  {
    "code" : "3517005",
    "display" : "Right"
  },
  {
    "code" : "3518001",
    "display" : "1-mm"
  },
  {
    "code" : "3518003",
    "display" : "2-mm"
  },
  {
    "code" : "3518005",
    "display" : "3-mm"
  },
  {
    "code" : "3518007",
    "display" : "4-mm"
  },
  {
    "code" : "3518009",
    "display" : "5-mm"
  },
  {
    "code" : "3518011",
    "display" : "6-mm"
  },
  {
    "code" : "3518013",
    "display" : "7-mm"
  },
  {
    "code" : "3518015",
    "display" : "8-mm or >"
  },
  {
    "code" : "3518017",
    "display" : "Blind"
  },
  {
    "code" : "3518019",
    "display" : "Cataract Present"
  },
  {
    "code" : "3518021",
    "display" : "Clouded"
  },
  {
    "code" : "3518023",
    "display" : "Deformity"
  },
  {
    "code" : "3518025",
    "display" : "Dysconjugate Gaze"
  },
  {
    "code" : "3518027",
    "display" : "Foreign Body"
  },
  {
    "code" : "3518029",
    "display" : "Glaucoma Present"
  },
  {
    "code" : "3518031",
    "display" : "Hyphema"
  },
  {
    "code" : "3518033",
    "display" : "Jaundiced Sclera"
  },
  {
    "code" : "3518035",
    "display" : "Missing"
  },
  {
    "code" : "3518037",
    "display" : "Non-Reactive"
  },
  {
    "code" : "3518039",
    "display" : "Not Done"
  },
  {
    "code" : "3518041",
    "display" : "Non-Reactive Prosthetic"
  },
  {
    "code" : "3518043",
    "display" : "Nystagmus Noted"
  },
  {
    "code" : "3518045",
    "display" : "Open Globe"
  },
  {
    "code" : "3518047",
    "display" : "PERRL"
  },
  {
    "code" : "3518049",
    "display" : "Pupil-Irregular/Teardrop"
  },
  {
    "code" : "3518051",
    "display" : "Reactive"
  },
  {
    "code" : "3518053",
    "display" : "Sluggish"
  },
  {
    "code" : "3518055",
    "display" : "Swelling"
  },
  {
    "code" : "3518057",
    "display" : "Contusion"
  },
  {
    "code" : "3518059",
    "display" : "Puncture/Stab Wound"
  },
  {
    "code" : "3518061",
    "display" : "Dilated"
  },
  {
    "code" : "3518063",
    "display" : "Pin Point"
  },
  {
    "code" : "3519001",
    "display" : "Combative"
  },
  {
    "code" : "3519003",
    "display" : "Confused"
  },
  {
    "code" : "3519005",
    "display" : "Hallucinations"
  },
  {
    "code" : "3519007",
    "display" : "Normal Baseline for Patient"
  },
  {
    "code" : "3519009",
    "display" : "Not Done"
  },
  {
    "code" : "3519011",
    "display" : "Oriented-Person"
  },
  {
    "code" : "3519013",
    "display" : "Oriented-Place"
  },
  {
    "code" : "3519015",
    "display" : "Oriented-Event"
  },
  {
    "code" : "3519017",
    "display" : "Oriented-Time"
  },
  {
    "code" : "3519021",
    "display" : "Unresponsive"
  },
  {
    "code" : "3519023",
    "display" : "Agitation"
  },
  {
    "code" : "3519025",
    "display" : "Somnolent"
  },
  {
    "code" : "3519027",
    "display" : "Stupor"
  },
  {
    "code" : "3519029",
    "display" : "Altered mental status, unspecified"
  },
  {
    "code" : "3519031",
    "display" : "Developmentally Impaired"
  },
  {
    "code" : "3519033",
    "display" : "Disorientation, unspecified"
  },
  {
    "code" : "3519035",
    "display" : "Pharmacologically Paralyzed"
  },
  {
    "code" : "3519037",
    "display" : "Pharmacologically Sedated"
  },
  {
    "code" : "3519039",
    "display" : "Psychologically Impaired"
  },
  {
    "code" : "3519041",
    "display" : "Slowness and poor responsiveness"
  },
  {
    "code" : "3519043",
    "display" : "State of emotional shock and stress, unspecified"
  },
  {
    "code" : "3519045",
    "display" : "Strange and inexplicable behavior"
  },
  {
    "code" : "3519047",
    "display" : "Uncooperative"
  },
  {
    "code" : "3519049",
    "display" : "Unspecified coma"
  },
  {
    "code" : "3520001",
    "display" : "Aphagia"
  },
  {
    "code" : "3520003",
    "display" : "Aphasia"
  },
  {
    "code" : "3520005",
    "display" : "Cerebellar Function-Abnormal"
  },
  {
    "code" : "3520007",
    "display" : "Cerebellar Function-Normal"
  },
  {
    "code" : "3520009",
    "display" : "Decerebrate Posturing"
  },
  {
    "code" : "3520011",
    "display" : "Decorticate Posturing"
  },
  {
    "code" : "3520013",
    "display" : "Gait-Abnormal"
  },
  {
    "code" : "3520015",
    "display" : "Gait-Normal"
  },
  {
    "code" : "3520017",
    "display" : "Hemiplegia-Left"
  },
  {
    "code" : "3520019",
    "display" : "Hemiplegia-Right"
  },
  {
    "code" : "3520021",
    "display" : "Normal Baseline for Patient"
  },
  {
    "code" : "3520023",
    "display" : "Not Done"
  },
  {
    "code" : "3520026",
    "display" : "Status Seizure"
  },
  {
    "code" : "3520027",
    "display" : "Speech Normal"
  },
  {
    "code" : "3520029",
    "display" : "Speech Slurring"
  },
  {
    "code" : "3520031",
    "display" : "Strength-Asymmetric"
  },
  {
    "code" : "3520033",
    "display" : "Strength-Normal"
  },
  {
    "code" : "3520035",
    "display" : "Strength-Symmetric"
  },
  {
    "code" : "3520037",
    "display" : "Tremors"
  },
  {
    "code" : "3520039",
    "display" : "Weakness-Facial Droop-Left"
  },
  {
    "code" : "3520041",
    "display" : "Weakness-Facial Droop-Right"
  },
  {
    "code" : "3520043",
    "display" : "Weakness-Left Sided"
  },
  {
    "code" : "3520045",
    "display" : "Weakness-Right Sided"
  },
  {
    "code" : "3520051",
    "display" : "Arm Drift-Left"
  },
  {
    "code" : "3520053",
    "display" : "Arm Drift-Right"
  },
  {
    "code" : "3520055",
    "display" : "Other Seizures"
  },
  {
    "code" : "3521001",
    "display" : "No"
  },
  {
    "code" : "3521003",
    "display" : "Yes-Resolved Prior to EMS Arrival"
  },
  {
    "code" : "3521005",
    "display" : "Yes-Resolved in EMS Presence"
  },
  {
    "code" : "3522001",
    "display" : "Left"
  },
  {
    "code" : "3522003",
    "display" : "Right"
  },
  {
    "code" : "3522005",
    "display" : "Bilateral"
  },
  {
    "code" : "3523001",
    "display" : "Breath Sounds-Absent"
  },
  {
    "code" : "3523003",
    "display" : "Breath Sounds-Decreased"
  },
  {
    "code" : "3523005",
    "display" : "Breath Sounds-Equal"
  },
  {
    "code" : "3523007",
    "display" : "Breath Sounds-Normal"
  },
  {
    "code" : "3523009",
    "display" : "Foreign Body"
  },
  {
    "code" : "3523011",
    "display" : "Increased Respiratory Effort"
  },
  {
    "code" : "3523013",
    "display" : "Normal"
  },
  {
    "code" : "3523015",
    "display" : "Not Done"
  },
  {
    "code" : "3523017",
    "display" : "Pain"
  },
  {
    "code" : "3523019",
    "display" : "Pain with Inspiration/Expiration"
  },
  {
    "code" : "3523021",
    "display" : "Rales"
  },
  {
    "code" : "3523023",
    "display" : "Rhonchi"
  },
  {
    "code" : "3523025",
    "display" : "Rhonchi/Wheezing"
  },
  {
    "code" : "3523027",
    "display" : "Stridor"
  },
  {
    "code" : "3523029",
    "display" : "Wheezing-Expiratory"
  },
  {
    "code" : "3523031",
    "display" : "Wheezing-Inspiratory"
  },
  {
    "code" : "3524001",
    "display" : "Left - Anterior"
  },
  {
    "code" : "3524003",
    "display" : "Left - Posterior (DEPRECATED)"
  },
  {
    "code" : "3524005",
    "display" : "Right - Anterior"
  },
  {
    "code" : "3524007",
    "display" : "Right - Posterior (DEPRECATED)"
  },
  {
    "code" : "3524009",
    "display" : "General - Anterior"
  },
  {
    "code" : "3524011",
    "display" : "General - Posterior"
  },
  {
    "code" : "3524013",
    "display" : "Left - Side"
  },
  {
    "code" : "3524015",
    "display" : "Right - Side"
  },
  {
    "code" : "3525001",
    "display" : "Abrasion"
  },
  {
    "code" : "3525003",
    "display" : "Avulsion"
  },
  {
    "code" : "3525005",
    "display" : "Accessory Muscles Used with Breathing"
  },
  {
    "code" : "3525007",
    "display" : "Bleeding Controlled"
  },
  {
    "code" : "3525009",
    "display" : "Bleeding Uncontrolled"
  },
  {
    "code" : "3525011",
    "display" : "Burn-Blistering"
  },
  {
    "code" : "3525013",
    "display" : "Burn-Charring"
  },
  {
    "code" : "3525015",
    "display" : "Burn-Redness"
  },
  {
    "code" : "3525017",
    "display" : "Burn-White/Waxy"
  },
  {
    "code" : "3525019",
    "display" : "Crush Injury"
  },
  {
    "code" : "3525021",
    "display" : "Deformity"
  },
  {
    "code" : "3525023",
    "display" : "Flail Segment"
  },
  {
    "code" : "3525025",
    "display" : "Implanted Device"
  },
  {
    "code" : "3525027",
    "display" : "Laceration"
  },
  {
    "code" : "3525029",
    "display" : "Normal"
  },
  {
    "code" : "3525031",
    "display" : "Not Done"
  },
  {
    "code" : "3525033",
    "display" : "Pain"
  },
  {
    "code" : "3525035",
    "display" : "Pain with Inspiration/Expiration"
  },
  {
    "code" : "3525037",
    "display" : "Puncture/Stab Wound"
  },
  {
    "code" : "3525039",
    "display" : "Retraction"
  },
  {
    "code" : "3525041",
    "display" : "Tenderness"
  },
  {
    "code" : "3525043",
    "display" : "Gunshot Wound"
  },
  {
    "code" : "3525045",
    "display" : "Swelling"
  },
  {
    "code" : "3525047",
    "display" : "Contusion"
  },
  {
    "code" : "3525049",
    "display" : "Tenderness-General (DEPRECATED)"
  }]
}

```
