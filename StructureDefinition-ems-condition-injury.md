# EMS Injury Condition - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Injury Condition**

## Resource Profile: EMS Injury Condition 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition-injury | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSConditionInjury |

 
Documents an injury and its circumstances during an EMS response event. Condition.code carries the cause of injury (eInjury.01, ICD-10-CM external cause codes). Mechanism of injury, CDC trauma triage criteria, vehicle collision details, safety equipment, and fall height are captured in the ext-ems-injury-context extension; Automated Collision Notification (ACN) telematics data in ext-ems-acn-incident. 

**Usages:**

* Examples for this Profile: [Condition/ex-ems-condition-injury](Condition-ex-ems-condition-injury.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-condition-injury.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-condition-injury.csv), [Excel](StructureDefinition-ems-condition-injury.xlsx), [Schematron](StructureDefinition-ems-condition-injury.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-condition-injury",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition-injury",
  "version" : "0.2.0",
  "name" : "EMSConditionInjury",
  "title" : "EMS Injury Condition",
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
  "description" : "Documents an injury and its circumstances during an EMS response event. Condition.code carries the cause of injury (eInjury.01, ICD-10-CM external cause codes). Mechanism of injury, CDC trauma triage criteria, vehicle collision details, safety equipment, and fall height are captured in the ext-ems-injury-context extension; Automated Collision Notification (ACN) telematics data in ext-ems-acn-incident.",
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
      "id" : "Condition.extension:injuryContext",
      "path" : "Condition.extension",
      "sliceName" : "injuryContext",
      "short" : "eInjury — Injury circumstances (NEMSIS eInjury.02–.10)",
      "comment" : "Complex extension containing mechanism of injury, trauma triage criteria, and collision/fall details.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-injury-context"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:acnIncident",
      "path" : "Condition.extension",
      "sliceName" : "acnIncident",
      "short" : "eInjury — ACN telematics data (NEMSIS eInjury.11–.29)",
      "comment" : "Complex extension containing Automated Collision Notification data received from vehicle telematics.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-acn-incident"]
      }]
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "Clinical status (active / resolved)",
      "comment" : "US Core requires required binding to condition-clinical ValueSet. Injuries documented during an EMS response are typically 'active'.",
      "min" : 1
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "Verification status (confirmed / provisional)",
      "comment" : "US Core requires required binding to condition-ver-status ValueSet. Use 'confirmed' for observed injuries; 'provisional' for suspected injuries pending hospital evaluation.",
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
      "short" : "eInjury.01 - Cause of Injury (ICD-10-CM)",
      "comment" : "NEMSIS eInjury.01. Usage: Required/National. Nillable. NV: NotApplicable, NotRecorded. NEMSIS uses ICD-10-CM external cause codes (V00–Y38); use $icd10cm codings within the inherited US Core condition-code binding. NEMSIS allows multiple causes (1..M) — create one EMSConditionInjury resource per cause of injury."
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "short" : "Anatomic location of the injury",
      "comment" : "SNOMED CT body structure codes. eInjury does not define a body-site element; populate from clinical assessment when documented.",
      "mustSupport" : true
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
      "short" : "Date/Time of the injury event",
      "comment" : "Use the incident time when known (e.g., eInjury.14 ACN incident date/time for telematics-reported collisions, or dispatch-reported incident time).",
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
      "comment" : "US Core requires MS. Rarely used for prehospital injury documentation."
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "comment" : "US Core requires MS. Date the injury condition was first recorded by EMS."
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
