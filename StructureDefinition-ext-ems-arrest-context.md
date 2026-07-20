# EMS Cardiac Arrest Context - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Cardiac Arrest Context**

## Extension: EMS Cardiac Arrest Context 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-arrest-context | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSArrestContext |

Contextual data for NEMSIS eArrest not directly representable in FHIR Condition: witnessed-by, resuscitation actions, AED use, CPR type, therapeutic hypothermia, ROSC, neurological outcome, end-of-event, and first-responder roles.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Cardiac Arrest Condition](StructureDefinition-ems-condition-arrest.md)
* Examples for this Extension: [Condition/ex-ems-condition-arrest](Condition-ex-ems-condition-arrest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-arrest-context.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-arrest-context.csv), [Excel](StructureDefinition-ext-ems-arrest-context.xlsx), [Schematron](StructureDefinition-ext-ems-arrest-context.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-arrest-context",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-arrest-context",
  "version" : "0.2.0",
  "name" : "EMSArrestContext",
  "title" : "EMS Cardiac Arrest Context",
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
  "description" : "Contextual data for NEMSIS eArrest not directly representable in FHIR Condition: witnessed-by, resuscitation actions, AED use, CPR type, therapeutic hypothermia, ROSC, neurological outcome, end-of-event, and first-responder roles.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Cardiac Arrest Context",
      "definition" : "Contextual data for NEMSIS eArrest not directly representable in FHIR Condition: witnessed-by, resuscitation actions, AED use, CPR type, therapeutic hypothermia, ROSC, neurological outcome, end-of-event, and first-responder roles."
    },
    {
      "id" : "Extension.extension:cardiacArrest",
      "path" : "Extension.extension",
      "sliceName" : "cardiacArrest",
      "short" : "eArrest.01 - Cardiac Arrest",
      "comment" : "NEMSIS eArrest.01. Usage: Required/National. NV: NotRecorded.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:cardiacArrest.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:cardiacArrest.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "cardiacArrest"
    },
    {
      "id" : "Extension.extension:cardiacArrest.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-cardiac-arrest"
      }
    },
    {
      "id" : "Extension.extension:etiology",
      "path" : "Extension.extension",
      "sliceName" : "etiology",
      "short" : "eArrest.02 - Cause of Cardiac Arrest",
      "comment" : "NEMSIS eArrest.02. Usage: Required/National. NV: NotRecorded.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:etiology.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:etiology.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "etiology"
    },
    {
      "id" : "Extension.extension:etiology.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-arrest-etiology"
      }
    },
    {
      "id" : "Extension.extension:resuscitationBy",
      "path" : "Extension.extension",
      "sliceName" : "resuscitationBy",
      "short" : "eArrest.03 - Resuscitation Attempted By This Unit",
      "comment" : "NEMSIS eArrest.03. Usage: Required/National. NV: NotRecorded. Repeating (1..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:resuscitationBy.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:resuscitationBy.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "resuscitationBy"
    },
    {
      "id" : "Extension.extension:resuscitationBy.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-resuscitation-attempted"
      }
    },
    {
      "id" : "Extension.extension:witnessedBy",
      "path" : "Extension.extension",
      "sliceName" : "witnessedBy",
      "short" : "eArrest.04 - Arrest Witnessed By",
      "comment" : "NEMSIS eArrest.04. Usage: Required/National. NV: NotRecorded. Repeating (1..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:witnessedBy.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:witnessedBy.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "witnessedBy"
    },
    {
      "id" : "Extension.extension:witnessedBy.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-arrest-witnessed"
      }
    },
    {
      "id" : "Extension.extension:aedUsePrior",
      "path" : "Extension.extension",
      "sliceName" : "aedUsePrior",
      "short" : "eArrest.07 - AED Use Prior to EMS Arrival",
      "comment" : "NEMSIS eArrest.07. Usage: Required/National. NV: NotRecorded.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:aedUsePrior.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:aedUsePrior.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "aedUsePrior"
    },
    {
      "id" : "Extension.extension:aedUsePrior.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-aed-use"
      }
    },
    {
      "id" : "Extension.extension:cprType",
      "path" : "Extension.extension",
      "sliceName" : "cprType",
      "short" : "eArrest.09 - Type of CPR Provided",
      "comment" : "NEMSIS eArrest.09. Usage: Required/National. NV: NotRecorded. Repeating (1..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:cprType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:cprType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "cprType"
    },
    {
      "id" : "Extension.extension:cprType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-cpr-type"
      }
    },
    {
      "id" : "Extension.extension:therapeuticHypothermia",
      "path" : "Extension.extension",
      "sliceName" : "therapeuticHypothermia",
      "short" : "eArrest.10 - Therapeutic Hypothermia (TH)",
      "comment" : "NEMSIS eArrest.10. Usage: Optional. Whether TH was initiated.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:therapeuticHypothermia.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:therapeuticHypothermia.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "therapeuticHypothermia"
    },
    {
      "id" : "Extension.extension:therapeuticHypothermia.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:firstRhythm",
      "path" : "Extension.extension",
      "sliceName" : "firstRhythm",
      "short" : "eArrest.11 - First Monitored Cardiac Rhythm of the Patient",
      "comment" : "NEMSIS eArrest.11. Usage: Required/National. NV: NotRecorded.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:firstRhythm.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:firstRhythm.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "firstRhythm"
    },
    {
      "id" : "Extension.extension:firstRhythm.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-first-rhythm"
      }
    },
    {
      "id" : "Extension.extension:rosc",
      "path" : "Extension.extension",
      "sliceName" : "rosc",
      "short" : "eArrest.12 - Any Return of Spontaneous Circulation",
      "comment" : "NEMSIS eArrest.12. Usage: Required/National. NV: NotRecorded. Repeating (1..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:rosc.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:rosc.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "rosc"
    },
    {
      "id" : "Extension.extension:rosc.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-rosc"
      }
    },
    {
      "id" : "Extension.extension:neurologicalOutcome",
      "path" : "Extension.extension",
      "sliceName" : "neurologicalOutcome",
      "short" : "eArrest.13 - Neurological Outcome at Hospital Discharge",
      "comment" : "NEMSIS eArrest.13. Usage: Optional. Cerebral performance category (CPC).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:neurologicalOutcome.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:neurologicalOutcome.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "neurologicalOutcome"
    },
    {
      "id" : "Extension.extension:neurologicalOutcome.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-neurological-outcome"
      }
    },
    {
      "id" : "Extension.extension:arrestDateTime",
      "path" : "Extension.extension",
      "sliceName" : "arrestDateTime",
      "short" : "eArrest.14 - Date/Time of Cardiac Arrest",
      "comment" : "NEMSIS eArrest.14. Usage: Required/National. Nillable. NV: NotRecorded. PN: ExamFindingNotPresent, UnableToComplete.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:arrestDateTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:arrestDateTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "arrestDateTime"
    },
    {
      "id" : "Extension.extension:arrestDateTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:cprDiscontinuedReason",
      "path" : "Extension.extension",
      "sliceName" : "cprDiscontinuedReason",
      "short" : "eArrest.16 - Reason CPR/Resuscitation Discontinued",
      "comment" : "NEMSIS eArrest.16. Usage: Required/National. NV: NotRecorded. Repeating (1..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:cprDiscontinuedReason.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:cprDiscontinuedReason.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "cprDiscontinuedReason"
    },
    {
      "id" : "Extension.extension:cprDiscontinuedReason.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-cpr-discontinued-reason"
      }
    },
    {
      "id" : "Extension.extension:rhythmAtDestination",
      "path" : "Extension.extension",
      "sliceName" : "rhythmAtDestination",
      "short" : "eArrest.17 - Cardiac Rhythm on Arrival at Destination",
      "comment" : "NEMSIS eArrest.17. Usage: Required/National. NV: NotRecorded. Uses cardiac rhythm codes (9901xxx). Repeating (1..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:rhythmAtDestination.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:rhythmAtDestination.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "rhythmAtDestination"
    },
    {
      "id" : "Extension.extension:rhythmAtDestination.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-cardiac-rhythm"
      }
    },
    {
      "id" : "Extension.extension:endOfArrestEvent",
      "path" : "Extension.extension",
      "sliceName" : "endOfArrestEvent",
      "short" : "eArrest.18 - End of EMS Cardiac Arrest Event",
      "comment" : "NEMSIS eArrest.18. Usage: Required/National. NV: NotRecorded.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:endOfArrestEvent.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:endOfArrestEvent.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "endOfArrestEvent"
    },
    {
      "id" : "Extension.extension:endOfArrestEvent.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-arrest-end-event"
      }
    },
    {
      "id" : "Extension.extension:whoFirstCPR",
      "path" : "Extension.extension",
      "sliceName" : "whoFirstCPR",
      "short" : "eArrest.20 - Who First Initiated CPR",
      "comment" : "NEMSIS eArrest.20. Usage: Required/National. NV: NotRecorded.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:whoFirstCPR.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:whoFirstCPR.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "whoFirstCPR"
    },
    {
      "id" : "Extension.extension:whoFirstCPR.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-arrest-first-responder"
      }
    },
    {
      "id" : "Extension.extension:whoFirstAED",
      "path" : "Extension.extension",
      "sliceName" : "whoFirstAED",
      "short" : "eArrest.21 - Who First Applied the AED",
      "comment" : "NEMSIS eArrest.21. Usage: Required/National. NV: NotRecorded.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:whoFirstAED.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:whoFirstAED.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "whoFirstAED"
    },
    {
      "id" : "Extension.extension:whoFirstAED.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-arrest-first-responder"
      }
    },
    {
      "id" : "Extension.extension:whoFirstDefibrillated",
      "path" : "Extension.extension",
      "sliceName" : "whoFirstDefibrillated",
      "short" : "eArrest.22 - Who First Defibrillated the Patient",
      "comment" : "NEMSIS eArrest.22. Usage: Required/National. NV: NotRecorded.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:whoFirstDefibrillated.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:whoFirstDefibrillated.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "whoFirstDefibrillated"
    },
    {
      "id" : "Extension.extension:whoFirstDefibrillated.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-arrest-first-responder"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-arrest-context"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
