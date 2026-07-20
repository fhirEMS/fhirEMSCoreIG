# EMS SignatureReason VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS SignatureReason VS**

## ValueSet: EMS SignatureReason VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-signature-reason | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSSignatureReasonVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.143 | |

 
The reason a signature was obtained (eOther.13). 

 **References** 

* [EMS Signature Context](StructureDefinition-ext-ems-signature-context.md)

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
  "id" : "vs-ems-signature-reason",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-signature-reason",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.143"
  }],
  "version" : "0.2.0",
  "name" : "EMSSignatureReasonVS",
  "title" : "EMS SignatureReason VS",
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
  "description" : "The reason a signature was obtained (eOther.13).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-other",
      "concept" : [{
        "code" : "4513001",
        "display" : "HIPAA acknowledgement/Release"
      },
      {
        "code" : "4513003",
        "display" : "Permission to Treat"
      },
      {
        "code" : "4513005",
        "display" : "Release for Billing"
      },
      {
        "code" : "4513007",
        "display" : "Transfer of Patient Care"
      },
      {
        "code" : "4513009",
        "display" : "Refusal of Care"
      },
      {
        "code" : "4513011",
        "display" : "Controlled Substance, Administration"
      },
      {
        "code" : "4513013",
        "display" : "Controlled Substance, Waste"
      },
      {
        "code" : "4513015",
        "display" : "Airway Verification"
      },
      {
        "code" : "4513017",
        "display" : "Patient Belongings (Receipt)"
      },
      {
        "code" : "4513019",
        "display" : "Permission to Transport"
      },
      {
        "code" : "4513021",
        "display" : "Refusal of Transport"
      },
      {
        "code" : "4513023",
        "display" : "Other"
      }]
    }]
  }
}

```
