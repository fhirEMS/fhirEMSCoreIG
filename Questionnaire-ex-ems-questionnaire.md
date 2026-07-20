# Example EMS Questionnaire — Agency Custom Elements - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Questionnaire — Agency Custom Elements**

## Questionnaire: Example EMS Questionnaire — Agency Custom Elements 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/Questionnaire/ex-ems-questionnaire | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:ExampleAgencyCustomElements |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ex-ems-questionnaire",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-questionnaire"]
  },
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/Questionnaire/ex-ems-questionnaire",
  "version" : "0.2.0",
  "name" : "ExampleAgencyCustomElements",
  "title" : "Example Agency Custom Data Elements",
  "status" : "active",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "item" : [{
    "linkId" : "agency-decon-01",
    "text" : "Ambulance Decontaminated After Transport",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0136",
        "code" : "Y",
        "display" : "Yes"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0136",
        "code" : "N",
        "display" : "No"
      }
    }]
  }]
}

```
