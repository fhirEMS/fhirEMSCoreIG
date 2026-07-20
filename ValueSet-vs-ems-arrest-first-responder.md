# EMS Arrest First Responder VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Arrest First Responder VS**

## ValueSet: EMS Arrest First Responder VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-arrest-first-responder | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSArrestFirstResponderVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.23 | |

 
Who first performed CPR, applied the AED, or defibrillated the patient (eArrest.20/21/22). 

 **References** 

* [EMS Cardiac Arrest Context](StructureDefinition-ext-ems-arrest-context.md)

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
  "id" : "vs-ems-arrest-first-responder",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-arrest-first-responder",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.23"
  }],
  "version" : "0.2.0",
  "name" : "EMSArrestFirstResponderVS",
  "title" : "EMS Arrest First Responder VS",
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
  "description" : "Who first performed CPR, applied the AED, or defibrillated the patient (eArrest.20/21/22).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
      "concept" : [{
        "code" : "3020001",
        "display" : "Bystander"
      },
      {
        "code" : "3020003",
        "display" : "Family Member"
      },
      {
        "code" : "3020005",
        "display" : "Healthcare Provider (non-911 Responder)"
      },
      {
        "code" : "3020007",
        "display" : "First Responder (EMS)"
      },
      {
        "code" : "3020009",
        "display" : "First Responder (Law Enforcement)"
      },
      {
        "code" : "3020011",
        "display" : "First Responder (non-EMS Fire)"
      },
      {
        "code" : "3020013",
        "display" : "EMS Responder (transport EMS)"
      },
      {
        "code" : "3021001",
        "display" : "Bystander"
      },
      {
        "code" : "3021003",
        "display" : "Family Member"
      },
      {
        "code" : "3021005",
        "display" : "Healthcare Provider (non-911 Responder)"
      },
      {
        "code" : "3021007",
        "display" : "First Responder (EMS)"
      },
      {
        "code" : "3021009",
        "display" : "First Responder (Law Enforcement)"
      },
      {
        "code" : "3021011",
        "display" : "First Responder (non-EMS Fire)"
      },
      {
        "code" : "3021013",
        "display" : "EMS Responder (transport EMS)"
      },
      {
        "code" : "3022001",
        "display" : "Bystander"
      },
      {
        "code" : "3022003",
        "display" : "Family Member"
      },
      {
        "code" : "3022005",
        "display" : "Healthcare Provider (non-911 Responder)"
      },
      {
        "code" : "3022007",
        "display" : "First Responder (EMS)"
      },
      {
        "code" : "3022009",
        "display" : "First Responder (Law Enforcement)"
      },
      {
        "code" : "3022011",
        "display" : "First Responder (non-EMS Fire)"
      },
      {
        "code" : "3022013",
        "display" : "EMS Responder (transport EMS)"
      }]
    }]
  }
}

```
