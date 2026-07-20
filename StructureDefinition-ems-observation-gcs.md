# EMS Glasgow Coma Score (GCS) Panel - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Glasgow Coma Score (GCS) Panel**

## Resource Profile: EMS Glasgow Coma Score (GCS) Panel 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-gcs | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSObservationGCS |

 
GCS panel Observation derived from US Core Observation Clinical Result. Represents NEMSIS eVitals.19 (Eye), eVitals.20 (Verbal), eVitals.21 (Motor), eVitals.22 (Qualifier), and eVitals.23 (Total GCS). 
Pattern (NDR per CLAUDE.md): parent GCS panel (LOINC 9269-2) with three hasMember references to individual Eye/Verbal/Motor sub-Observations, plus a qualifier component. Sub-observations use this same profile. 
LOINC codes: Total=9269-2, Eye=9267-6, Verbal=9268-4, Motor=9266-8. GCS scores are integers: Eye 1–4, Verbal 1–5, Motor 1–6. NEMSIS Version 3.5.1.251001CP2. 

**Usages:**

* Refer to this Profile: [EMS Glasgow Coma Score (GCS) Panel](StructureDefinition-ems-observation-gcs.md)
* Examples for this Profile: [Observation/ex-ems-gcs-eye](Observation-ex-ems-gcs-eye.md), [Observation/ex-ems-gcs-motor](Observation-ex-ems-gcs-motor.md), [Observation/ex-ems-gcs-verbal](Observation-ex-ems-gcs-verbal.md) and [Observation/ex-ems-observation-gcs](Observation-ex-ems-observation-gcs.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-observation-gcs.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-observation-gcs.csv), [Excel](StructureDefinition-ems-observation-gcs.xlsx), [Schematron](StructureDefinition-ems-observation-gcs.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-observation-gcs",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-gcs",
  "version" : "0.2.0",
  "name" : "EMSObservationGCS",
  "title" : "EMS Glasgow Coma Score (GCS) Panel",
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
  "description" : "GCS panel Observation derived from US Core Observation Clinical Result.\nRepresents NEMSIS eVitals.19 (Eye), eVitals.20 (Verbal), eVitals.21 (Motor),\neVitals.22 (Qualifier), and eVitals.23 (Total GCS).\n\nPattern (NDR per CLAUDE.md): parent GCS panel (LOINC 9269-2) with three\nhasMember references to individual Eye/Verbal/Motor sub-Observations, plus\na qualifier component. Sub-observations use this same profile.\n\nLOINC codes: Total=9269-2, Eye=9267-6, Verbal=9268-4, Motor=9266-8.\nGCS scores are integers: Eye 1–4, Verbal 1–5, Motor 1–6.\nNEMSIS Version 3.5.1.251001CP2.",
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
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-clinical-result",
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
      "short" : "eVitals.02 - Obtained Prior to this Unit's EMS Care"
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
      "id" : "Observation.category:us-core",
      "path" : "Observation.category",
      "sliceName" : "us-core",
      "comment" : "US Core requires category 1..*. GCS is a neurological physical examination finding; 'exam' category is used (per us-core-clinical-result-observation-category VS).",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam",
          "display" : "Exam"
        }]
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "LOINC code identifying the GCS component or panel",
      "comment" : "Panel: 9269-2 (GCS total). Sub-observations: Eye=9267-6, Verbal=9268-4, Motor=9266-8."
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
      "min" : 1,
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "eVitals.19/20/21 - GCS component integer score",
      "comment" : "NEMSIS eVitals.19 (Eye, 1–4), eVitals.20 (Verbal, 1–5), eVitals.21 (Motor, 1–6). On panel Observation, use component for qualifier instead.",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "comment" : "NV.NotRecorded → not-asked; NV.NotApplicable → not-applicable. NV applies to all GCS elements."
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "short" : "eVitals.19/20/21 - GCS Eye, Verbal, Motor sub-observations",
      "comment" : "On the panel Observation: reference three sub-Observations (Eye LOINC 9267-6, Verbal 9268-4, Motor 9266-8). Each sub-Observation carries an integer valueInteger.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-gcs"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:gcsQualifier",
      "path" : "Observation.component",
      "sliceName" : "gcsQualifier",
      "short" : "eVitals.22 - GCS Qualifier",
      "comment" : "NEMSIS eVitals.22. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Repeating (1..M). Documents conditions affecting GCS validity (intubation, sedation, paralysis, eye obstruction).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:gcsQualifier.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "55285-1",
          "display" : "Glasgow coma score special circumstances"
        }]
      }
    },
    {
      "id" : "Observation.component:gcsQualifier.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-gcs-qualifier"
      }
    }]
  }
}

```
