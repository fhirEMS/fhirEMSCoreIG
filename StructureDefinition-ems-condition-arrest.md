# EMS Cardiac Arrest Condition - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Cardiac Arrest Condition**

## Resource Profile: EMS Cardiac Arrest Condition 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition-arrest | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSConditionArrest |

 
Documents the presence (or absence) of cardiac arrest during an EMS response event. Follows NDR-009: the arrest status, etiology, resuscitation data, ROSC, and outcome are captured in the ext-ems-arrest-context extension. The FHIR Condition.code uses SNOMED CT 410429000 (Cardiac arrest). 

**Usages:**

* Examples for this Profile: [Condition/ex-ems-condition-arrest](Condition-ex-ems-condition-arrest.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-condition-arrest.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-condition-arrest.csv), [Excel](StructureDefinition-ems-condition-arrest.xlsx), [Schematron](StructureDefinition-ems-condition-arrest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-condition-arrest",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition-arrest",
  "version" : "0.2.0",
  "name" : "EMSConditionArrest",
  "title" : "EMS Cardiac Arrest Condition",
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
  "description" : "Documents the presence (or absence) of cardiac arrest during an EMS response event. Follows NDR-009: the arrest status, etiology, resuscitation data, ROSC, and outcome are captured in the ext-ems-arrest-context extension. The FHIR Condition.code uses SNOMED CT 410429000 (Cardiac arrest).",
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
      "id" : "Condition.extension:arrestContext",
      "path" : "Condition.extension",
      "sliceName" : "arrestContext",
      "short" : "eArrest — Cardiac arrest details (NEMSIS eArrest.01–22)",
      "comment" : "NDR-009. Complex extension containing all NEMSIS eArrest data elements.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-arrest-context"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "Clinical status (active / resolved)",
      "comment" : "US Core requires required binding to condition-clinical ValueSet. Set to 'active' if arrest is ongoing; 'resolved' if ROSC achieved or patient expired.",
      "min" : 1
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "Verification status (confirmed / differential)",
      "comment" : "US Core requires required binding to condition-ver-status ValueSet. Use 'confirmed' for a documented cardiac arrest. Use 'entered-in-error' if eArrest.01 = No.",
      "min" : 1
    },
    {
      "id" : "Condition.category:us-core",
      "path" : "Condition.category",
      "sliceName" : "us-core",
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
      "short" : "Cardiac arrest (SNOMED 410429000)",
      "comment" : "NDR-009. Fixed SNOMED CT code identifying this Condition as a cardiac arrest event. Arrest-specific data (eArrest.01 status, eArrest.02 etiology, etc.) is in extension[arrestContext].",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "410429000",
          "display" : "Cardiac arrest"
        }]
      }
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
      }]
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.onset[x]:onsetDateTime",
      "path" : "Condition.onset[x]",
      "sliceName" : "onsetDateTime",
      "short" : "eArrest.14 - Date/Time of Cardiac Arrest",
      "comment" : "NEMSIS eArrest.14. Usage: Required/National. Nillable. NV: NotRecorded. PN: ExamFindingNotPresent, UnableToComplete. Also captured in extension[arrestContext].arrestDateTime.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "comment" : "US Core requires MS. Use when arrest resolved (ROSC or patient expired)."
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "comment" : "US Core requires MS. Date the cardiac arrest condition was first recorded."
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
