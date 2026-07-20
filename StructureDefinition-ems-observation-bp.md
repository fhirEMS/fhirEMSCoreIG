# EMS Blood Pressure Observation - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Blood Pressure Observation**

## Resource Profile: EMS Blood Pressure Observation 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-bp | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSObservationBP |

 
EMS blood pressure panel derived from US Core Blood Pressure. Represents NEMSIS eVitals.06 (SBP), eVitals.07 (DBP), and eVitals.08 (Method of Blood Pressure Measurement). Maps to LOINC 55284-4 (BP panel) with SBP component (LOINC 8480-6) and DBP component (LOINC 8462-4). NEMSIS Version 3.5.1.251001CP2. 

**Usages:**

* Examples for this Profile: [Observation/ex-ems-observation-bp](Observation-ex-ems-observation-bp.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-observation-bp.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-observation-bp.csv), [Excel](StructureDefinition-ems-observation-bp.xlsx), [Schematron](StructureDefinition-ems-observation-bp.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-observation-bp",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-bp",
  "version" : "0.2.0",
  "name" : "EMSObservationBP",
  "title" : "EMS Blood Pressure Observation",
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
  "description" : "EMS blood pressure panel derived from US Core Blood Pressure.\nRepresents NEMSIS eVitals.06 (SBP), eVitals.07 (DBP), and eVitals.08\n(Method of Blood Pressure Measurement). Maps to LOINC 55284-4 (BP panel)\nwith SBP component (LOINC 8480-6) and DBP component (LOINC 8462-4).\nNEMSIS Version 3.5.1.251001CP2.",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-blood-pressure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
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
      "id" : "Observation.extension:obtainedPrior",
      "path" : "Observation.extension",
      "sliceName" : "obtainedPrior",
      "short" : "eVitals.02 - Obtained Prior to this Unit's EMS Care",
      "comment" : "NEMSIS eVitals.02. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-vital-obtained-prior"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.extension:bpMethod",
      "path" : "Observation.extension",
      "sliceName" : "bpMethod",
      "short" : "eVitals.08 - Method of Blood Pressure Measurement",
      "comment" : "NEMSIS eVitals.08. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-bp-method"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }]
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "eVitals.01 - Date/Time Vital Signs Taken",
      "comment" : "NEMSIS eVitals.01. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "comment" : "US Core Blood Pressure requires at minimum systolic and diastolic components (2..*)."
    },
    {
      "id" : "Observation.component:systolic",
      "path" : "Observation.component",
      "sliceName" : "systolic",
      "short" : "eVitals.06 - SBP (Systolic Blood Pressure)",
      "comment" : "NEMSIS eVitals.06. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. PN: ExamFindingNotPresent, UnableToComplete, Refused. Unit: mm[Hg] (UCUM). US Core requires this component 1..1."
    },
    {
      "id" : "Observation.component:systolic.code",
      "path" : "Observation.component.code",
      "comment" : "US Core requires component[systolic].code 1..1 MS. Fixed to LOINC 8480-6 (Systolic blood pressure) by parent profile."
    },
    {
      "id" : "Observation.component:systolic.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "mmHg"
    },
    {
      "id" : "Observation.component:systolic.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "comment" : "NV.NotRecorded → not-asked; NV.NotApplicable → not-applicable. PN via ext-ems-pertinent-negative."
    },
    {
      "id" : "Observation.component:diastolic",
      "path" : "Observation.component",
      "sliceName" : "diastolic",
      "short" : "eVitals.07 - DBP (Diastolic Blood Pressure)",
      "comment" : "NEMSIS eVitals.07. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. PN: ExamFindingNotPresent, UnableToComplete, Refused. Unit: mm[Hg] (UCUM). US Core requires this component 1..1."
    },
    {
      "id" : "Observation.component:diastolic.code",
      "path" : "Observation.component.code",
      "comment" : "US Core requires component[diastolic].code 1..1 MS. Fixed to LOINC 8462-4 (Diastolic blood pressure) by parent profile."
    },
    {
      "id" : "Observation.component:diastolic.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "mmHg"
    },
    {
      "id" : "Observation.component:diastolic.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "comment" : "NV.NotRecorded → not-asked; NV.NotApplicable → not-applicable."
    }]
  }
}

```
