# EMS Type of Response Delay - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Type of Response Delay**

## ValueSet: EMS Type of Response Delay 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-response-delay | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSResponseDelayVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.105 | |

 
NEMSIS eResponse.09 - Types of response delay en route to scene. 

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
  "id" : "vs-ems-response-delay",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-response-delay",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.105"
  }],
  "version" : "0.2.0",
  "name" : "EMSResponseDelayVS",
  "title" : "EMS Type of Response Delay",
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
  "description" : "NEMSIS eResponse.09 - Types of response delay en route to scene.",
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
        "code" : "2209001",
        "display" : "Crowd"
      },
      {
        "code" : "2209003",
        "display" : "Directions/Unable to Locate"
      },
      {
        "code" : "2209005",
        "display" : "Distance"
      },
      {
        "code" : "2209007",
        "display" : "Diversion (Different Incident)"
      },
      {
        "code" : "2209009",
        "display" : "HazMat"
      },
      {
        "code" : "2209011",
        "display" : "None/No Delay"
      },
      {
        "code" : "2209013",
        "display" : "Other"
      },
      {
        "code" : "2209015",
        "display" : "Rendezvous Transport Unavailable"
      },
      {
        "code" : "2209017",
        "display" : "Route Obstruction (e.g., Train)"
      },
      {
        "code" : "2209019",
        "display" : "Scene Safety (Not Secure for EMS)"
      },
      {
        "code" : "2209021",
        "display" : "Staff Delay"
      },
      {
        "code" : "2209023",
        "display" : "Traffic"
      },
      {
        "code" : "2209025",
        "display" : "Vehicle Crash Involving this Unit"
      },
      {
        "code" : "2209027",
        "display" : "Vehicle Failure of this Unit"
      },
      {
        "code" : "2209029",
        "display" : "Weather"
      },
      {
        "code" : "2209031",
        "display" : "Mechanical Issue-Unit, Equipment, etc."
      },
      {
        "code" : "2209033",
        "display" : "Flight Planning"
      },
      {
        "code" : "2209035",
        "display" : "Out of Service Area Response"
      }]
    }]
  }
}

```
