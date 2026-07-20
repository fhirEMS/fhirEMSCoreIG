# EMS Arrest Etiology VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Arrest Etiology VS**

## ValueSet: EMS Arrest Etiology VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-arrest-etiology | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSArrestEtiologyVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.22 | |

 
Etiology of the cardiac arrest event (eArrest.02). 

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
  "id" : "vs-ems-arrest-etiology",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-arrest-etiology",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.22"
  }],
  "version" : "0.2.0",
  "name" : "EMSArrestEtiologyVS",
  "title" : "EMS Arrest Etiology VS",
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
  "description" : "Etiology of the cardiac arrest event (eArrest.02).",
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
        "code" : "3002001",
        "display" : "Cardiac (Presumed)"
      },
      {
        "code" : "3002003",
        "display" : "Drowning/Submersion"
      },
      {
        "code" : "3002005",
        "display" : "Drug Overdose"
      },
      {
        "code" : "3002007",
        "display" : "Electrocution"
      },
      {
        "code" : "3002009",
        "display" : "Exsanguination-Medical (Non-Traumatic)"
      },
      {
        "code" : "3002011",
        "display" : "Other"
      },
      {
        "code" : "3002013",
        "display" : "Respiratory/Asphyxia"
      },
      {
        "code" : "3002015",
        "display" : "Traumatic Cause"
      }]
    }]
  }
}

```
