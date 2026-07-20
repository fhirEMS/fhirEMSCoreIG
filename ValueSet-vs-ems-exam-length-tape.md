# EMS Length Based Tape Measure (Broselow-Luten) - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Length Based Tape Measure (Broselow-Luten)**

## ValueSet: EMS Length Based Tape Measure (Broselow-Luten) 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-length-tape | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamLengthTapeMeasureVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.62 | |

 
NEMSIS eExam.02 - Broselow-Luten color zone for length-based weight estimation. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "vs-ems-exam-length-tape",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-length-tape",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.62"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamLengthTapeMeasureVS",
  "title" : "EMS Length Based Tape Measure (Broselow-Luten)",
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
  "description" : "NEMSIS eExam.02 - Broselow-Luten color zone for length-based weight estimation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-exam",
      "concept" : [{
        "code" : "3502001",
        "display" : "Blue"
      },
      {
        "code" : "3502003",
        "display" : "Green"
      },
      {
        "code" : "3502005",
        "display" : "Grey"
      },
      {
        "code" : "3502007",
        "display" : "Orange"
      },
      {
        "code" : "3502009",
        "display" : "Pink"
      },
      {
        "code" : "3502011",
        "display" : "Purple"
      },
      {
        "code" : "3502013",
        "display" : "Red"
      },
      {
        "code" : "3502015",
        "display" : "White"
      },
      {
        "code" : "3502017",
        "display" : "Yellow"
      }]
    }]
  }
}

```
