# NEMSIS Situation Codes - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS Situation Codes**

## CodeSystem: NEMSIS Situation Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-situation | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISSituation |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.15 | |

 
Enumeration codes from the NEMSIS eSituation section (NEMSIS 3.5.1.251001CP2). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSIncidentTypeVS](ValueSet-vs-ems-incident-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-situation",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-situation",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.15"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISSituation",
  "title" : "NEMSIS Situation Codes",
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
  "description" : "Enumeration codes from the NEMSIS eSituation section (NEMSIS 3.5.1.251001CP2).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "2807001",
    "display" : "Abdomen"
  },
  {
    "code" : "2807003",
    "display" : "Back"
  },
  {
    "code" : "2807005",
    "display" : "Chest"
  },
  {
    "code" : "2807007",
    "display" : "Extremity-Lower"
  },
  {
    "code" : "2807009",
    "display" : "Extremity-Upper"
  },
  {
    "code" : "2807011",
    "display" : "General/Global"
  },
  {
    "code" : "2807013",
    "display" : "Genitalia"
  },
  {
    "code" : "2807015",
    "display" : "Head"
  },
  {
    "code" : "2807017",
    "display" : "Neck"
  }]
}

```
