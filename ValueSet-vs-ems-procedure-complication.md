# EMS Procedure Complication - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Procedure Complication**

## ValueSet: EMS Procedure Complication 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-procedure-complication | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSProcedureComplicationVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.99 | |

 
NEMSIS eProcedures.07 - Adverse events or complications occurring with procedure performance. 

 **References** 

* [EMS Procedure](StructureDefinition-ems-procedure.md)

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
  "id" : "vs-ems-procedure-complication",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-procedure-complication",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.99"
  }],
  "version" : "0.2.0",
  "name" : "EMSProcedureComplicationVS",
  "title" : "EMS Procedure Complication",
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
  "description" : "NEMSIS eProcedures.07 - Adverse events or complications occurring with procedure performance.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications",
      "concept" : [{
        "code" : "3907001",
        "display" : "Altered Mental Status"
      },
      {
        "code" : "3907003",
        "display" : "Apnea"
      },
      {
        "code" : "3907005",
        "display" : "Bleeding"
      },
      {
        "code" : "3907007",
        "display" : "Bradypnea"
      },
      {
        "code" : "3907009",
        "display" : "Diarrhea"
      },
      {
        "code" : "3907011",
        "display" : "Esophageal Intubation-immediately"
      },
      {
        "code" : "3907013",
        "display" : "Esophageal Intubation-other"
      },
      {
        "code" : "3907015",
        "display" : "Extravasation"
      },
      {
        "code" : "3907017",
        "display" : "Hypertension"
      },
      {
        "code" : "3907019",
        "display" : "Hyperthermia"
      },
      {
        "code" : "3907021",
        "display" : "Hypotension"
      },
      {
        "code" : "3907023",
        "display" : "Hypothermia"
      },
      {
        "code" : "3907025",
        "display" : "Hypoxia"
      },
      {
        "code" : "3907027",
        "display" : "Injury"
      },
      {
        "code" : "3907031",
        "display" : "Nausea"
      },
      {
        "code" : "3907033",
        "display" : "None"
      },
      {
        "code" : "3907035",
        "display" : "Other"
      },
      {
        "code" : "3907039",
        "display" : "Respiratory Distress"
      },
      {
        "code" : "3907041",
        "display" : "Tachycardia"
      },
      {
        "code" : "3907043",
        "display" : "Tachypnea"
      },
      {
        "code" : "3907045",
        "display" : "Vomiting"
      },
      {
        "code" : "3907047",
        "display" : "Bradycardia"
      },
      {
        "code" : "3907049",
        "display" : "Itching"
      },
      {
        "code" : "3907051",
        "display" : "Urticaria"
      }]
    }]
  }
}

```
