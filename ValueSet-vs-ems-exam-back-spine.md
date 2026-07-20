# EMS Back and Spine Assessment - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Back and Spine Assessment**

## ValueSet: EMS Back and Spine Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-back-spine | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamBackSpineVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.52 | |

 
NEMSIS eExam.14 - Physical findings on back and spine assessment. 

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
  "id" : "vs-ems-exam-back-spine",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-back-spine",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.52"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamBackSpineVS",
  "title" : "EMS Back and Spine Assessment",
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
  "description" : "NEMSIS eExam.14 - Physical findings on back and spine assessment.",
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
      }]
    }]
  }
}

```
