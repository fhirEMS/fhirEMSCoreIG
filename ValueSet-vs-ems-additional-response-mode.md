# EMS Additional Response Mode Descriptors (ValueSet) - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Additional Response Mode Descriptors (ValueSet)**

## ValueSet: EMS Additional Response Mode Descriptors (ValueSet) 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-additional-response-mode | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSAdditionalResponseModeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.2 | |

 
NEMSIS eResponse.24 - Additional descriptors of response mode (lights, sirens, speed, intersection navigation). 

 **References** 

* [EMS Additional Response Mode Descriptors](StructureDefinition-ext-ems-additional-response-mode.md)

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
  "id" : "vs-ems-additional-response-mode",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-additional-response-mode",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.2"
  }],
  "version" : "0.2.0",
  "name" : "EMSAdditionalResponseModeVS",
  "title" : "EMS Additional Response Mode Descriptors (ValueSet)",
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
  "description" : "NEMSIS eResponse.24 - Additional descriptors of response mode (lights, sirens, speed, intersection navigation).",
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
        "code" : "2224001",
        "display" : "Intersection Navigation-Against Normal Light Patterns"
      },
      {
        "code" : "2224003",
        "display" : "Intersection Navigation-With Automated Light Changing Technology"
      },
      {
        "code" : "2224005",
        "display" : "Intersection Navigation-With Normal Light Patterns"
      },
      {
        "code" : "2224007",
        "display" : "Scheduled"
      },
      {
        "code" : "2224009",
        "display" : "Speed-Enhanced per Local Policy"
      },
      {
        "code" : "2224011",
        "display" : "Speed-Normal Traffic"
      },
      {
        "code" : "2224013",
        "display" : "Unscheduled"
      },
      {
        "code" : "2224015",
        "display" : "Lights and Sirens"
      },
      {
        "code" : "2224017",
        "display" : "Lights and No Sirens"
      },
      {
        "code" : "2224019",
        "display" : "No Lights or Sirens"
      },
      {
        "code" : "2224021",
        "display" : "Initial No Lights or Sirens, Upgraded to Lights and Sirens"
      },
      {
        "code" : "2224023",
        "display" : "Initial Lights and Sirens, Downgraded to No Lights or Sirens"
      }]
    }]
  }
}

```
