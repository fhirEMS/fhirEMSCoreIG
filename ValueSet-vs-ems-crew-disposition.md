# EMS Crew Disposition - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Crew Disposition**

## ValueSet: EMS Crew Disposition 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-crew-disposition | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSCrewDispositionVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.37 | |

 
NEMSIS eDisposition.29 - What the crew did during the response. 

 **References** 

* [EMS Disposition Codes](StructureDefinition-ext-ems-disposition-codes.md)

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
  "id" : "vs-ems-crew-disposition",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-crew-disposition",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.37"
  }],
  "version" : "0.2.0",
  "name" : "EMSCrewDispositionVS",
  "title" : "EMS Crew Disposition",
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
  "description" : "NEMSIS eDisposition.29 - What the crew did during the response.",
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
        "code" : "4229001",
        "display" : "Initiated and Continued Primary Care"
      },
      {
        "code" : "4229003",
        "display" : "Initiated Primary Care and Transferred to Another EMS Crew"
      },
      {
        "code" : "4229005",
        "display" : "Provided Care Supporting Primary EMS Crew"
      },
      {
        "code" : "4229007",
        "display" : "Assumed Primary Care from Another EMS Crew"
      },
      {
        "code" : "4229009",
        "display" : "Incident Support Services Provided (Including Standby)"
      },
      {
        "code" : "4229011",
        "display" : "Back in Service, No Care/Support Services Required"
      },
      {
        "code" : "4229013",
        "display" : "Back in Service, Care/Support Services Refused"
      }]
    }]
  }
}

```
