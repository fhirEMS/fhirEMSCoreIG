# EMS Condition - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Condition**

## Resource Profile: EMS Condition 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSCondition |

 
Represents clinical conditions documented during an EMS encounter including the provider's primary and secondary impressions (eSituation.11/12), primary symptom (eSituation.09), and prior medical history (eHistory). Derived from US Core Condition Encounter Diagnosis (Version 3.5.1.251001CP2). 
For encounter diagnosis (primary/secondary impression): set category to 'encounter-diagnosis'. For prior medical history: set category to 'problem-list-item' or 'health-concern'. 

**Usages:**

* Refer to this Profile: [EMS Encounter](StructureDefinition-ems-encounter.md)
* Examples for this Profile: [Condition/ex-ems-condition](Condition-ex-ems-condition.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-condition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-condition.csv), [Excel](StructureDefinition-ems-condition.xlsx), [Schematron](StructureDefinition-ems-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-condition",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition",
  "version" : "0.2.0",
  "name" : "EMSCondition",
  "title" : "EMS Condition",
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
  "description" : "Represents clinical conditions documented during an EMS encounter including\nthe provider's primary and secondary impressions (eSituation.11/12), primary\nsymptom (eSituation.09), and prior medical history (eHistory).\nDerived from US Core Condition Encounter Diagnosis (Version 3.5.1.251001CP2).\n\nFor encounter diagnosis (primary/secondary impression): set category to\n'encounter-diagnosis'. For prior medical history: set category to\n'problem-list-item' or 'health-concern'.",
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
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "comment" : "US Core requires required binding to condition-clinical ValueSet. Use 'active' for active impressions, 'resolved' for resolved."
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "comment" : "US Core requires required binding to condition-ver-status ValueSet. Use 'confirmed' for documented impressions."
    },
    {
      "id" : "Condition.category:us-core",
      "path" : "Condition.category",
      "sliceName" : "us-core",
      "short" : "US Core required category: encounter-diagnosis",
      "comment" : "Required by us-core-condition-encounter-diagnosis. All eSituation.11/12 primary and secondary clinical impressions use this category. For eHistory past medical conditions use a profile derived from us-core-condition-problems-health-concerns.",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "encounter-diagnosis",
          "display" : "Encounter Diagnosis"
        }]
      }
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "eSituation.11/12 - Provider's Primary/Secondary Impression",
      "comment" : "NEMSIS eSituation.11 (Provider's Primary Impression, Required/National, NV: NotRecorded/NotApplicable)\nor eSituation.12 (Provider's Secondary Impressions, Required/National, NV: NotRecorded/NotApplicable).\nProvidersImpression XSD type restricts to ICD-10-CM codes. Use $icd10cm system.\nFor primary symptom (eSituation.09) use R-chapter ICD-10-CM codes; for provider\nimpression use the full ICD-10-CM range.",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/us/core/ValueSet/us-core-condition-code"
      }
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "The EMS patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }]
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "short" : "The EMS encounter this condition was identified during",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter"]
      }]
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "short" : "eSituation.01 - Date/Time of Symptom Onset",
      "comment" : "NEMSIS eSituation.01. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. PN: UnableToComplete. Use onsetDateTime for known onset; omit for NV/PN."
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "comment" : "US Core requires MS. Use when condition resolution date/time is known."
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "comment" : "US Core requires MS. Date the condition was first recorded in the EMS PCR."
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "short" : "EMS crew member who documented the condition",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner"]
      }],
      "mustSupport" : true
    }]
  }
}

```
