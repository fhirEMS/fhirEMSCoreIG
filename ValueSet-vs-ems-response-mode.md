# EMS Response Mode to Scene (ValueSet) - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Response Mode to Scene (ValueSet)**

## ValueSet: EMS Response Mode to Scene (ValueSet) 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-response-mode | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSResponseModeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.106 | |

 
NEMSIS eResponse.23 - The response mode (emergent vs non-emergent) used en route to the scene. 

 **References** 

* [EMS Response Mode to Scene](StructureDefinition-ext-ems-response-mode.md)

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
  "id" : "vs-ems-response-mode",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-response-mode",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.106"
  }],
  "version" : "0.2.0",
  "name" : "EMSResponseModeVS",
  "title" : "EMS Response Mode to Scene (ValueSet)",
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
  "description" : "NEMSIS eResponse.23 - The response mode (emergent vs non-emergent) used en route to the scene.",
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
        "code" : "2223001",
        "display" : "Emergent (Immediate Response)"
      },
      {
        "code" : "2223003",
        "display" : "Emergent Downgraded to Non-Emergent"
      },
      {
        "code" : "2223005",
        "display" : "Non-Emergent"
      },
      {
        "code" : "2223007",
        "display" : "Non-Emergent Upgraded to Emergent"
      }]
    }]
  }
}

```
