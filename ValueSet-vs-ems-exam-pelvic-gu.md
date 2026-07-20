# EMS Pelvis/Genitourinary Assessment - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Pelvis/Genitourinary Assessment**

## ValueSet: EMS Pelvis/Genitourinary Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-pelvic-gu | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamPelvicGUVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.68 | |

 
NEMSIS eExam.12 - Physical findings on pelvic/genitourinary assessment. 

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
  "id" : "vs-ems-exam-pelvic-gu",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-pelvic-gu",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.68"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamPelvicGUVS",
  "title" : "EMS Pelvis/Genitourinary Assessment",
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
  "description" : "NEMSIS eExam.12 - Physical findings on pelvic/genitourinary assessment.",
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
      }]
    }]
  }
}

```
