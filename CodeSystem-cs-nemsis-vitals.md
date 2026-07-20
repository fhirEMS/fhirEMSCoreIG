# NEMSIS Vital Signs Codes - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS Vital Signs Codes**

## CodeSystem: NEMSIS Vital Signs Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-vitals | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISVitals |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.16 | |

 
Enumeration codes from the NEMSIS eVitals section (NEMSIS 3.5.1.251001CP2). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSAVPUVs](ValueSet-vs-ems-avpu.md)
* [EMSBPMethodVS](ValueSet-vs-ems-bp-method.md)
* [EMSCardiacRhythmVS](ValueSet-vs-ems-cardiac-rhythm.md)
* [EMSECGMethodVS](ValueSet-vs-ems-ecg-method.md)
* [EMSECGTypeVS](ValueSet-vs-ems-ecg-type.md)
* [EMSGCSQualifierVS](ValueSet-vs-ems-gcs-qualifier.md)
* [EMSPainScaleTypeVS](ValueSet-vs-ems-pain-scale-type.md)
* [EMSPulseRhythmVS](ValueSet-vs-ems-pulse-rhythm.md)
* [EMSReperfusionChecklistVS](ValueSet-vs-ems-reperfusion-checklist.md)
* [EMSRespiratoryEffortVS](ValueSet-vs-ems-respiratory-effort.md)
* [EMSStrokeScaleResultVS](ValueSet-vs-ems-stroke-scale-result.md)
* [EMSStrokeScaleTypeVS](ValueSet-vs-ems-stroke-scale-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-vitals",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-vitals",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.16"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISVitals",
  "title" : "NEMSIS Vital Signs Codes",
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
  "description" : "Enumeration codes from the NEMSIS eVitals section (NEMSIS 3.5.1.251001CP2).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 101,
  "concept" : [{
    "code" : "9901001",
    "display" : "Agonal/Idioventricular"
  },
  {
    "code" : "9901003",
    "display" : "Asystole"
  },
  {
    "code" : "9901005",
    "display" : "Artifact"
  },
  {
    "code" : "9901007",
    "display" : "Atrial Fibrillation"
  },
  {
    "code" : "9901009",
    "display" : "Atrial Flutter"
  },
  {
    "code" : "9901011",
    "display" : "AV Block-1st Degree"
  },
  {
    "code" : "9901013",
    "display" : "AV Block-2nd Degree-Type 1"
  },
  {
    "code" : "9901015",
    "display" : "AV Block-2nd Degree-Type 2"
  },
  {
    "code" : "9901017",
    "display" : "AV Block-3rd Degree"
  },
  {
    "code" : "9901019",
    "display" : "Junctional"
  },
  {
    "code" : "9901021",
    "display" : "Left Bundle Branch Block"
  },
  {
    "code" : "9901023",
    "display" : "Non-STEMI Anterior Ischemia"
  },
  {
    "code" : "9901025",
    "display" : "Non-STEMI Inferior Ischemia"
  },
  {
    "code" : "9901027",
    "display" : "Non-STEMI Lateral Ischemia"
  },
  {
    "code" : "9901029",
    "display" : "Non-STEMI Posterior Ischemia"
  },
  {
    "code" : "9901030",
    "display" : "Non-STEMI Septal Ischemia"
  },
  {
    "code" : "9901031",
    "display" : "Other"
  },
  {
    "code" : "9901033",
    "display" : "Paced Rhythm"
  },
  {
    "code" : "9901035",
    "display" : "PEA"
  },
  {
    "code" : "9901037",
    "display" : "Premature Atrial Contractions"
  },
  {
    "code" : "9901039",
    "display" : "Premature Ventricular Contractions"
  },
  {
    "code" : "9901041",
    "display" : "Right Bundle Branch Block"
  },
  {
    "code" : "9901043",
    "display" : "Sinus Arrhythmia"
  },
  {
    "code" : "9901045",
    "display" : "Sinus Bradycardia"
  },
  {
    "code" : "9901047",
    "display" : "Sinus Rhythm"
  },
  {
    "code" : "9901049",
    "display" : "Sinus Tachycardia"
  },
  {
    "code" : "9901051",
    "display" : "STEMI Anterior Ischemia"
  },
  {
    "code" : "9901053",
    "display" : "STEMI Inferior Ischemia"
  },
  {
    "code" : "9901055",
    "display" : "STEMI Lateral Ischemia"
  },
  {
    "code" : "9901057",
    "display" : "STEMI Posterior Ischemia"
  },
  {
    "code" : "9901058",
    "display" : "STEMI Septal Ischemia"
  },
  {
    "code" : "9901059",
    "display" : "Supraventricular Tachycardia"
  },
  {
    "code" : "9901061",
    "display" : "Torsades De Points"
  },
  {
    "code" : "9901063",
    "display" : "Unknown AED Non-Shockable Rhythm"
  },
  {
    "code" : "9901065",
    "display" : "Unknown AED Shockable Rhythm"
  },
  {
    "code" : "9901067",
    "display" : "Ventricular Fibrillation"
  },
  {
    "code" : "9901069",
    "display" : "Ventricular Tachycardia (With Pulse)"
  },
  {
    "code" : "9901071",
    "display" : "Ventricular Tachycardia (Pulseless)"
  },
  {
    "code" : "3304000",
    "display" : "2 Lead ECG (pads or paddles)"
  },
  {
    "code" : "3304001",
    "display" : "3 Lead"
  },
  {
    "code" : "3304003",
    "display" : "4 Lead"
  },
  {
    "code" : "3304005",
    "display" : "5 Lead"
  },
  {
    "code" : "3304007",
    "display" : "12 Lead-Left Sided (Normal)"
  },
  {
    "code" : "3304009",
    "display" : "12 Lead-Right Sided"
  },
  {
    "code" : "3304011",
    "display" : "15 Lead"
  },
  {
    "code" : "3304013",
    "display" : "18 Lead"
  },
  {
    "code" : "3304015",
    "display" : "Other"
  },
  {
    "code" : "3305001",
    "display" : "Computer Interpretation"
  },
  {
    "code" : "3305003",
    "display" : "Manual Interpretation"
  },
  {
    "code" : "3305005",
    "display" : "Transmission with No Interpretation"
  },
  {
    "code" : "3305007",
    "display" : "Transmission with Remote Interpretation"
  },
  {
    "code" : "3308001",
    "display" : "Arterial Line"
  },
  {
    "code" : "3308003",
    "display" : "Doppler"
  },
  {
    "code" : "3308005",
    "display" : "Cuff-Automated"
  },
  {
    "code" : "3308007",
    "display" : "Cuff-Manual Auscultated"
  },
  {
    "code" : "3308009",
    "display" : "Cuff-Manual Palpated Only"
  },
  {
    "code" : "3308011",
    "display" : "Venous Line"
  },
  {
    "code" : "3313001",
    "display" : "Irregularly Irregular"
  },
  {
    "code" : "3313003",
    "display" : "Regular"
  },
  {
    "code" : "3313005",
    "display" : "Regularly Irregular"
  },
  {
    "code" : "3315001",
    "display" : "Apneic"
  },
  {
    "code" : "3315003",
    "display" : "Labored"
  },
  {
    "code" : "3315005",
    "display" : "Mechanically Assisted (BVM, CPAP, etc.)"
  },
  {
    "code" : "3315007",
    "display" : "Normal"
  },
  {
    "code" : "3315009",
    "display" : "Rapid"
  },
  {
    "code" : "3315011",
    "display" : "Shallow"
  },
  {
    "code" : "3315013",
    "display" : "Weak/Agonal"
  },
  {
    "code" : "3322001",
    "display" : "Eye Obstruction Prevents Eye Assessment"
  },
  {
    "code" : "3322003",
    "display" : "Initial GCS has legitimate values without interventions"
  },
  {
    "code" : "3322005",
    "display" : "Patient Chemically Paralyzed"
  },
  {
    "code" : "3322007",
    "display" : "Patient Chemically Sedated"
  },
  {
    "code" : "3322009",
    "display" : "Patient Intubated"
  },
  {
    "code" : "3326001",
    "display" : "Alert"
  },
  {
    "code" : "3326003",
    "display" : "Verbal"
  },
  {
    "code" : "3326005",
    "display" : "Painful"
  },
  {
    "code" : "3326007",
    "display" : "Unresponsive"
  },
  {
    "code" : "3328001",
    "display" : "FLACC (Face, Legs, Activity, Cry, Consolability)"
  },
  {
    "code" : "3328003",
    "display" : "Numeric (0-10)"
  },
  {
    "code" : "3328005",
    "display" : "Other"
  },
  {
    "code" : "3328007",
    "display" : "Wong-Baker (FACES)"
  },
  {
    "code" : "3329001",
    "display" : "Negative"
  },
  {
    "code" : "3329003",
    "display" : "Non-Conclusive"
  },
  {
    "code" : "3329005",
    "display" : "Positive"
  },
  {
    "code" : "3330001",
    "display" : "Cincinnati Prehospital Stroke Scale (CPSS)"
  },
  {
    "code" : "3330004",
    "display" : "Los Angeles Prehospital Stroke Screen (LAPSS)"
  },
  {
    "code" : "3330005",
    "display" : "Massachusetts Stroke Scale (MSS)"
  },
  {
    "code" : "3330007",
    "display" : "Miami Emergency Neurologic Deficit Exam (MEND)"
  },
  {
    "code" : "3330009",
    "display" : "NIH Stroke Scale (NIHSS)"
  },
  {
    "code" : "3330011",
    "display" : "Other Stroke Scale Type"
  },
  {
    "code" : "3330013",
    "display" : "FAST"
  },
  {
    "code" : "3330015",
    "display" : "Boston Stroke Scale (BOSS)"
  },
  {
    "code" : "3330017",
    "display" : "Ontario Prehospital Stroke Scale (OPSS)"
  },
  {
    "code" : "3330019",
    "display" : "Melbourne Ambulance Stroke Screen (MASS)"
  },
  {
    "code" : "3330021",
    "display" : "Rapid Arterial oCclusion Evaluation (RACE)"
  },
  {
    "code" : "3330023",
    "display" : "Los Angeles Motor Score (LAMS)"
  },
  {
    "code" : "3330025",
    "display" : "Vision, Aphasia, Neglect (VAN)"
  },
  {
    "code" : "3330027",
    "display" : "FAST-ED"
  },
  {
    "code" : "3330029",
    "display" : "BEFAST"
  },
  {
    "code" : "3331001",
    "display" : "Definite Contraindications to Thrombolytic Use"
  },
  {
    "code" : "3331003",
    "display" : "No Contraindications to Thrombolytic Use"
  },
  {
    "code" : "3331005",
    "display" : "Possible Contraindications to Thrombolytic Use"
  }]
}

```
