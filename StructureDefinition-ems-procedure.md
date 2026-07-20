# EMS Procedure - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Procedure**

## Resource Profile: EMS Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-procedure | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSProcedure |

 
EMS procedure derived from US Core Procedure. Represents the NEMSIS eProcedures section (Version 3.5.1.251001CP2). Each procedure in a NEMSIS ProcedureGroup maps to one FHIR Procedure resource. 
eProcedures.03 uses SNOMED CT codes (direct pass-through from NEMSIS). Complications (eProcedures.07) map to Procedure.complication. Outcome/success (eProcedures.06) maps to Procedure.outcome. Vascular access site (eProcedures.13) maps to Procedure.bodySite. Additional NEMSIS context (prior EMS care, attempt count, response, authorization, airway technique, by-another-unit) is carried in the EMSProcedureContext extension. 

**Usages:**

* Examples for this Profile: [Procedure/ex-ems-procedure](Procedure-ex-ems-procedure.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-procedure.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-procedure.csv), [Excel](StructureDefinition-ems-procedure.xlsx), [Schematron](StructureDefinition-ems-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-procedure",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-procedure",
  "version" : "0.2.0",
  "name" : "EMSProcedure",
  "title" : "EMS Procedure",
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
  "description" : "EMS procedure derived from US Core Procedure. Represents the NEMSIS\neProcedures section (Version 3.5.1.251001CP2). Each procedure in a\nNEMSIS ProcedureGroup maps to one FHIR Procedure resource.\n\neProcedures.03 uses SNOMED CT codes (direct pass-through from NEMSIS).\nComplications (eProcedures.07) map to Procedure.complication.\nOutcome/success (eProcedures.06) maps to Procedure.outcome.\nVascular access site (eProcedures.13) maps to Procedure.bodySite.\nAdditional NEMSIS context (prior EMS care, attempt count, response,\nauthorization, airway technique, by-another-unit) is carried in\nthe EMSProcedureContext extension.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.extension",
      "path" : "Procedure.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "eProcedures.02/05/08/11/14/15 - EMS Procedure Context",
      "comment" : "Carries NEMSIS eProcedures elements not representable in base FHIR Procedure: priorEMSCare (.02), numberOfAttempts (.05), response (.08), authorization (.11), airwayTechnique (.14), byAnotherUnit (.15)."
    },
    {
      "id" : "Procedure.extension:procedureContext",
      "path" : "Procedure.extension",
      "sliceName" : "procedureContext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-procedure-context"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "comment" : "US Core (inherited from FHIR R4) requires required binding to event-status ValueSet. Use 'completed' for successfully performed procedures. Use 'not-done' + statusReason for NV (NotRecorded → dataAbsentReason not-asked pattern)."
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "eProcedures.03 - Procedure (SNOMED CT)",
      "comment" : "NEMSIS eProcedures.03. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. PN: ExamFindingNotPresent, UnableToComplete. NEMSIS stores SNOMED CT codes directly — map to code.coding with system http://snomed.info/sct. US Core extensible binding to us-core-procedure-code ValueSet.",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/us/core/ValueSet/us-core-procedure-code"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }]
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "short" : "The EMS encounter during which this procedure was performed",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "short" : "eProcedures.01 - Date/Time Procedure Performed",
      "comment" : "NEMSIS eProcedures.01. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
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
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer.function",
      "path" : "Procedure.performer.function",
      "short" : "eProcedures.10 - Role/Type of Person Performing the Procedure",
      "comment" : "NEMSIS eProcedures.10. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-caregiver-level"
      }
    },
    {
      "id" : "Procedure.performer.actor",
      "path" : "Procedure.performer.actor",
      "short" : "eProcedures.09 - Procedure Crew Member ID",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner"]
      }]
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "short" : "eProcedures.13 - Vascular Access Location",
      "comment" : "NEMSIS eProcedures.13. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. Anatomical site of vascular access.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-vascular-access-location"
      }
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "short" : "eProcedures.06 - Procedure Successful",
      "comment" : "NEMSIS eProcedures.06. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Maps to outcome: successful → outcome code indicating success; unsuccessful → failure code.",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.complication",
      "path" : "Procedure.complication",
      "short" : "eProcedures.07 - Procedure Complication",
      "comment" : "NEMSIS eProcedures.07. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Repeating (1..M). Adverse events occurring with the procedure.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-procedure-complication"
      }
    }]
  }
}

```
