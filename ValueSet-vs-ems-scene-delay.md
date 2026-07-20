# EMS Type of Scene Delay - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Type of Scene Delay**

## ValueSet: EMS Type of Scene Delay 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-scene-delay | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSSceneDelayVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.112 | |

 
NEMSIS eResponse.10 - Types of delay at the scene. 

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
  "id" : "vs-ems-scene-delay",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-scene-delay",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.112"
  }],
  "version" : "0.2.0",
  "name" : "EMSSceneDelayVS",
  "title" : "EMS Type of Scene Delay",
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
  "description" : "NEMSIS eResponse.10 - Types of delay at the scene.",
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
        "code" : "2210001",
        "display" : "Awaiting Air Unit"
      },
      {
        "code" : "2210003",
        "display" : "Awaiting Ground Unit"
      },
      {
        "code" : "2210005",
        "display" : "Crowd"
      },
      {
        "code" : "2210007",
        "display" : "Directions/Unable to Locate"
      },
      {
        "code" : "2210009",
        "display" : "Distance"
      },
      {
        "code" : "2210011",
        "display" : "Extrication"
      },
      {
        "code" : "2210013",
        "display" : "HazMat"
      },
      {
        "code" : "2210015",
        "display" : "Language Barrier"
      },
      {
        "code" : "2210017",
        "display" : "None/No Delay"
      },
      {
        "code" : "2210019",
        "display" : "Other"
      },
      {
        "code" : "2210021",
        "display" : "Patient Access"
      },
      {
        "code" : "2210023",
        "display" : "Safety-Crew/Staging"
      },
      {
        "code" : "2210025",
        "display" : "Safety-Patient"
      },
      {
        "code" : "2210027",
        "display" : "Staff Delay"
      },
      {
        "code" : "2210029",
        "display" : "Traffic"
      },
      {
        "code" : "2210031",
        "display" : "Triage/Multiple Patients"
      },
      {
        "code" : "2210033",
        "display" : "Vehicle Crash Involving this Unit"
      },
      {
        "code" : "2210035",
        "display" : "Vehicle Failure of this Unit"
      },
      {
        "code" : "2210037",
        "display" : "Weather"
      },
      {
        "code" : "2210039",
        "display" : "Mechanical Issue-Unit, Equipment, etc."
      }]
    }]
  }
}

```
