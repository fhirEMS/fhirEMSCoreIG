# EMS Dispatch Information - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Dispatch Information**

## Extension: EMS Dispatch Information 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-dispatch-info | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSDispatchInfo |

Captures NEMSIS eDispatch supplementary fields: EMD performed (eDispatch.02, Required/National), EMD determinant code (eDispatch.03), dispatch center (eDispatch.04), dispatch priority (eDispatch.05), and CAD record ID (eDispatch.06).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Encounter](StructureDefinition-ems-encounter.md)
* Examples for this Extension: [Encounter/ex-ems-encounter](Encounter-ex-ems-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-dispatch-info.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-dispatch-info.csv), [Excel](StructureDefinition-ext-ems-dispatch-info.xlsx), [Schematron](StructureDefinition-ext-ems-dispatch-info.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-dispatch-info",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-dispatch-info",
  "version" : "0.2.0",
  "name" : "EMSDispatchInfo",
  "title" : "EMS Dispatch Information",
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
  "description" : "Captures NEMSIS eDispatch supplementary fields: EMD performed (eDispatch.02, Required/National), EMD determinant code (eDispatch.03), dispatch center (eDispatch.04), dispatch priority (eDispatch.05), and CAD record ID (eDispatch.06).",
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
      "short" : "EMS Dispatch Information",
      "definition" : "Captures NEMSIS eDispatch supplementary fields: EMD performed (eDispatch.02, Required/National), EMD determinant code (eDispatch.03), dispatch center (eDispatch.04), dispatch priority (eDispatch.05), and CAD record ID (eDispatch.06)."
    },
    {
      "id" : "Extension.extension:emdPerformed",
      "path" : "Extension.extension",
      "sliceName" : "emdPerformed",
      "short" : "eDispatch.02 - EMD Performed",
      "comment" : "NEMSIS eDispatch.02. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Whether Emergency Medical Dispatch pre-arrival instructions were provided.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:emdPerformed.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:emdPerformed.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "emdPerformed"
    },
    {
      "id" : "Extension.extension:emdPerformed.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-emd-performed"
      }
    },
    {
      "id" : "Extension.extension:emdDeterminant",
      "path" : "Extension.extension",
      "sliceName" : "emdDeterminant",
      "short" : "eDispatch.03 - EMD Determinant Code",
      "comment" : "NEMSIS eDispatch.03. Usage: Optional. The alphanumeric EMD determinant code (e.g., MPDS/IAED code) assigned by the dispatch system.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:emdDeterminant.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:emdDeterminant.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "emdDeterminant"
    },
    {
      "id" : "Extension.extension:emdDeterminant.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:dispatchCenterNameOrId",
      "path" : "Extension.extension",
      "sliceName" : "dispatchCenterNameOrId",
      "short" : "eDispatch.04 - Dispatch Center Name or ID",
      "comment" : "NEMSIS eDispatch.04. Usage: Optional. The name or identifier of the dispatch center.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:dispatchCenterNameOrId.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dispatchCenterNameOrId.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dispatchCenterNameOrId"
    },
    {
      "id" : "Extension.extension:dispatchCenterNameOrId.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:dispatchPriority",
      "path" : "Extension.extension",
      "sliceName" : "dispatchPriority",
      "short" : "eDispatch.05 - Dispatch Priority (Patient Acuity)",
      "comment" : "NEMSIS eDispatch.05. Usage: Optional. The acuity level as assigned at the time of dispatch.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:dispatchPriority.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dispatchPriority.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dispatchPriority"
    },
    {
      "id" : "Extension.extension:dispatchPriority.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-dispatch-priority"
      }
    },
    {
      "id" : "Extension.extension:cadRecordId",
      "path" : "Extension.extension",
      "sliceName" : "cadRecordId",
      "short" : "eDispatch.06 - Unit Dispatched CAD Record ID",
      "comment" : "NEMSIS eDispatch.06. Usage: Optional. The Computer Aided Dispatch record identifier for this unit's response.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:cadRecordId.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:cadRecordId.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "cadRecordId"
    },
    {
      "id" : "Extension.extension:cadRecordId.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-dispatch-info"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
