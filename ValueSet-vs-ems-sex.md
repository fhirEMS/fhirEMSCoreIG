# EMS Sex - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Sex**

## ValueSet: EMS Sex 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-sex | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSSexVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.114 | |

 
NEMSIS ePatient.25 - The patient's sex as recorded by EMS. Used for documentation and mapping to Patient.gender and the us-core-birthsex extension. Note: ePatient.13 (Gender) is DEPRECATED in NEMSIS 3.5.1.251001CP2 — use ePatient.25 (Sex) instead. 

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
  "id" : "vs-ems-sex",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-sex",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.114"
  }],
  "version" : "0.2.0",
  "name" : "EMSSexVS",
  "title" : "EMS Sex",
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
  "description" : "NEMSIS ePatient.25 - The patient's sex as recorded by EMS.\nUsed for documentation and mapping to Patient.gender and the us-core-birthsex extension.\nNote: ePatient.13 (Gender) is DEPRECATED in NEMSIS 3.5.1.251001CP2 — use ePatient.25 (Sex) instead.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/nemsis-patient",
      "concept" : [{
        "code" : "9919001",
        "display" : "Female"
      },
      {
        "code" : "9919003",
        "display" : "Male"
      },
      {
        "code" : "9919005",
        "display" : "Unknown"
      }]
    }]
  }
}

```
