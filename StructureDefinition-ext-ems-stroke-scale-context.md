# EMS Stroke Scale Context - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Stroke Scale Context**

## Extension: EMS Stroke Scale Context 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-stroke-scale-context | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSStrokeScaleContext |

NEMSIS eVitals.30 (Stroke Scale Type, Required/National) and eVitals.34 (Stroke Scale Score, Recommended). Used alongside the stroke scale result Observation.

**Context of Use**

**Usage info**

**Usages:**

* Examples for this Extension: [Observation/ex-ems-stroke-scale](Observation-ex-ems-stroke-scale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-stroke-scale-context.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-stroke-scale-context.csv), [Excel](StructureDefinition-ext-ems-stroke-scale-context.xlsx), [Schematron](StructureDefinition-ext-ems-stroke-scale-context.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-stroke-scale-context",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-stroke-scale-context",
  "version" : "0.2.0",
  "name" : "EMSStrokeScaleContext",
  "title" : "EMS Stroke Scale Context",
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
  "description" : "NEMSIS eVitals.30 (Stroke Scale Type, Required/National) and eVitals.34 (Stroke Scale Score, Recommended). Used alongside the stroke scale result Observation.",
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
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Stroke Scale Context",
      "definition" : "NEMSIS eVitals.30 (Stroke Scale Type, Required/National) and eVitals.34 (Stroke Scale Score, Recommended). Used alongside the stroke scale result Observation."
    },
    {
      "id" : "Extension.extension:scaleType",
      "path" : "Extension.extension",
      "sliceName" : "scaleType",
      "short" : "eVitals.30 - Stroke Scale Type",
      "comment" : "NEMSIS eVitals.30. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:scaleType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:scaleType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "scaleType"
    },
    {
      "id" : "Extension.extension:scaleType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-stroke-scale-type"
      }
    },
    {
      "id" : "Extension.extension:scaleScore",
      "path" : "Extension.extension",
      "sliceName" : "scaleScore",
      "short" : "eVitals.34 - Stroke Scale Score",
      "comment" : "NEMSIS eVitals.34. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. Numeric score on the selected stroke scale.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:scaleScore.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:scaleScore.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "scaleScore"
    },
    {
      "id" : "Extension.extension:scaleScore.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-stroke-scale-context"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
