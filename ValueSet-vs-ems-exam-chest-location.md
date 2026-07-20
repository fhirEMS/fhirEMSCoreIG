# EMS Chest Assessment Finding Location - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Chest Assessment Finding Location**

## ValueSet: EMS Chest Assessment Finding Location 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-chest-location | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamChestLocationVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.54 | |

 
NEMSIS eExam.24 - Location qualifier for chest assessment findings. 

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
  "id" : "vs-ems-exam-chest-location",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-chest-location",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.54"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamChestLocationVS",
  "title" : "EMS Chest Assessment Finding Location",
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
  "description" : "NEMSIS eExam.24 - Location qualifier for chest assessment findings.",
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
        "code" : "3524001",
        "display" : "Left - Anterior"
      },
      {
        "code" : "3524005",
        "display" : "Right - Anterior"
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
      }]
    }]
  }
}

```
