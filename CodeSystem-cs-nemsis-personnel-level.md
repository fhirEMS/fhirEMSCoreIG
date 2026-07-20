# NEMSIS Personnel Level Codes - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS Personnel Level Codes**

## CodeSystem: NEMSIS Personnel Level Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-personnel-level | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISPersonnel |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.12 | |

 
NEMSIS eCrew.02 - Crew Member Level certification and licensure codes (NEMSIS 3.5.1.251001CP2). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSCertificationLevelVS](ValueSet-vs-ems-certification-level.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-personnel-level",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-personnel-level",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.12"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISPersonnel",
  "title" : "NEMSIS Personnel Level Codes",
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
  "description" : "NEMSIS eCrew.02 - Crew Member Level certification and licensure codes (NEMSIS 3.5.1.251001CP2).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 16,
  "concept" : [{
    "code" : "9925001",
    "display" : "Advanced Emergency Medical Technician (AEMT)"
  },
  {
    "code" : "9925002",
    "display" : "Emergency Medical Technician - Intermediate"
  },
  {
    "code" : "9925003",
    "display" : "Emergency Medical Responder (EMR)"
  },
  {
    "code" : "9925005",
    "display" : "Emergency Medical Technician (EMT)"
  },
  {
    "code" : "9925007",
    "display" : "Paramedic"
  },
  {
    "code" : "9925023",
    "display" : "Other Healthcare Professional"
  },
  {
    "code" : "9925025",
    "display" : "Other Non-Healthcare Professional"
  },
  {
    "code" : "9925027",
    "display" : "Physician"
  },
  {
    "code" : "9925029",
    "display" : "Respiratory Therapist"
  },
  {
    "code" : "9925031",
    "display" : "Student"
  },
  {
    "code" : "9925033",
    "display" : "Critical Care Paramedic"
  },
  {
    "code" : "9925035",
    "display" : "Community Paramedicine"
  },
  {
    "code" : "9925037",
    "display" : "Nurse Practitioner"
  },
  {
    "code" : "9925039",
    "display" : "Physician Assistant"
  },
  {
    "code" : "9925041",
    "display" : "Licensed Practical Nurse (LPN)"
  },
  {
    "code" : "9925043",
    "display" : "Registered Nurse"
  }]
}

```
