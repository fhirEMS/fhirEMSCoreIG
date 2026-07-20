# EMS Vital Signs Observation - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Vital Signs Observation**

## Resource Profile: EMS Vital Signs Observation 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-vitalsigns | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSObservationVitalSigns |

 
Parent profile for all EMS vital sign observations. Derived from US Core Vital Signs. Covers NEMSIS eVitals section (Version 3.5.1.251001CP2). Each vital sign set in NEMSIS (VitalGroup) produces one Observation per element per group (NDR-007). 
Use this profile directly for: Heart Rate (eVitals.10), Respiratory Rate (eVitals.14), Pulse Oximetry (eVitals.12), Body Temperature (eVitals.24), Blood Glucose (eVitals.18), ETCO2 (eVitals.16), Carbon Monoxide (eVitals.17), AVPU (eVitals.26), Pain Score (eVitals.27), Cardiac Rhythm (eVitals.03), Stroke Scale (eVitals.29), Reperfusion Checklist (eVitals.31), Pulse Rhythm (eVitals.13), Respiratory Effort (eVitals.15). 
Use EMSObservationBP for Blood Pressure (eVitals.06/07 — component panel). Use EMSObservationGCS for Glasgow Coma Score (eVitals.19–23 — hasMember panel). 
LOINC codes for each vital element (from CLAUDE.md terminology strategy): HR: 8867-4 SpO2: 59408-5 Resp Rate: 9279-1 SBP (comp): 8480-6 DBP (comp): 8462-4 Temp: 8310-5 ETCO2: 19889-5 BG: 59469-7 Weight: 29463-7 AVPU: 67775-7 Pain: 72514-3 GCS Total: 9269-2 GCS Eye: 9267-6 GCS Verbal: 9268-4 GCS Motor: 9266-8 

**Usages:**

* Examples for this Profile: [Observation/ex-ems-heart-rate](Observation-ex-ems-heart-rate.md), [Observation/ex-ems-respiratory-rate](Observation-ex-ems-respiratory-rate.md) and [Observation/ex-ems-spo2](Observation-ex-ems-spo2.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-observation-vitalsigns.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-observation-vitalsigns.csv), [Excel](StructureDefinition-ems-observation-vitalsigns.xlsx), [Schematron](StructureDefinition-ems-observation-vitalsigns.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-observation-vitalsigns",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-vitalsigns",
  "version" : "0.2.0",
  "name" : "EMSObservationVitalSigns",
  "title" : "EMS Vital Signs Observation",
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
  "description" : "Parent profile for all EMS vital sign observations. Derived from US Core Vital Signs.\nCovers NEMSIS eVitals section (Version 3.5.1.251001CP2). Each vital sign set in\nNEMSIS (VitalGroup) produces one Observation per element per group (NDR-007).\n\nUse this profile directly for: Heart Rate (eVitals.10), Respiratory Rate (eVitals.14),\nPulse Oximetry (eVitals.12), Body Temperature (eVitals.24), Blood Glucose (eVitals.18),\nETCO2 (eVitals.16), Carbon Monoxide (eVitals.17), AVPU (eVitals.26), Pain Score\n(eVitals.27), Cardiac Rhythm (eVitals.03), Stroke Scale (eVitals.29), Reperfusion\nChecklist (eVitals.31), Pulse Rhythm (eVitals.13), Respiratory Effort (eVitals.15).\n\nUse EMSObservationBP for Blood Pressure (eVitals.06/07 — component panel).\nUse EMSObservationGCS for Glasgow Coma Score (eVitals.19–23 — hasMember panel).\n\nLOINC codes for each vital element (from CLAUDE.md terminology strategy):\n  HR:          8867-4     SpO2:       59408-5    Resp Rate:   9279-1\n  SBP (comp):  8480-6     DBP (comp): 8462-4     Temp:        8310-5\n  ETCO2:       19889-5    BG:         59469-7    Weight:      29463-7\n  AVPU:        67775-7    Pain:       72514-3    GCS Total:   9269-2\n  GCS Eye:     9267-6     GCS Verbal: 9268-4     GCS Motor:   9266-8",
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
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs",
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
      },
      "short" : "eVitals.02 - Obtained Prior to this Unit's EMS Care",
      "comment" : "NEMSIS eVitals.02. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Flags whether this vital was obtained by a prior provider."
    },
    {
      "id" : "Observation.extension:obtainedPrior",
      "path" : "Observation.extension",
      "sliceName" : "obtainedPrior",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-vital-obtained-prior"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Vital sign status — final for completed assessments",
      "patternCode" : "final"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "comment" : "US Core vital-signs requires category:VSCat = vital-signs (1..1). Inherited from us-core-vital-signs. All EMS vital sign observations must carry this category."
    },
    {
      "id" : "Observation.category:VSCat",
      "path" : "Observation.category",
      "sliceName" : "VSCat",
      "comment" : "US Core vital-signs requires this slice fixed to vital-signs (1..1 MS). Re-declared here for conformance clarity.",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }]
      }
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
      "short" : "The EMS encounter this vital was collected during",
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
      "comment" : "NEMSIS eVitals.01. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. The date/time this vital sign set was obtained.",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "EMS crew member who obtained the vital sign",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "short" : "NV code when vital was not recorded or not applicable",
      "comment" : "NEMSIS NV pattern per NDR-001. NV.NotRecorded → not-asked; NV.NotApplicable → not-applicable."
    }]
  }
}

```
