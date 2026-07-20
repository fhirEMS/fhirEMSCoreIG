# EMS Questionnaire Response — Custom Element Results - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Questionnaire Response — Custom Element Results**

## Resource Profile: EMS Questionnaire Response — Custom Element Results 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-questionnaireresponse | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSQuestionnaireResponse |

 
Carries collected values for agency- or state-specific custom data elements (NEMSIS eCustomResults) per NDR-010, answering an EMSQuestionnaire definition. 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/ex-ems-questionnaireresponse](QuestionnaireResponse-ex-ems-questionnaireresponse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-questionnaireresponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-questionnaireresponse.csv), [Excel](StructureDefinition-ems-questionnaireresponse.xlsx), [Schematron](StructureDefinition-ems-questionnaireresponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-questionnaireresponse",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-questionnaireresponse",
  "version" : "0.2.0",
  "name" : "EMSQuestionnaireResponse",
  "title" : "EMS Questionnaire Response — Custom Element Results",
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
  "description" : "Carries collected values for agency- or state-specific custom data elements (NEMSIS eCustomResults) per NDR-010, answering an EMSQuestionnaire definition.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse"
    },
    {
      "id" : "QuestionnaireResponse.questionnaire",
      "path" : "QuestionnaireResponse.questionnaire",
      "comment" : "Canonical reference to the EMSQuestionnaire defining the custom elements.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.status",
      "path" : "QuestionnaireResponse.status",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.subject",
      "path" : "QuestionnaireResponse.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.encounter",
      "path" : "QuestionnaireResponse.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.authored",
      "path" : "QuestionnaireResponse.authored",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item.extension",
      "path" : "QuestionnaireResponse.item.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "QuestionnaireResponse.item.extension:customTarget",
      "path" : "QuestionnaireResponse.item.extension",
      "sliceName" : "customTarget",
      "short" : "eCustomResults.03 - CorrelationID of PCR Element or Group",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-custom-target"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.item.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "short" : "eCustomResults.02 - Custom Element ID Referenced",
      "comment" : "NEMSIS eCustomResults.02. Usage: Mandatory. Must match the EMSQuestionnaire item.linkId.",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "eCustomResults.01 - Custom Data Element Result",
      "comment" : "NEMSIS eCustomResults.01. Usage: Mandatory. Repeating (1..M). Use the value[x] type declared by the corresponding Questionnaire item.type.",
      "mustSupport" : true
    }]
  }
}

```
