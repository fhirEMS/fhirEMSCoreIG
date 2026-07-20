# EMS Transport Disposition - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Transport Disposition**

## ValueSet: EMS Transport Disposition 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-transport-disposition | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSTransportDispositionVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.120 | |

 
NEMSIS eDisposition.30 - Whether/how the patient was transported. 

 **References** 

* [EMS Disposition Codes](StructureDefinition-ext-ems-disposition-codes.md)
* [EMS Transport Disposition (Legacy)](StructureDefinition-ext-ems-transport-reason.md)

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
  "id" : "vs-ems-transport-disposition",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-transport-disposition",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.120"
  }],
  "version" : "0.2.0",
  "name" : "EMSTransportDispositionVS",
  "title" : "EMS Transport Disposition",
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
  "description" : "NEMSIS eDisposition.30 - Whether/how the patient was transported.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
      "concept" : [{
        "code" : "4230001",
        "display" : "Transport by This EMS Unit (This Crew Only)"
      },
      {
        "code" : "4230003",
        "display" : "Transport by This EMS Unit, with a Member of Another Crew"
      },
      {
        "code" : "4230005",
        "display" : "Transport by Another EMS Unit/Agency"
      },
      {
        "code" : "4230007",
        "display" : "Transport by Another EMS Unit/Agency, with a Member of This Crew"
      },
      {
        "code" : "4230009",
        "display" : "Patient Refused Transport"
      },
      {
        "code" : "4230011",
        "display" : "Non-Patient Transport (Not Otherwise Listed)"
      },
      {
        "code" : "4230013",
        "display" : "No Transport"
      }]
    }]
  }
}

```
