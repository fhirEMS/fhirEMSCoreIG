# EMS Primary Payment Method VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Primary Payment Method VS**

## ValueSet: EMS Primary Payment Method VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-payment-method | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSPaymentMethodVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.96 | |

 
Primary method of payment for the EMS response (ePayment.01). 

 **References** 

* [EMS Primary Payment Method](StructureDefinition-ext-ems-primary-payment-method.md)

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
  "id" : "vs-ems-payment-method",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-payment-method",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.96"
  }],
  "version" : "0.2.0",
  "name" : "EMSPaymentMethodVS",
  "title" : "EMS Primary Payment Method VS",
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
  "description" : "Primary method of payment for the EMS response (ePayment.01).",
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
        "code" : "2601001",
        "display" : "Insurance"
      },
      {
        "code" : "2601003",
        "display" : "Medicaid"
      },
      {
        "code" : "2601005",
        "display" : "Medicare"
      },
      {
        "code" : "2601007",
        "display" : "Not Billed (for any reason)"
      },
      {
        "code" : "2601009",
        "display" : "Other Government"
      },
      {
        "code" : "2601011",
        "display" : "Self Pay"
      },
      {
        "code" : "2601013",
        "display" : "Workers Compensation"
      },
      {
        "code" : "2601015",
        "display" : "Payment by Facility"
      },
      {
        "code" : "2601017",
        "display" : "Contracted Payment"
      },
      {
        "code" : "2601019",
        "display" : "Community Network"
      },
      {
        "code" : "2601021",
        "display" : "No Insurance Identified"
      },
      {
        "code" : "2601023",
        "display" : "Other Payment Option"
      }]
    }]
  }
}

```
