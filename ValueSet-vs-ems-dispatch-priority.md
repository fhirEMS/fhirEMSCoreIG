# EMS Dispatch Priority (Patient Acuity) - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Dispatch Priority (Patient Acuity)**

## ValueSet: EMS Dispatch Priority (Patient Acuity) 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-dispatch-priority | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSDispatchPriorityVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.43 | |

 
NEMSIS eDispatch.05 - The acuity level assigned at time of dispatch. 

 **References** 

* [EMS Dispatch Information](StructureDefinition-ext-ems-dispatch-info.md)

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
  "id" : "vs-ems-dispatch-priority",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-dispatch-priority",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.43"
  }],
  "version" : "0.2.0",
  "name" : "EMSDispatchPriorityVS",
  "title" : "EMS Dispatch Priority (Patient Acuity)",
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
  "description" : "NEMSIS eDispatch.05 - The acuity level assigned at time of dispatch.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
      "concept" : [{
        "code" : "2305001",
        "display" : "Critical"
      },
      {
        "code" : "2305003",
        "display" : "Emergent"
      },
      {
        "code" : "2305005",
        "display" : "Lower Acuity"
      },
      {
        "code" : "2305007",
        "display" : "Non-Acute (e.g., Scheduled Transfer or Standby)"
      }]
    }]
  }
}

```
