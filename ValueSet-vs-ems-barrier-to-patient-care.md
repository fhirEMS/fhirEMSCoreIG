# EMS Barriers to Patient Care - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Barriers to Patient Care**

## ValueSet: EMS Barriers to Patient Care 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-barrier-to-patient-care | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSBarrierToPatientCareVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.27 | |

 
NEMSIS eHistory.01 - Barriers encountered during patient assessment or care. 

 **References** 

* [Barriers to Patient Care](StructureDefinition-ext-ems-patient-barrier.md)

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
  "id" : "vs-ems-barrier-to-patient-care",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-barrier-to-patient-care",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.27"
  }],
  "version" : "0.2.0",
  "name" : "EMSBarrierToPatientCareVS",
  "title" : "EMS Barriers to Patient Care",
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
  "description" : "NEMSIS eHistory.01 - Barriers encountered during patient assessment or care.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
      "concept" : [{
        "code" : "3101001",
        "display" : "Cultural, Custom, Religious"
      },
      {
        "code" : "3101003",
        "display" : "Developmentally Impaired"
      },
      {
        "code" : "3101005",
        "display" : "Hearing Impaired"
      },
      {
        "code" : "3101007",
        "display" : "Language"
      },
      {
        "code" : "3101009",
        "display" : "None Noted"
      },
      {
        "code" : "3101011",
        "display" : "Obesity"
      },
      {
        "code" : "3101013",
        "display" : "Physical Barrier (Unable to Access Patient)"
      },
      {
        "code" : "3101015",
        "display" : "Physically Impaired"
      },
      {
        "code" : "3101017",
        "display" : "Physically Restrained"
      },
      {
        "code" : "3101019",
        "display" : "Psychologically Impaired"
      },
      {
        "code" : "3101021",
        "display" : "Sight Impaired"
      },
      {
        "code" : "3101023",
        "display" : "Speech Impaired"
      },
      {
        "code" : "3101025",
        "display" : "Unattended or Unsupervised (including minors)"
      },
      {
        "code" : "3101027",
        "display" : "Unconscious"
      },
      {
        "code" : "3101029",
        "display" : "Uncooperative"
      },
      {
        "code" : "3101031",
        "display" : "State of Emotional Distress"
      },
      {
        "code" : "3101033",
        "display" : "Alcohol Use, Suspected"
      },
      {
        "code" : "3101035",
        "display" : "Drug Use, Suspected"
      }]
    }]
  }
}

```
