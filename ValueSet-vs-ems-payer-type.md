# EMS Payer Type VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Payer Type VS**

## ValueSet: EMS Payer Type VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-payer-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSPayerTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.95 | |

 
X12 payer type codes for the insurance company (ePayment.57). 

 **References** 

* [EMS Payer Type](StructureDefinition-ext-ems-payer-type.md)

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
  "id" : "vs-ems-payer-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-payer-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.95"
  }],
  "version" : "0.2.0",
  "name" : "EMSPayerTypeVS",
  "title" : "EMS Payer Type VS",
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
  "description" : "X12 payer type codes for the insurance company (ePayment.57).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payer-type",
      "concept" : [{
        "code" : "11",
        "display" : "Other Non-Federal Programs"
      },
      {
        "code" : "12",
        "display" : "Preferred Provider Organization (PPO)"
      },
      {
        "code" : "13",
        "display" : "Point of Service (POS)"
      },
      {
        "code" : "14",
        "display" : "Exclusive Provider Organization (EPO)"
      },
      {
        "code" : "15",
        "display" : "Indemnity Insurance"
      },
      {
        "code" : "16",
        "display" : "Health Maintenance Organization (HMO) Medicare Risk"
      },
      {
        "code" : "17",
        "display" : "Dental Maintenance Organization"
      },
      {
        "code" : "AM",
        "display" : "Automobile Medical"
      },
      {
        "code" : "BL",
        "display" : "Blue Cross/Blue Shield"
      },
      {
        "code" : "CH",
        "display" : "Champus"
      },
      {
        "code" : "CI",
        "display" : "Commercial Insurance Co."
      },
      {
        "code" : "DS",
        "display" : "Disability"
      },
      {
        "code" : "FI",
        "display" : "Federal Employees Program"
      },
      {
        "code" : "HM",
        "display" : "Health Maintenance Organization"
      },
      {
        "code" : "LM",
        "display" : "Liability Medical"
      },
      {
        "code" : "MA",
        "display" : "Medicare Part A"
      },
      {
        "code" : "MB",
        "display" : "Medicare Part B"
      },
      {
        "code" : "MC",
        "display" : "Medicaid"
      },
      {
        "code" : "OF",
        "display" : "Other Federal Program"
      },
      {
        "code" : "TV",
        "display" : "Title V"
      },
      {
        "code" : "VA",
        "display" : "Veteran Affairs Plan"
      },
      {
        "code" : "WC",
        "display" : "Workers' Compensation Health Claim"
      },
      {
        "code" : "ZZ",
        "display" : "Mutually Defined"
      }]
    }]
  }
}

```
