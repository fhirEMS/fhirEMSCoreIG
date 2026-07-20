# EMS Custom Result Target - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Custom Result Target**

## Extension: EMS Custom Result Target 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-custom-target | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSCustomTarget |

NEMSIS eCustomResults.03 - The CorrelationID of the PatientCareReport element or group that this custom element result applies to.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Questionnaire Response — Custom Element Results](StructureDefinition-ems-questionnaireresponse.md)
* Examples for this Extension: [QuestionnaireResponse/ex-ems-questionnaireresponse](QuestionnaireResponse-ex-ems-questionnaireresponse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-custom-target.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-custom-target.csv), [Excel](StructureDefinition-ext-ems-custom-target.xlsx), [Schematron](StructureDefinition-ext-ems-custom-target.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-custom-target",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-custom-target",
  "version" : "0.2.0",
  "name" : "EMSCustomTarget",
  "title" : "EMS Custom Result Target",
  "status" : "draft",
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
  "description" : "NEMSIS eCustomResults.03 - The CorrelationID of the PatientCareReport element or group that this custom element result applies to.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "QuestionnaireResponse.item"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Custom Result Target",
      "definition" : "NEMSIS eCustomResults.03 - The CorrelationID of the PatientCareReport element or group that this custom element result applies to."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-custom-target"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
