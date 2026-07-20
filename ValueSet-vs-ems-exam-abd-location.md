# EMS Abdominal Assessment Finding Location - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Abdominal Assessment Finding Location**

## ValueSet: EMS Abdominal Assessment Finding Location 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-abd-location | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamAbdominalFindingLocationVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.49 | |

 
NEMSIS eExam.10 - Location qualifier for abdominal assessment findings. 

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
  "id" : "vs-ems-exam-abd-location",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-abd-location",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.49"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamAbdominalFindingLocationVS",
  "title" : "EMS Abdominal Assessment Finding Location",
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
  "description" : "NEMSIS eExam.10 - Location qualifier for abdominal assessment findings.",
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
        "code" : "3510001",
        "display" : "Generalized"
      },
      {
        "code" : "3510003",
        "display" : "Left Lower Quadrant"
      },
      {
        "code" : "3510005",
        "display" : "Left Upper Quadrant"
      },
      {
        "code" : "3510007",
        "display" : "Periumbilical"
      },
      {
        "code" : "3510009",
        "display" : "Right Lower Quadrant"
      },
      {
        "code" : "3510011",
        "display" : "Right Upper Quadrant"
      },
      {
        "code" : "3510013",
        "display" : "Epigastric"
      }]
    }]
  }
}

```
