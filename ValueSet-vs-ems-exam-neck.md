# EMS Neck Assessment - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Neck Assessment**

## ValueSet: EMS Neck Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-neck | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamNeckVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.66 | |

 
NEMSIS eExam.07 - Physical findings on neck assessment. 

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
  "id" : "vs-ems-exam-neck",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-neck",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.66"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamNeckVS",
  "title" : "EMS Neck Assessment",
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
  "description" : "NEMSIS eExam.07 - Physical findings on neck assessment.",
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
      }]
    }]
  }
}

```
