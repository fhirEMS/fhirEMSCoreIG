# EMS Condition — Past Medical History - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Condition — Past Medical History**

## Resource Profile: EMS Condition — Past Medical History 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition-problems | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSConditionProblems |

 
Documents the patient's pre-existing medical/surgical history (eHistory.08) as reported during an EMS response. Condition.code carries the ICD-10-CM history code; advance directives, history source, immunizations, alcohol/drug indicators, pregnancy, and last oral intake are captured in the ext-ems-history-context extension. Create one resource per reported condition. 

**Usages:**

* Examples for this Profile: [Condition/ex-ems-condition-problems](Condition-ex-ems-condition-problems.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-condition-problems.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-condition-problems.csv), [Excel](StructureDefinition-ems-condition-problems.xlsx), [Schematron](StructureDefinition-ems-condition-problems.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-condition-problems",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition-problems",
  "version" : "0.2.0",
  "name" : "EMSConditionProblems",
  "title" : "EMS Condition — Past Medical History",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Documents the patient's pre-existing medical/surgical history (eHistory.08) as reported during an EMS response. Condition.code carries the ICD-10-CM history code; advance directives, history source, immunizations, alcohol/drug indicators, pregnancy, and last oral intake are captured in the ext-ems-history-context extension. Create one resource per reported condition.",
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.extension:historyContext",
      "path" : "Condition.extension",
      "sliceName" : "historyContext",
      "short" : "eHistory — Patient history context (NEMSIS eHistory.02–.05, .09–.11, .16–.19)",
      "comment" : "Complex extension carrying patient-level history data reported with the medical/surgical history. When multiple EMSConditionProblems resources exist for one encounter, populate the context on one of them (or repeat identically).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-history-context"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "Clinical status (active for ongoing conditions)",
      "comment" : "Pre-existing history reported to EMS is typically 'active'; use 'inactive' or 'resolved' when the patient reports a resolved condition."
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "Verification status (unconfirmed for patient-reported history)",
      "comment" : "History obtained in the field is typically patient- or family-reported; 'unconfirmed' is appropriate unless documentation is available."
    },
    {
      "id" : "Condition.category:us-core",
      "path" : "Condition.category",
      "sliceName" : "us-core",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item",
          "display" : "Problem List Item"
        }]
      }
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "eHistory.08 - Medical/Surgical History (ICD-10-CM)",
      "comment" : "NEMSIS eHistory.08. Usage: Recommended. Nillable. NV: NotRecorded. PN: DeniesSymptom (patient denies medical history). NEMSIS uses ICD-10-CM codes; use $icd10cm codings within the inherited US Core condition-code binding. NEMSIS allows multiple history entries (0..M) — one EMSConditionProblems resource per condition."
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }]
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "comment" : "US Core requires MS. Date the history was recorded by EMS."
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner"]
      }],
      "mustSupport" : true
    }]
  }
}

```
