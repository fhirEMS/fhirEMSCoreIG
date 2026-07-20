# EMS Mental Status Assessment - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Mental Status Assessment**

## ValueSet: EMS Mental Status Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-mental-status | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamMentalStatusVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.65 | |

 
NEMSIS eExam.19 - Mental status and cognitive assessment findings. 

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
  "id" : "vs-ems-exam-mental-status",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-mental-status",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.65"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamMentalStatusVS",
  "title" : "EMS Mental Status Assessment",
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
  "description" : "NEMSIS eExam.19 - Mental status and cognitive assessment findings.",
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
        "code" : "3519001",
        "display" : "Combative"
      },
      {
        "code" : "3519003",
        "display" : "Confused"
      },
      {
        "code" : "3519005",
        "display" : "Hallucinations"
      },
      {
        "code" : "3519007",
        "display" : "Normal Baseline for Patient"
      },
      {
        "code" : "3519009",
        "display" : "Not Done"
      },
      {
        "code" : "3519011",
        "display" : "Oriented-Person"
      },
      {
        "code" : "3519013",
        "display" : "Oriented-Place"
      },
      {
        "code" : "3519015",
        "display" : "Oriented-Event"
      },
      {
        "code" : "3519017",
        "display" : "Oriented-Time"
      },
      {
        "code" : "3519021",
        "display" : "Unresponsive"
      },
      {
        "code" : "3519023",
        "display" : "Agitation"
      },
      {
        "code" : "3519025",
        "display" : "Somnolent"
      },
      {
        "code" : "3519027",
        "display" : "Stupor"
      },
      {
        "code" : "3519029",
        "display" : "Altered mental status, unspecified"
      },
      {
        "code" : "3519031",
        "display" : "Developmentally Impaired"
      },
      {
        "code" : "3519033",
        "display" : "Disorientation, unspecified"
      },
      {
        "code" : "3519035",
        "display" : "Pharmacologically Paralyzed"
      },
      {
        "code" : "3519037",
        "display" : "Pharmacologically Sedated"
      },
      {
        "code" : "3519039",
        "display" : "Psychologically Impaired"
      },
      {
        "code" : "3519041",
        "display" : "Slowness and poor responsiveness"
      },
      {
        "code" : "3519043",
        "display" : "State of emotional shock and stress, unspecified"
      },
      {
        "code" : "3519045",
        "display" : "Strange and inexplicable behavior"
      },
      {
        "code" : "3519047",
        "display" : "Uncooperative"
      },
      {
        "code" : "3519049",
        "display" : "Unspecified coma"
      }]
    }]
  }
}

```
