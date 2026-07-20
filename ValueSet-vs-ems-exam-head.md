# EMS Head Assessment - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Head Assessment**

## ValueSet: EMS Head Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-head | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamHeadVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.60 | |

 
NEMSIS eExam.05 - Physical findings on head assessment. 

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
  "id" : "vs-ems-exam-head",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-head",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.60"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamHeadVS",
  "title" : "EMS Head Assessment",
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
  "description" : "NEMSIS eExam.05 - Physical findings on head assessment.",
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
      }]
    }]
  }
}

```
