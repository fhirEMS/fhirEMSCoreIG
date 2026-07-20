# EMS Response Type (ValueSet) - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Response Type (ValueSet)**

## ValueSet: EMS Response Type (ValueSet) 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-response-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSResponseTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.107 | |

 
NEMSIS eResponse.05 - The type of EMS response. 

 **References** 

* [EMS Response Type](StructureDefinition-ext-ems-response-type.md)

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
  "id" : "vs-ems-response-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-response-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.107"
  }],
  "version" : "0.2.0",
  "name" : "EMSResponseTypeVS",
  "title" : "EMS Response Type (ValueSet)",
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
  "description" : "NEMSIS eResponse.05 - The type of EMS response.",
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
        "code" : "2205001",
        "display" : "Emergency Response (Primary Response Area)"
      },
      {
        "code" : "2205003",
        "display" : "Emergency Response (Intercept)"
      },
      {
        "code" : "2205009",
        "display" : "Emergency Response (Mutual Aid)"
      },
      {
        "code" : "2205005",
        "display" : "Hospital-to-Hospital Transfer"
      },
      {
        "code" : "2205015",
        "display" : "Hospital to Non-Hospital Facility Transfer"
      },
      {
        "code" : "2205017",
        "display" : "Non-Hospital Facility to Non-Hospital Facility Transfer"
      },
      {
        "code" : "2205019",
        "display" : "Non-Hospital Facility to Hospital Transfer"
      },
      {
        "code" : "2205007",
        "display" : "Other Routine Medical Transport"
      },
      {
        "code" : "2205011",
        "display" : "Public Assistance"
      },
      {
        "code" : "2205013",
        "display" : "Standby"
      },
      {
        "code" : "2205021",
        "display" : "Support Services"
      },
      {
        "code" : "2205023",
        "display" : "Non-Patient Care Rescue/Extrication"
      },
      {
        "code" : "2205025",
        "display" : "Crew Transport Only"
      },
      {
        "code" : "2205027",
        "display" : "Transport of Organs or Body Parts"
      },
      {
        "code" : "2205029",
        "display" : "Mortuary Services"
      },
      {
        "code" : "2205031",
        "display" : "Mobile Integrated Health Care Encounter"
      },
      {
        "code" : "2205033",
        "display" : "Evaluation for Special Referral/Intake Programs"
      },
      {
        "code" : "2205035",
        "display" : "Administrative Operations"
      }]
    }]
  }
}

```
