# EMS Patient Care Report (PCR) - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Patient Care Report (PCR)**

## Resource Profile: EMS Patient Care Report (PCR) 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-composition | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSComposition |

 
Represents an EMS Patient Care Report (PCR) as a FHIR Composition. This is the root document that ties together all sections of an EMS call. Based on NEMSIS eRecord and overall PCR structure (Version 3.5.1.251001CP2). 
Section codes: Standard LOINC codes are used where a clear analog exists. NEMSIS-specific section codes (nemsis-codes#section-*) are used for EMS-only sections without a well-matched LOINC code. 
Mandatory NEMSIS sections (1..1): eResponse, eTimes, ePatient, eScene, eSituation, eDisposition. Optional NEMSIS sections (0..1 or 0..*): eHistory, eVitals, eProcedures, eMedications, eExam, eAirway, eArrest, eNarrative. 

**Usages:**

* Examples for this Profile: [Composition/ex-ems-composition](Composition-ex-ems-composition.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-composition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-composition.csv), [Excel](StructureDefinition-ems-composition.xlsx), [Schematron](StructureDefinition-ems-composition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-composition",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-composition",
  "version" : "0.2.0",
  "name" : "EMSComposition",
  "title" : "EMS Patient Care Report (PCR)",
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
  "description" : "Represents an EMS Patient Care Report (PCR) as a FHIR Composition.\nThis is the root document that ties together all sections of an EMS\ncall. Based on NEMSIS eRecord and overall PCR structure\n(Version 3.5.1.251001CP2).\n\nSection codes: Standard LOINC codes are used where a clear analog\nexists. NEMSIS-specific section codes (nemsis-codes#section-*) are\nused for EMS-only sections without a well-matched LOINC code.\n\nMandatory NEMSIS sections (1..1): eResponse, eTimes, ePatient,\neScene, eSituation, eDisposition.\nOptional NEMSIS sections (0..1 or 0..*): eHistory, eVitals,\neProcedures, eMedications, eExam, eAirway, eArrest, eNarrative.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition"
    },
    {
      "id" : "Composition.identifier",
      "path" : "Composition.identifier",
      "short" : "eRecord.01 - PCR Record Number",
      "comment" : "NEMSIS eRecord.01. Usage: Required/National. The unique identifier for this Patient Care Report. Must be globally unique.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.identifier.system",
      "path" : "Composition.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.identifier.value",
      "path" : "Composition.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.status",
      "path" : "Composition.status",
      "patternCode" : "final",
      "mustSupport" : true
    },
    {
      "id" : "Composition.type",
      "path" : "Composition.type",
      "short" : "PCR document type (LOINC 67796-3)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "67796-3",
          "display" : "EMS patient care report - version 3 Document NEMSIS"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Composition.subject",
      "path" : "Composition.subject",
      "short" : "ePatient — the patient",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.encounter",
      "path" : "Composition.encounter",
      "short" : "The EMS Encounter (eResponse)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.date",
      "path" : "Composition.date",
      "short" : "PCR creation date/time",
      "mustSupport" : true
    },
    {
      "id" : "Composition.author",
      "path" : "Composition.author",
      "short" : "Crew member(s) who authored the PCR (eCrew)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner",
        "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.title",
      "path" : "Composition.title",
      "patternString" : "EMS Patient Care Report",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "description" : "PCR sections corresponding to NEMSIS dataset sections",
        "rules" : "open"
      },
      "min" : 6
    },
    {
      "id" : "Composition.section:eResponse",
      "path" : "Composition.section",
      "sliceName" : "eResponse",
      "short" : "NEMSIS eResponse section — response type, unit, times",
      "comment" : "Contains references to the EMSEncounter (eResponse) resource and related response data.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eResponse.title",
      "path" : "Composition.section.title",
      "patternString" : "EMS Response"
    },
    {
      "id" : "Composition.section:eResponse.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
          "code" : "section-eResponse",
          "display" : "EMS Response"
        }]
      }
    },
    {
      "id" : "Composition.section:eTimes",
      "path" : "Composition.section",
      "sliceName" : "eTimes",
      "short" : "NEMSIS eTimes section — all 19 EMS timestamps",
      "comment" : "Times data is carried primarily in the EMSTimes extension on EMSEncounter. This section references the Encounter.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eTimes.title",
      "path" : "Composition.section.title",
      "patternString" : "EMS Times"
    },
    {
      "id" : "Composition.section:eTimes.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
          "code" : "section-eTimes",
          "display" : "EMS Times"
        }]
      }
    },
    {
      "id" : "Composition.section:ePatient",
      "path" : "Composition.section",
      "sliceName" : "ePatient",
      "short" : "NEMSIS ePatient section — patient demographics",
      "comment" : "Contains references to EMSPatient resources.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:ePatient.title",
      "path" : "Composition.section.title",
      "patternString" : "Patient Demographics"
    },
    {
      "id" : "Composition.section:ePatient.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "29762-2",
          "display" : "Social history note"
        }]
      }
    },
    {
      "id" : "Composition.section:eScene",
      "path" : "Composition.section",
      "sliceName" : "eScene",
      "short" : "NEMSIS eScene section — incident location, MCI, first unit on scene",
      "comment" : "Contains references to EMSLocationScene resources.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eScene.title",
      "path" : "Composition.section.title",
      "patternString" : "Scene Information"
    },
    {
      "id" : "Composition.section:eScene.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
          "code" : "section-eScene",
          "display" : "EMS Scene"
        }]
      }
    },
    {
      "id" : "Composition.section:eSituation",
      "path" : "Composition.section",
      "sliceName" : "eSituation",
      "short" : "NEMSIS eSituation section — chief complaint, primary/secondary impressions",
      "comment" : "Contains references to EMSCondition resources for chief complaint and impressions.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eSituation.title",
      "path" : "Composition.section.title",
      "patternString" : "Patient Situation"
    },
    {
      "id" : "Composition.section:eSituation.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "55110-1",
          "display" : "Conclusions [Interpretation] Document"
        }]
      }
    },
    {
      "id" : "Composition.section:eHistory",
      "path" : "Composition.section",
      "sliceName" : "eHistory",
      "short" : "NEMSIS eHistory section — medical/surgical history, medications, allergies",
      "comment" : "Contains references to EMSCondition (medical history), EMSAllergyIntolerance, and NEMSIS barrier-to-care observations.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eHistory.title",
      "path" : "Composition.section.title",
      "patternString" : "Patient History"
    },
    {
      "id" : "Composition.section:eHistory.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11348-0",
          "display" : "History of Past illness note"
        }]
      }
    },
    {
      "id" : "Composition.section:eVitals",
      "path" : "Composition.section",
      "sliceName" : "eVitals",
      "short" : "NEMSIS eVitals section — each VitalGroup becomes one entry per vital sign Observation",
      "comment" : "Contains references to EMSObservationVitalSigns, EMSObservationBP, and EMSObservationGCS. Multiple VitalGroups → multiple entries (NDR-007).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eVitals.title",
      "path" : "Composition.section.title",
      "patternString" : "Vital Signs"
    },
    {
      "id" : "Composition.section:eVitals.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8716-3",
          "display" : "Vital signs note"
        }]
      }
    },
    {
      "id" : "Composition.section:eExam",
      "path" : "Composition.section",
      "sliceName" : "eExam",
      "short" : "NEMSIS eExam section — body region physical examination findings",
      "comment" : "Contains references to EMSObservationExam resources.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eExam.title",
      "path" : "Composition.section.title",
      "patternString" : "Physical Exam"
    },
    {
      "id" : "Composition.section:eExam.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
          "code" : "section-eExam",
          "display" : "EMS Physical Exam"
        }]
      }
    },
    {
      "id" : "Composition.section:eProcedures",
      "path" : "Composition.section",
      "sliceName" : "eProcedures",
      "short" : "NEMSIS eProcedures section — EMS procedures performed",
      "comment" : "Contains references to EMSProcedure resources. Multiple ProcedureGroups → multiple entries.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eProcedures.title",
      "path" : "Composition.section.title",
      "patternString" : "Procedures Performed"
    },
    {
      "id" : "Composition.section:eProcedures.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "29554-3",
          "display" : "Procedure Narrative"
        }]
      }
    },
    {
      "id" : "Composition.section:eMedications",
      "path" : "Composition.section",
      "sliceName" : "eMedications",
      "short" : "NEMSIS eMedications section — medications administered",
      "comment" : "Contains references to EMSMedicationAdministration resources.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eMedications.title",
      "path" : "Composition.section.title",
      "patternString" : "Medications Administered"
    },
    {
      "id" : "Composition.section:eMedications.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "29549-3",
          "display" : "Medication administered Narrative"
        }]
      }
    },
    {
      "id" : "Composition.section:eAirway",
      "path" : "Composition.section",
      "sliceName" : "eAirway",
      "short" : "NEMSIS eAirway section — airway device, confirmation methods",
      "comment" : "eAirway elements map primarily to Procedure resources with airway-specific codes.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eAirway.title",
      "path" : "Composition.section.title",
      "patternString" : "Airway Management"
    },
    {
      "id" : "Composition.section:eAirway.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
          "code" : "section-eAirway",
          "display" : "EMS Airway Management"
        }]
      }
    },
    {
      "id" : "Composition.section:eArrest",
      "path" : "Composition.section",
      "sliceName" : "eArrest",
      "short" : "NEMSIS eArrest section — cardiac arrest data (NDR-009)",
      "comment" : "Contains references to Condition (SNOMED 410429000) and cardiac arrest Observation resources per NDR-009.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eArrest.title",
      "path" : "Composition.section.title",
      "patternString" : "Cardiac Arrest"
    },
    {
      "id" : "Composition.section:eArrest.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
          "code" : "section-eArrest",
          "display" : "EMS Cardiac Arrest"
        }]
      }
    },
    {
      "id" : "Composition.section:eNarrative",
      "path" : "Composition.section",
      "sliceName" : "eNarrative",
      "short" : "NEMSIS eNarrative section — free-text clinical narrative",
      "comment" : "NEMSIS eNarrative.01 - The free-text narrative of the EMS call. Carried as section.text.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eNarrative.title",
      "path" : "Composition.section.title",
      "patternString" : "PCR Narrative"
    },
    {
      "id" : "Composition.section:eNarrative.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "67781-5",
          "display" : "Summarization of encounter note"
        }]
      }
    },
    {
      "id" : "Composition.section:eDisposition",
      "path" : "Composition.section",
      "sliceName" : "eDisposition",
      "short" : "NEMSIS eDisposition section — transport, destination, patient outcome",
      "comment" : "References EMSEncounter.hospitalization and EMSLocationDestination.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eDisposition.title",
      "path" : "Composition.section.title",
      "patternString" : "Patient Disposition"
    },
    {
      "id" : "Composition.section:eDisposition.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "18776-5",
          "display" : "Plan of care note"
        }]
      }
    }]
  }
}

```
