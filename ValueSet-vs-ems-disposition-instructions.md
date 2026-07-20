# EMS Disposition Instructions Provided - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Disposition Instructions Provided**

## ValueSet: EMS Disposition Instructions Provided 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-disposition-instructions | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSDispositionInstructionsVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.45 | |

 
NEMSIS eDisposition.26 - Instructions provided to the patient at disposition. 

 **References** 

* [EMS Destination Details](StructureDefinition-ext-ems-destination-details.md)

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
  "id" : "vs-ems-disposition-instructions",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-disposition-instructions",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.45"
  }],
  "version" : "0.2.0",
  "name" : "EMSDispositionInstructionsVS",
  "title" : "EMS Disposition Instructions Provided",
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
  "description" : "NEMSIS eDisposition.26 - Instructions provided to the patient at disposition.",
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
        "code" : "4226001",
        "display" : "Contact 911 or see your Doctor if problem returns"
      },
      {
        "code" : "4226003",
        "display" : "Contact 911 or see your Doctor if problem worsens"
      },
      {
        "code" : "4226005",
        "display" : "Other Not Listed (Described in Narrative)"
      },
      {
        "code" : "4226007",
        "display" : "Problem Specific Instructions Provided"
      },
      {
        "code" : "4226009",
        "display" : "See Your Doctor or the Emergency Department immediately"
      },
      {
        "code" : "4226011",
        "display" : "See Your Doctor or the Emergency Department in the next 24 hours"
      },
      {
        "code" : "4226013",
        "display" : "See Your Doctor or the Emergency Department in the next 4 hours"
      },
      {
        "code" : "4226015",
        "display" : "See Your Doctor within the next one week"
      }]
    }]
  }
}

```
