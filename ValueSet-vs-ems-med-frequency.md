# EMS Home Medication Frequency VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Home Medication Frequency VS**

## ValueSet: EMS Home Medication Frequency VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-med-frequency | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSMedFrequencyVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.136 | |

 
Dosing frequency for the patient's current (home) medications (eHistory.20). 

 **References** 

* [EMS Medication Statement — Home Medications](StructureDefinition-ems-medicationstatement.md)

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
  "id" : "vs-ems-med-frequency",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-med-frequency",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.136"
  }],
  "version" : "0.2.0",
  "name" : "EMSMedFrequencyVS",
  "title" : "EMS Home Medication Frequency VS",
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
  "description" : "Dosing frequency for the patient's current (home) medications (eHistory.20).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-history",
      "concept" : [{
        "code" : "3120001",
        "display" : "q1h (every hour)"
      },
      {
        "code" : "3120003",
        "display" : "q2h (every 2 hours)"
      },
      {
        "code" : "3120005",
        "display" : "q3h (every 3 hours)"
      },
      {
        "code" : "3120007",
        "display" : "q4h (every 4 hours)"
      },
      {
        "code" : "3120009",
        "display" : "qid (four times a day)"
      },
      {
        "code" : "3120011",
        "display" : "tid (three times a day)"
      },
      {
        "code" : "3120013",
        "display" : "ac (before meals)"
      },
      {
        "code" : "3120015",
        "display" : "pc (after meals)"
      },
      {
        "code" : "3120017",
        "display" : "bid (twice a day)"
      },
      {
        "code" : "3120019",
        "display" : "qd (every day)"
      },
      {
        "code" : "3120021",
        "display" : "qd-am (every day in the morning)"
      },
      {
        "code" : "3120023",
        "display" : "qd-pm (every day in the evening)"
      },
      {
        "code" : "3120025",
        "display" : "hs (at bedtime)"
      },
      {
        "code" : "3120027",
        "display" : "qod (every other day)"
      },
      {
        "code" : "3120029",
        "display" : "prn (as needed)"
      }]
    }]
  }
}

```
