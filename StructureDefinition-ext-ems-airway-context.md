# EMS Airway Management Context - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Airway Management Context**

## Extension: EMS Airway Management Context 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-airway-context | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSAirwayContext |

Contextual data for NEMSIS eAirway: indications, device confirmed, confirmation methods, confirming person, tube depth, crew member, complications, failure reasons, and decision/abandoned timestamps.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Airway Management Observation](StructureDefinition-ems-observation-airway.md)
* Examples for this Extension: [Observation/ex-ems-observation-airway](Observation-ex-ems-observation-airway.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-airway-context.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-airway-context.csv), [Excel](StructureDefinition-ext-ems-airway-context.xlsx), [Schematron](StructureDefinition-ext-ems-airway-context.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-airway-context",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-airway-context",
  "version" : "0.2.0",
  "name" : "EMSAirwayContext",
  "title" : "EMS Airway Management Context",
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
  "description" : "Contextual data for NEMSIS eAirway: indications, device confirmed, confirmation methods, confirming person, tube depth, crew member, complications, failure reasons, and decision/abandoned timestamps.",
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
  },
  {
    "type" : "element",
    "expression" : "Procedure"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Airway Management Context",
      "definition" : "Contextual data for NEMSIS eAirway: indications, device confirmed, confirmation methods, confirming person, tube depth, crew member, complications, failure reasons, and decision/abandoned timestamps."
    },
    {
      "id" : "Extension.extension:indications",
      "path" : "Extension.extension",
      "sliceName" : "indications",
      "short" : "eAirway.01 - Indications for Airway Management",
      "comment" : "NEMSIS eAirway.01. Usage: Recommended. NV: NotRecorded. Repeating (1..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:indications.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:indications.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "indications"
    },
    {
      "id" : "Extension.extension:indications.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-indications"
      }
    },
    {
      "id" : "Extension.extension:confirmedDateTime",
      "path" : "Extension.extension",
      "sliceName" : "confirmedDateTime",
      "short" : "eAirway.02 - Date/Time Airway Device Placement Confirmed",
      "comment" : "NEMSIS eAirway.02. Usage: Recommended. NV: NotRecorded.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:confirmedDateTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:confirmedDateTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "confirmedDateTime"
    },
    {
      "id" : "Extension.extension:confirmedDateTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:deviceConfirmed",
      "path" : "Extension.extension",
      "sliceName" : "deviceConfirmed",
      "short" : "eAirway.03 - Device Being Confirmed",
      "comment" : "NEMSIS eAirway.03. Usage: Recommended. NV: NotRecorded.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:deviceConfirmed.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:deviceConfirmed.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "deviceConfirmed"
    },
    {
      "id" : "Extension.extension:deviceConfirmed.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-device"
      }
    },
    {
      "id" : "Extension.extension:confirmationMethod",
      "path" : "Extension.extension",
      "sliceName" : "confirmationMethod",
      "short" : "eAirway.04 - Airway Device Confirmation Method",
      "comment" : "NEMSIS eAirway.04. Usage: Recommended. NV: NotRecorded. Repeating (1..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:confirmationMethod.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:confirmationMethod.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "confirmationMethod"
    },
    {
      "id" : "Extension.extension:confirmationMethod.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-confirmation-method"
      }
    },
    {
      "id" : "Extension.extension:tubeDepth",
      "path" : "Extension.extension",
      "sliceName" : "tubeDepth",
      "short" : "eAirway.05 - Tube Depth",
      "comment" : "NEMSIS eAirway.05. Usage: Optional. Intubation tube depth in centimeters at the lip.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:tubeDepth.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:tubeDepth.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "tubeDepth"
    },
    {
      "id" : "Extension.extension:tubeDepth.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/ucum-bodylength"
      }
    },
    {
      "id" : "Extension.extension:confirmingPersonType",
      "path" : "Extension.extension",
      "sliceName" : "confirmingPersonType",
      "short" : "eAirway.06 - Type of Individual Confirming Airway",
      "comment" : "NEMSIS eAirway.06. Usage: Recommended. NV: NotRecorded.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:confirmingPersonType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:confirmingPersonType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "confirmingPersonType"
    },
    {
      "id" : "Extension.extension:confirmingPersonType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-confirming-person"
      }
    },
    {
      "id" : "Extension.extension:complications",
      "path" : "Extension.extension",
      "sliceName" : "complications",
      "short" : "eAirway.08 - Airway Complications Encountered",
      "comment" : "NEMSIS eAirway.08. Usage: Recommended. NV: NotRecorded. PN: ExamFindingNotPresent. Repeating (1..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:complications.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:complications.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "complications"
    },
    {
      "id" : "Extension.extension:complications.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-complications"
      }
    },
    {
      "id" : "Extension.extension:failureReasons",
      "path" : "Extension.extension",
      "sliceName" : "failureReasons",
      "short" : "eAirway.09 - Reasons Airway Management Was Not Successful",
      "comment" : "NEMSIS eAirway.09. Usage: Optional. Repeating (0..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:failureReasons.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:failureReasons.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "failureReasons"
    },
    {
      "id" : "Extension.extension:failureReasons.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-failure-reasons"
      }
    },
    {
      "id" : "Extension.extension:decisionDateTime",
      "path" : "Extension.extension",
      "sliceName" : "decisionDateTime",
      "short" : "eAirway.10 - Date/Time Decision to Manage the Airway",
      "comment" : "NEMSIS eAirway.10. Usage: Optional.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decisionDateTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decisionDateTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "decisionDateTime"
    },
    {
      "id" : "Extension.extension:decisionDateTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:abandonedDateTime",
      "path" : "Extension.extension",
      "sliceName" : "abandonedDateTime",
      "short" : "eAirway.11 - Date/Time Airway Management Was Abandoned",
      "comment" : "NEMSIS eAirway.11. Usage: Optional.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:abandonedDateTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:abandonedDateTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "abandonedDateTime"
    },
    {
      "id" : "Extension.extension:abandonedDateTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-airway-context"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
