# EMS ECG Type - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS ECG Type**

## ValueSet: EMS ECG Type 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-ecg-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSECGTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.47 | |

 
NEMSIS eVitals.04 - The number of leads used for ECG acquisition. 

 **References** 

* [EMS ECG Context](StructureDefinition-ext-ems-ecg-context.md)

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
  "id" : "vs-ems-ecg-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-ecg-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.47"
  }],
  "version" : "0.2.0",
  "name" : "EMSECGTypeVS",
  "title" : "EMS ECG Type",
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
  "description" : "NEMSIS eVitals.04 - The number of leads used for ECG acquisition.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-vitals",
      "concept" : [{
        "code" : "3304000",
        "display" : "2 Lead ECG (pads or paddles)"
      },
      {
        "code" : "3304001",
        "display" : "3 Lead"
      },
      {
        "code" : "3304003",
        "display" : "4 Lead"
      },
      {
        "code" : "3304005",
        "display" : "5 Lead"
      },
      {
        "code" : "3304007",
        "display" : "12 Lead-Left Sided (Normal)"
      },
      {
        "code" : "3304009",
        "display" : "12 Lead-Right Sided"
      },
      {
        "code" : "3304011",
        "display" : "15 Lead"
      },
      {
        "code" : "3304013",
        "display" : "18 Lead"
      },
      {
        "code" : "3304015",
        "display" : "Other"
      }]
    }]
  }
}

```
