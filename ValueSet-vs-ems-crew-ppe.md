# EMS CrewPPE VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS CrewPPE VS**

## ValueSet: EMS CrewPPE VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-crew-ppe | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSCrewPPEVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.138 | |

 
Personal protective equipment used by the EMS crew member (eOther.03). 

 **References** 

* [EMS Crew Safety](StructureDefinition-ext-ems-crew-safety.md)

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
  "id" : "vs-ems-crew-ppe",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-crew-ppe",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.138"
  }],
  "version" : "0.2.0",
  "name" : "EMSCrewPPEVS",
  "title" : "EMS CrewPPE VS",
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
  "description" : "Personal protective equipment used by the EMS crew member (eOther.03).",
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
        "code" : "4503001",
        "display" : "Eye Protection"
      },
      {
        "code" : "4503003",
        "display" : "Gloves"
      },
      {
        "code" : "4503005",
        "display" : "Helmet"
      },
      {
        "code" : "4503007",
        "display" : "Level A Suit"
      },
      {
        "code" : "4503009",
        "display" : "Level B Suit"
      },
      {
        "code" : "4503011",
        "display" : "Level C Suit"
      },
      {
        "code" : "4503013",
        "display" : "Level D Suit (Turn out gear)"
      },
      {
        "code" : "4503015",
        "display" : "Mask-N95"
      },
      {
        "code" : "4503017",
        "display" : "Mask-Surgical (Non-Fitted)"
      },
      {
        "code" : "4503019",
        "display" : "Other"
      },
      {
        "code" : "4503021",
        "display" : "PAPR"
      },
      {
        "code" : "4503023",
        "display" : "Reflective Vest"
      }]
    }]
  }
}

```
