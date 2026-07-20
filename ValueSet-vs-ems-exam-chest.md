# EMS Chest Assessment - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Chest Assessment**

## ValueSet: EMS Chest Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-chest | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamChestVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.53 | |

 
NEMSIS eExam.25 - Physical findings on chest assessment. 

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
  "id" : "vs-ems-exam-chest",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-chest",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.53"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamChestVS",
  "title" : "EMS Chest Assessment",
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
  "description" : "NEMSIS eExam.25 - Physical findings on chest assessment.",
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
      }]
    }]
  }
}

```
