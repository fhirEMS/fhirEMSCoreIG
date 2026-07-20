# EMS Transport Details - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Transport Details**

## Extension: EMS Transport Details 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-transport-details | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSTransportDetails |

NEMSIS transport method and mode elements: eDisposition.16 (EMS Transport Method), eDisposition.17 (Transport Mode from Scene), and eDisposition.18 (Additional Transport Mode Descriptors). All Required/National.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Encounter](StructureDefinition-ems-encounter.md)
* Examples for this Extension: [Encounter/ex-ems-encounter](Encounter-ex-ems-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-transport-details.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-transport-details.csv), [Excel](StructureDefinition-ext-ems-transport-details.xlsx), [Schematron](StructureDefinition-ext-ems-transport-details.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-transport-details",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-transport-details",
  "version" : "0.2.0",
  "name" : "EMSTransportDetails",
  "title" : "EMS Transport Details",
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
  "description" : "NEMSIS transport method and mode elements: eDisposition.16 (EMS Transport Method), eDisposition.17 (Transport Mode from Scene), and eDisposition.18 (Additional Transport Mode Descriptors). All Required/National.",
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
      "short" : "EMS Transport Details",
      "definition" : "NEMSIS transport method and mode elements: eDisposition.16 (EMS Transport Method), eDisposition.17 (Transport Mode from Scene), and eDisposition.18 (Additional Transport Mode Descriptors). All Required/National."
    },
    {
      "id" : "Extension.extension:transportMethod",
      "path" : "Extension.extension",
      "sliceName" : "transportMethod",
      "short" : "eDisposition.16 - EMS Transport Method",
      "comment" : "NEMSIS eDisposition.16. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. The vehicle/mode used to transport the patient (ground ambulance, air, etc.).",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:transportMethod.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:transportMethod.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "transportMethod"
    },
    {
      "id" : "Extension.extension:transportMethod.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-transport-method"
      }
    },
    {
      "id" : "Extension.extension:transportMode",
      "path" : "Extension.extension",
      "sliceName" : "transportMode",
      "short" : "eDisposition.17 - Transport Mode from Scene",
      "comment" : "NEMSIS eDisposition.17. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Emergent vs non-emergent transport mode.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:transportMode.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:transportMode.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "transportMode"
    },
    {
      "id" : "Extension.extension:transportMode.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-transport-mode"
      }
    },
    {
      "id" : "Extension.extension:additionalTransportMode",
      "path" : "Extension.extension",
      "sliceName" : "additionalTransportMode",
      "short" : "eDisposition.18 - Additional Transport Mode Descriptors",
      "comment" : "NEMSIS eDisposition.18. Usage: Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable. Lights, sirens, speed, intersection navigation details.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:additionalTransportMode.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:additionalTransportMode.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "additionalTransportMode"
    },
    {
      "id" : "Extension.extension:additionalTransportMode.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-additional-transport-mode"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-transport-details"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
