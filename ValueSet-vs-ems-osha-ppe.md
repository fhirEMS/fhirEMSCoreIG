# EMS OSHA Personal Protective Equipment VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS OSHA Personal Protective Equipment VS**

## ValueSet: EMS OSHA Personal Protective Equipment VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-osha-ppe | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSOSHAPPEVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.90 | |

 
OSHA-defined personal protective equipment in use by the patient at the time of a work-related injury (eInjury.10). 

 **References** 

* [EMS Injury Context](StructureDefinition-ext-ems-injury-context.md)

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
  "id" : "vs-ems-osha-ppe",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-osha-ppe",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.90"
  }],
  "version" : "0.2.0",
  "name" : "EMSOSHAPPEVS",
  "title" : "EMS OSHA Personal Protective Equipment VS",
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
  "description" : "OSHA-defined personal protective equipment in use by the patient at the time of a work-related injury (eInjury.10).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-injury",
      "concept" : [{
        "code" : "2910001",
        "display" : "Eye and Face Protection"
      },
      {
        "code" : "2910003",
        "display" : "Foot Protection"
      },
      {
        "code" : "2910005",
        "display" : "Head Protection"
      },
      {
        "code" : "2910007",
        "display" : "Hearing Protection"
      },
      {
        "code" : "2910009",
        "display" : "Respiratory Protection"
      },
      {
        "code" : "2910011",
        "display" : "Safety Belts, lifelines, and lanyards"
      },
      {
        "code" : "2910013",
        "display" : "Safety Nets"
      }]
    }]
  }
}

```
