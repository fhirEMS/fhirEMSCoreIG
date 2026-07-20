# EMS Response Delays - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Response Delays**

## Extension: EMS Response Delays 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-delays | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSResponseDelays |

Groups the five NEMSIS delay type elements (eResponse.08–12), each Required/National with repeating values and NV: NotRecorded, NotApplicable.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Encounter](StructureDefinition-ems-encounter.md)
* Examples for this Extension: [Encounter/ex-ems-encounter](Encounter-ex-ems-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-response-delays.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-response-delays.csv), [Excel](StructureDefinition-ext-ems-response-delays.xlsx), [Schematron](StructureDefinition-ext-ems-response-delays.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-response-delays",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-delays",
  "version" : "0.2.0",
  "name" : "EMSResponseDelays",
  "title" : "EMS Response Delays",
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
  "description" : "Groups the five NEMSIS delay type elements (eResponse.08–12), each\nRequired/National with repeating values and NV: NotRecorded, NotApplicable.",
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
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Response Delays",
      "definition" : "Groups the five NEMSIS delay type elements (eResponse.08–12), each\nRequired/National with repeating values and NV: NotRecorded, NotApplicable."
    },
    {
      "id" : "Extension.extension:dispatchDelay",
      "path" : "Extension.extension",
      "sliceName" : "dispatchDelay",
      "short" : "eResponse.08 - Type of Dispatch Delay",
      "comment" : "NEMSIS eResponse.08. Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:dispatchDelay.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dispatchDelay.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dispatchDelay"
    },
    {
      "id" : "Extension.extension:dispatchDelay.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-dispatch-delay"
      }
    },
    {
      "id" : "Extension.extension:responseDelay",
      "path" : "Extension.extension",
      "sliceName" : "responseDelay",
      "short" : "eResponse.09 - Type of Response Delay",
      "comment" : "NEMSIS eResponse.09. Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:responseDelay.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:responseDelay.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "responseDelay"
    },
    {
      "id" : "Extension.extension:responseDelay.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-response-delay"
      }
    },
    {
      "id" : "Extension.extension:sceneDelay",
      "path" : "Extension.extension",
      "sliceName" : "sceneDelay",
      "short" : "eResponse.10 - Type of Scene Delay",
      "comment" : "NEMSIS eResponse.10. Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:sceneDelay.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:sceneDelay.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "sceneDelay"
    },
    {
      "id" : "Extension.extension:sceneDelay.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-scene-delay"
      }
    },
    {
      "id" : "Extension.extension:transportDelay",
      "path" : "Extension.extension",
      "sliceName" : "transportDelay",
      "short" : "eResponse.11 - Type of Transport Delay",
      "comment" : "NEMSIS eResponse.11. Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:transportDelay.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:transportDelay.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "transportDelay"
    },
    {
      "id" : "Extension.extension:transportDelay.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-transport-delay"
      }
    },
    {
      "id" : "Extension.extension:turnAroundDelay",
      "path" : "Extension.extension",
      "sliceName" : "turnAroundDelay",
      "short" : "eResponse.12 - Type of Turn-Around Delay",
      "comment" : "NEMSIS eResponse.12. Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:turnAroundDelay.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:turnAroundDelay.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "turnAroundDelay"
    },
    {
      "id" : "Extension.extension:turnAroundDelay.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-turn-around-delay"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-delays"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
