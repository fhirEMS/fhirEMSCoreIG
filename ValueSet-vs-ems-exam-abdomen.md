# EMS Abdomen Assessment - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Abdomen Assessment**

## ValueSet: EMS Abdomen Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-abdomen | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamAbdomenVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.50 | |

 
NEMSIS eExam.11 - Physical findings on abdominal assessment. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "vs-ems-exam-abdomen",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-abdomen",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.50"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamAbdomenVS",
  "title" : "EMS Abdomen Assessment",
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
  "description" : "NEMSIS eExam.11 - Physical findings on abdominal assessment.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-exam",
      "concept" : [{
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
      }]
    }]
  }
}

```
