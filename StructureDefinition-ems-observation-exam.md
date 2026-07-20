# EMS Physical Exam Observation - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Physical Exam Observation**

## Resource Profile: EMS Physical Exam Observation 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-exam | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSObservationExam |

 
Physical examination findings Observation derived from US Core Observation Clinical Result. Represents NEMSIS eExam section assessments (Version 3.5.1.251001CP2). 
One Observation per body region assessment. Use Observation.code to identify the body region (LOINC or SNOMED CT when available; NEMSIS exam category code otherwise). Use Observation.bodySite for location qualifiers (eExam.10, .13, .15, .17, .22, .24). Each discrete finding is a component with valueCodeableConcept. Multiple findings for the same region → multiple components. 
Applicable NEMSIS elements: eExam.01: Estimated Body Weight → valueQuantity (kg) eExam.02: Length Tape Measure → valueCodeableConcept from EMSExamLengthTapeMeasureVS eExam.03: Date/Time of Assessment → effectiveDateTime eExam.04–25: Body region assessments → component.valueCodeableConcept 
All eExam elements are Optional in NEMSIS. NV: eExam.01, eExam.02, eExam.21 support NotRecorded / NotApplicable. PN: Most body region assessment elements (eExam.04–25) support ExamFindingNotPresent. 

**Usages:**

* Examples for this Profile: [Observation/ex-ems-exam-neuro](Observation-ex-ems-exam-neuro.md) and [Observation/ex-ems-exam-skin](Observation-ex-ems-exam-skin.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-observation-exam.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-observation-exam.csv), [Excel](StructureDefinition-ems-observation-exam.xlsx), [Schematron](StructureDefinition-ems-observation-exam.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-observation-exam",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-exam",
  "version" : "0.2.0",
  "name" : "EMSObservationExam",
  "title" : "EMS Physical Exam Observation",
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
  "description" : "Physical examination findings Observation derived from US Core\nObservation Clinical Result. Represents NEMSIS eExam section\nassessments (Version 3.5.1.251001CP2).\n\nOne Observation per body region assessment. Use Observation.code\nto identify the body region (LOINC or SNOMED CT when available;\nNEMSIS exam category code otherwise). Use Observation.bodySite\nfor location qualifiers (eExam.10, .13, .15, .17, .22, .24).\nEach discrete finding is a component with valueCodeableConcept.\nMultiple findings for the same region → multiple components.\n\nApplicable NEMSIS elements:\n  eExam.01: Estimated Body Weight → valueQuantity (kg)\n  eExam.02: Length Tape Measure → valueCodeableConcept from EMSExamLengthTapeMeasureVS\n  eExam.03: Date/Time of Assessment → effectiveDateTime\n  eExam.04–25: Body region assessments → component.valueCodeableConcept\n\nAll eExam elements are Optional in NEMSIS.\nNV: eExam.01, eExam.02, eExam.21 support NotRecorded / NotApplicable.\nPN: Most body region assessment elements (eExam.04–25) support ExamFindingNotPresent.",
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
      "id" : "Observation.category:us-core",
      "path" : "Observation.category",
      "sliceName" : "us-core",
      "short" : "Observation category: exam",
      "comment" : "US Core observation-clinical-result requires category 1..*. EMS physical exam findings use 'exam' category. Required for US Core compliance.",
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
      "short" : "Body region or finding category being assessed",
      "comment" : "Use LOINC or SNOMED CT to identify the body region exam. Examples: LOINC 8709-8 (Skin exam), 11396-1 (Head exam), 29546-5 (Lung exam), 10197-4 (Neurological exam), 32618-1 (Neurological exam panel)."
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
      "short" : "eExam.03 - Date/Time of Assessment",
      "comment" : "NEMSIS eExam.03. Usage: Optional. Date/time the physical examination was performed.",
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
      "comment" : "For scalar exam findings: eExam.01 → valueQuantity (kg, UCUM system); eExam.02 → valueCodeableConcept from EMSExamLengthTapeMeasureVS; eExam.21 → valueCodeableConcept from EMSExamStrokeSymptomsResolvedVS."
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "comment" : "NV.NotRecorded → not-asked; NV.NotApplicable → not-applicable. PN.ExamFindingNotPresent → use ext-ems-pertinent-negative."
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "short" : "eExam.10/.13/.15/.17/.22/.24 - Assessment Finding Location",
      "comment" : "Location qualifier for the assessment finding. Bind to the appropriate EMSExam*LocationVS for each body region.",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "short" : "eExam.04–25 - Body Region Assessment Findings",
      "comment" : "NEMSIS physical exam finding. code identifies the body region/exam type; valueCodeableConcept carries the finding from the appropriate EMSExam*VS ValueSet.",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.code",
      "path" : "Observation.component.code",
      "comment" : "Use LOINC or SNOMED CT to identify the type of examination finding. Examples: LOINC 39106-0 (Skin condition), SNOMED 363681005 (Examination finding).",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.value[x]",
      "path" : "Observation.component.value[x]",
      "comment" : "Finding from the appropriate NEMSIS eExam ValueSet (e.g., EMSExamSkinVS, EMSExamHeadVS, etc.).",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    }]
  }
}

```
