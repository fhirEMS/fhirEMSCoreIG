# EMS ECG Context - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS ECG Context**

## Extension: EMS ECG Context 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-ecg-context | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSECGContext |

NEMSIS eVitals.04 (ECG Type) and eVitals.05 (Method of ECG Interpretation). Both Required/National. Nillable. NV: NotRecorded, NotApplicable.

**Context of Use**

**Usage info**

**Usages:**

* Examples for this Extension: [Observation/ex-ems-ecg-rhythm](Observation-ex-ems-ecg-rhythm.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-ecg-context.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-ecg-context.csv), [Excel](StructureDefinition-ext-ems-ecg-context.xlsx), [Schematron](StructureDefinition-ext-ems-ecg-context.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-ecg-context",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-ecg-context",
  "version" : "0.2.0",
  "name" : "EMSECGContext",
  "title" : "EMS ECG Context",
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
  "description" : "NEMSIS eVitals.04 (ECG Type) and eVitals.05 (Method of ECG Interpretation). Both Required/National. Nillable. NV: NotRecorded, NotApplicable.",
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
      "short" : "EMS ECG Context",
      "definition" : "NEMSIS eVitals.04 (ECG Type) and eVitals.05 (Method of ECG Interpretation). Both Required/National. Nillable. NV: NotRecorded, NotApplicable."
    },
    {
      "id" : "Extension.extension:ecgType",
      "path" : "Extension.extension",
      "sliceName" : "ecgType",
      "short" : "eVitals.04 - ECG Type",
      "comment" : "NEMSIS eVitals.04. Usage: Required/National. The number of leads used for ECG acquisition.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:ecgType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ecgType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ecgType"
    },
    {
      "id" : "Extension.extension:ecgType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-ecg-type"
      }
    },
    {
      "id" : "Extension.extension:ecgMethod",
      "path" : "Extension.extension",
      "sliceName" : "ecgMethod",
      "short" : "eVitals.05 - Method of ECG Interpretation",
      "comment" : "NEMSIS eVitals.05. Usage: Required/National. How the ECG was interpreted.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:ecgMethod.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ecgMethod.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ecgMethod"
    },
    {
      "id" : "Extension.extension:ecgMethod.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-ecg-method"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-ecg-context"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
