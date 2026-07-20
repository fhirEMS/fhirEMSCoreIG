# EMS Skin Assessment - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Skin Assessment**

## ValueSet: EMS Skin Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-skin | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamSkinVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.69 | |

 
NEMSIS eExam.04 - Physical findings on skin assessment. 

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
  "id" : "vs-ems-exam-skin",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-skin",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.69"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamSkinVS",
  "title" : "EMS Skin Assessment",
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
  "description" : "NEMSIS eExam.04 - Physical findings on skin assessment.",
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
      }]
    }]
  }
}

```
