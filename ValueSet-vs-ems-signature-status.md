# EMS SignatureStatus VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS SignatureStatus VS**

## ValueSet: EMS SignatureStatus VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-signature-status | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSSignatureStatusVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.145 | |

 
The status/disposition of the signature (eOther.15). 

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
  "id" : "vs-ems-signature-status",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-signature-status",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.145"
  }],
  "version" : "0.2.0",
  "name" : "EMSSignatureStatusVS",
  "title" : "EMS SignatureStatus VS",
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
  "description" : "The status/disposition of the signature (eOther.15).",
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
        "code" : "4515001",
        "display" : "Not Signed - Crew Called out to another call"
      },
      {
        "code" : "4515003",
        "display" : "Not Signed - Deceased"
      },
      {
        "code" : "4515005",
        "display" : "Not Signed - Due to Distress Level"
      },
      {
        "code" : "4515007",
        "display" : "Not Signed - Equipment Failure"
      },
      {
        "code" : "4515009",
        "display" : "Not Signed - In Law Enforcement Custody"
      },
      {
        "code" : "4515011",
        "display" : "Not Signed - Language Barrier"
      },
      {
        "code" : "4515013",
        "display" : "Not Signed - Mental Status/Impaired"
      },
      {
        "code" : "4515015",
        "display" : "Not Signed - Minor/Child"
      },
      {
        "code" : "4515017",
        "display" : "Not Signed - Physical Impairment of Extremities"
      },
      {
        "code" : "4515019",
        "display" : "Not Signed - Refused"
      },
      {
        "code" : "4515021",
        "display" : "Not Signed - Transferred Care/No Access to Obtain Signature"
      },
      {
        "code" : "4515023",
        "display" : "Not Signed - Unconscious"
      },
      {
        "code" : "4515025",
        "display" : "Not Signed -Visually Impaired"
      },
      {
        "code" : "4515027",
        "display" : "Physical Signature/Paper Copy Obtained"
      },
      {
        "code" : "4515031",
        "display" : "Signed"
      },
      {
        "code" : "4515033",
        "display" : "Signed-Not Patient"
      },
      {
        "code" : "4515035",
        "display" : "Not Signed-Illiterate (Unable to Read)"
      },
      {
        "code" : "4515037",
        "display" : "Not Signed-Restrained"
      },
      {
        "code" : "4515039",
        "display" : "Not Signed-Combative or Uncooperative"
      }]
    }]
  }
}

```
