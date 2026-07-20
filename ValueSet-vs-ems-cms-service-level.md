# EMS CMS Service Level VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS CMS Service Level VS**

## ValueSet: EMS CMS Service Level VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-cms-service-level | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSCMSServiceLevelVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.34 | |

 
CMS ambulance service level for billing (ePayment.50). 

 **References** 

* [EMS CMS Service Level](StructureDefinition-ext-ems-cms-service-level.md)

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
  "id" : "vs-ems-cms-service-level",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-cms-service-level",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.34"
  }],
  "version" : "0.2.0",
  "name" : "EMSCMSServiceLevelVS",
  "title" : "EMS CMS Service Level VS",
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
  "description" : "CMS ambulance service level for billing (ePayment.50).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payment",
      "concept" : [{
        "code" : "2650001",
        "display" : "ALS, Level 1"
      },
      {
        "code" : "2650003",
        "display" : "ALS, Level 1 Emergency"
      },
      {
        "code" : "2650005",
        "display" : "ALS, Level 2"
      },
      {
        "code" : "2650007",
        "display" : "BLS"
      },
      {
        "code" : "2650009",
        "display" : "BLS, Emergency"
      },
      {
        "code" : "2650011",
        "display" : "Fixed Wing (Airplane)"
      },
      {
        "code" : "2650013",
        "display" : "Paramedic Intercept"
      },
      {
        "code" : "2650015",
        "display" : "Specialty Care Transport"
      },
      {
        "code" : "2650017",
        "display" : "Rotary Wing (Helicopter)"
      }]
    }]
  }
}

```
