# EMS Insured Relationship VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Insured Relationship VS**

## ValueSet: EMS Insured Relationship VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-insured-relationship | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSInsuredRelationshipVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.80 | |

 
Patient's relationship to the insured (ePayment.22). 

 **References** 

* [EMS Coverage (Insurance)](StructureDefinition-ems-coverage.md)

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
  "id" : "vs-ems-insured-relationship",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-insured-relationship",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.80"
  }],
  "version" : "0.2.0",
  "name" : "EMSInsuredRelationshipVS",
  "title" : "EMS Insured Relationship VS",
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
  "description" : "Patient's relationship to the insured (ePayment.22).",
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
        "code" : "2622001",
        "display" : "Self"
      },
      {
        "code" : "2622003",
        "display" : "Spouse"
      },
      {
        "code" : "2622005",
        "display" : "Child/Dependent"
      },
      {
        "code" : "2622009",
        "display" : "Cadaver Donor"
      },
      {
        "code" : "2622011",
        "display" : "Employee"
      },
      {
        "code" : "2622013",
        "display" : "Life/Domestic Partner"
      },
      {
        "code" : "2622015",
        "display" : "Organ Donor"
      },
      {
        "code" : "2622017",
        "display" : "Unknown"
      },
      {
        "code" : "2622019",
        "display" : "Other Relationship"
      }]
    }]
  }
}

```
