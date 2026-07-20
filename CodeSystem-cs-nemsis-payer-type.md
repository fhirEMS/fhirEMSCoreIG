# NEMSIS ePayment Payer Type Code System - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS ePayment Payer Type Code System**

## CodeSystem: NEMSIS ePayment Payer Type Code System 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payer-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISPayerType |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.10 | |

 
X12 payer type codes used in NEMSIS ePayment.57 to identify the type of insurance payer. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSPayerTypeVS](ValueSet-vs-ems-payer-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-payer-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payer-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.10"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISPayerType",
  "title" : "NEMSIS ePayment Payer Type Code System",
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
  "description" : "X12 payer type codes used in NEMSIS ePayment.57 to identify the type of insurance payer.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 23,
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
}

```
