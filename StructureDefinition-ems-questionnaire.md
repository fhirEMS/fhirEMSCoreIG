# EMS Questionnaire — Custom Element Definitions - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Questionnaire — Custom Element Definitions**

## Resource Profile: EMS Questionnaire — Custom Element Definitions 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-questionnaire | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSQuestionnaire |

 
Defines agency- or state-specific custom data elements (NEMSIS eCustomConfiguration) per NDR-010. Each eCustomConfiguration entry becomes one Questionnaire.item; collected values are reported via EMSQuestionnaireResponse. 

**Usages:**

* Examples for this Profile: [ExampleAgencyCustomElements](Questionnaire-ex-ems-questionnaire.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-questionnaire.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-questionnaire.csv), [Excel](StructureDefinition-ems-questionnaire.xlsx), [Schematron](StructureDefinition-ems-questionnaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-questionnaire",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-questionnaire",
  "version" : "0.2.0",
  "name" : "EMSQuestionnaire",
  "title" : "EMS Questionnaire — Custom Element Definitions",
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
  "description" : "Defines agency- or state-specific custom data elements (NEMSIS eCustomConfiguration) per NDR-010. Each eCustomConfiguration entry becomes one Questionnaire.item; collected values are reported via EMSQuestionnaireResponse.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Questionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Questionnaire",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Questionnaire",
      "path" : "Questionnaire"
    },
    {
      "id" : "Questionnaire.name",
      "path" : "Questionnaire.name",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.title",
      "path" : "Questionnaire.title",
      "comment" : "A name for the custom element collection (e.g., the agency or state demographic dataset name).",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.status",
      "path" : "Questionnaire.status",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item",
      "path" : "Questionnaire.item",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.linkId",
      "path" : "Questionnaire.item.linkId",
      "short" : "eCustomConfiguration.09 - Custom Data Element Grouping ID",
      "comment" : "NEMSIS eCustomConfiguration.09 (CorrelationID) when present; otherwise a stable element identifier. EMSQuestionnaireResponse.item.linkId (eCustomResults.02) must match.",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.text",
      "path" : "Questionnaire.item.text",
      "short" : "eCustomConfiguration.01 - Custom Data Element Title",
      "comment" : "NEMSIS eCustomConfiguration.01. Usage: Mandatory. The eCustomConfiguration.02 definition should be appended or carried in item.item text where needed.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.type",
      "path" : "Questionnaire.item.type",
      "short" : "eCustomConfiguration.03 - Custom Data Type",
      "comment" : "NEMSIS eCustomConfiguration.03. Map: Binary→attachment, Date/Time→dateTime, Integer→integer, Decimal→decimal, Text/String→string, Single-Choice→choice, Multiple-Choice→choice with repeats=true.",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.required",
      "path" : "Questionnaire.item.required",
      "short" : "eCustomConfiguration.05 - Custom Data Element Usage",
      "comment" : "NEMSIS eCustomConfiguration.05. Mandatory/Required → true; Recommended/Optional → false.",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.repeats",
      "path" : "Questionnaire.item.repeats",
      "short" : "eCustomConfiguration.04 - Custom Data Element Recurrence",
      "comment" : "NEMSIS eCustomConfiguration.04. Usage: Mandatory. YesNoValues → boolean.",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.answerOption",
      "path" : "Questionnaire.item.answerOption",
      "short" : "eCustomConfiguration.06 - Custom Data Element Potential Values",
      "comment" : "NEMSIS eCustomConfiguration.06. Usage: Optional. Repeating. Permitted NV codes (eCustomConfiguration.07) and pertinent negatives (eCustomConfiguration.08) are represented in responses via ext-ems-not-value / ext-ems-pertinent-negative.",
      "mustSupport" : true
    }]
  }
}

```
