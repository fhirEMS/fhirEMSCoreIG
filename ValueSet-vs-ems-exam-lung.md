# EMS Lung Assessment - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Lung Assessment**

## ValueSet: EMS Lung Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-lung | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamLungVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.63 | |

 
NEMSIS eExam.23 - Auscultatory and respiratory findings on lung assessment. 

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
  "id" : "vs-ems-exam-lung",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-lung",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.63"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamLungVS",
  "title" : "EMS Lung Assessment",
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
  "description" : "NEMSIS eExam.23 - Auscultatory and respiratory findings on lung assessment.",
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
        "code" : "3523001",
        "display" : "Breath Sounds-Absent"
      },
      {
        "code" : "3523003",
        "display" : "Breath Sounds-Decreased"
      },
      {
        "code" : "3523005",
        "display" : "Breath Sounds-Equal"
      },
      {
        "code" : "3523007",
        "display" : "Breath Sounds-Normal"
      },
      {
        "code" : "3523009",
        "display" : "Foreign Body"
      },
      {
        "code" : "3523011",
        "display" : "Increased Respiratory Effort"
      },
      {
        "code" : "3523013",
        "display" : "Normal"
      },
      {
        "code" : "3523015",
        "display" : "Not Done"
      },
      {
        "code" : "3523017",
        "display" : "Pain"
      },
      {
        "code" : "3523019",
        "display" : "Pain with Inspiration/Expiration"
      },
      {
        "code" : "3523021",
        "display" : "Rales"
      },
      {
        "code" : "3523023",
        "display" : "Rhonchi"
      },
      {
        "code" : "3523025",
        "display" : "Rhonchi/Wheezing"
      },
      {
        "code" : "3523027",
        "display" : "Stridor"
      },
      {
        "code" : "3523029",
        "display" : "Wheezing-Expiratory"
      },
      {
        "code" : "3523031",
        "display" : "Wheezing-Inspiratory"
      }]
    }]
  }
}

```
