# EMS Neurological Outcome VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Neurological Outcome VS**

## ValueSet: EMS Neurological Outcome VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-neurological-outcome | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSNeurologicalOutcomeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.88 | |

 
Cerebral performance category (CPC) at hospital discharge (eArrest.13). 

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
  "id" : "vs-ems-neurological-outcome",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-neurological-outcome",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.88"
  }],
  "version" : "0.2.0",
  "name" : "EMSNeurologicalOutcomeVS",
  "title" : "EMS Neurological Outcome VS",
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
  "description" : "Cerebral performance category (CPC) at hospital discharge (eArrest.13).",
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
        "code" : "3013001",
        "display" : "CPC 1 Good Cerebral Performance"
      },
      {
        "code" : "3013003",
        "display" : "CPC 2 Moderate Cerebral Disability"
      },
      {
        "code" : "3013005",
        "display" : "CPC 3 Severe Cerebral Disability"
      },
      {
        "code" : "3013007",
        "display" : "CPC 4 Coma or Vegetative State"
      }]
    }]
  }
}

```
