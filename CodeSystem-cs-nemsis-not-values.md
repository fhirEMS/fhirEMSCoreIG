# NEMSIS Not Value Codes - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS Not Value Codes**

## CodeSystem: NEMSIS Not Value Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-not-values | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISNotValues |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.9 | |

 
NEMSIS Not Value (NV) codes used when a data element cannot be recorded. Three codes apply: NotApplicable (element does not apply to this event), NotRecorded (element applies but was not documented), NotReporting (agency is not reporting this element). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSNotValueVS](ValueSet-vs-ems-not-value.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-not-values",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-not-values",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.9"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISNotValues",
  "title" : "NEMSIS Not Value Codes",
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
  "description" : "NEMSIS Not Value (NV) codes used when a data element cannot be recorded. Three codes apply: NotApplicable (element does not apply to this event), NotRecorded (element applies but was not documented), NotReporting (agency is not reporting this element).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "NV.NotApplicable",
    "display" : "Not Applicable",
    "definition" : "The data element is not applicable to this EMS event."
  },
  {
    "code" : "NV.NotRecorded",
    "display" : "Not Recorded",
    "definition" : "The data element applies but was not recorded."
  },
  {
    "code" : "NV.NotReporting",
    "display" : "Not Reporting",
    "definition" : "The agency is not reporting this data element."
  }]
}

```
