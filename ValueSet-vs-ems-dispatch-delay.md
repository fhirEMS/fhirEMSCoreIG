# EMS Type of Dispatch Delay - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Type of Dispatch Delay**

## ValueSet: EMS Type of Dispatch Delay 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-dispatch-delay | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSDispatchDelayVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.42 | |

 
NEMSIS eResponse.08 - Types of dispatch delay. 

 **References** 

* [EMS Response Delays](StructureDefinition-ext-ems-response-delays.md)

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
  "id" : "vs-ems-dispatch-delay",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-dispatch-delay",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.42"
  }],
  "version" : "0.2.0",
  "name" : "EMSDispatchDelayVS",
  "title" : "EMS Type of Dispatch Delay",
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
  "description" : "NEMSIS eResponse.08 - Types of dispatch delay.",
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
        "code" : "2208001",
        "display" : "Caller (Uncooperative)"
      },
      {
        "code" : "2208003",
        "display" : "Diversion/Failure (of previous unit)"
      },
      {
        "code" : "2208005",
        "display" : "High Call Volume"
      },
      {
        "code" : "2208007",
        "display" : "Language Barrier"
      },
      {
        "code" : "2208009",
        "display" : "Incomplete Address Information Provided"
      },
      {
        "code" : "2208011",
        "display" : "No EMS Vehicles (Units) Available"
      },
      {
        "code" : "2208013",
        "display" : "None/No Delay"
      },
      {
        "code" : "2208015",
        "display" : "Other"
      },
      {
        "code" : "2208017",
        "display" : "Technical Failure (Computer, Phone etc.)"
      },
      {
        "code" : "2208019",
        "display" : "Communication Specialist-Assignment Error"
      },
      {
        "code" : "2208021",
        "display" : "No Receiving MD, Bed, Hospital"
      },
      {
        "code" : "2208023",
        "display" : "Specialty Team Delay"
      }]
    }]
  }
}

```
