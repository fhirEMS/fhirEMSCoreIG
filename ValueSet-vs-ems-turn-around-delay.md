# EMS Type of Turn-Around Delay - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Type of Turn-Around Delay**

## ValueSet: EMS Type of Turn-Around Delay 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-turn-around-delay | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSTurnAroundDelayVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.125 | |

 
NEMSIS eResponse.12 - Types of delay returning to service after transport. 

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
  "id" : "vs-ems-turn-around-delay",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-turn-around-delay",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.125"
  }],
  "version" : "0.2.0",
  "name" : "EMSTurnAroundDelayVS",
  "title" : "EMS Type of Turn-Around Delay",
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
  "description" : "NEMSIS eResponse.12 - Types of delay returning to service after transport.",
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
        "code" : "2212001",
        "display" : "Clean-up"
      },
      {
        "code" : "2212003",
        "display" : "Decontamination"
      },
      {
        "code" : "2212005",
        "display" : "Distance"
      },
      {
        "code" : "2212007",
        "display" : "Documentation"
      },
      {
        "code" : "2212009",
        "display" : "ED Overcrowding / Transfer of Care"
      },
      {
        "code" : "2212011",
        "display" : "Equipment Failure"
      },
      {
        "code" : "2212013",
        "display" : "Equipment/Supply Replenishment"
      },
      {
        "code" : "2212015",
        "display" : "None/No Delay"
      },
      {
        "code" : "2212017",
        "display" : "Other"
      },
      {
        "code" : "2212019",
        "display" : "Rendezvous Transport Unavailable"
      },
      {
        "code" : "2212021",
        "display" : "Route Obstruction (e.g., Train)"
      },
      {
        "code" : "2212023",
        "display" : "Staff Delay"
      },
      {
        "code" : "2212025",
        "display" : "Traffic"
      },
      {
        "code" : "2212027",
        "display" : "Vehicle Crash of this Unit"
      },
      {
        "code" : "2212029",
        "display" : "Vehicle Failure of this Unit"
      },
      {
        "code" : "2212031",
        "display" : "Weather"
      },
      {
        "code" : "2212033",
        "display" : "EMS Crew Accompanies Patient for Facility Procedure"
      }]
    }]
  }
}

```
