# EMS Cardiac Rhythm - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Cardiac Rhythm**

## ValueSet: EMS Cardiac Rhythm 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-cardiac-rhythm | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSCardiacRhythmVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.30 | |

 
NEMSIS eVitals.03 - Cardiac rhythm or ECG interpretation. 

 **References** 

* [EMS Cardiac Arrest Context](StructureDefinition-ext-ems-arrest-context.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-ems-cardiac-rhythm",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-cardiac-rhythm",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.30"
  }],
  "version" : "0.2.0",
  "name" : "EMSCardiacRhythmVS",
  "title" : "EMS Cardiac Rhythm",
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
  "description" : "NEMSIS eVitals.03 - Cardiac rhythm or ECG interpretation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-vitals",
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
      }]
    }]
  }
}

```
