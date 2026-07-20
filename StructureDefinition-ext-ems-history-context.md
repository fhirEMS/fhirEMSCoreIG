# EMS History Context - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS History Context**

## Extension: EMS History Context 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-history-context | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSHistoryContext |

Contextual data for NEMSIS eHistory not directly representable in FHIR Condition: advance directives, patient's practitioner name, history source, immunization type/year, emergency information form, alcohol/drug use indicators, pregnancy status, and last oral intake.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Condition — Past Medical History](StructureDefinition-ems-condition-problems.md)
* Examples for this Extension: [Condition/ex-ems-condition-problems](Condition-ex-ems-condition-problems.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-history-context.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-history-context.csv), [Excel](StructureDefinition-ext-ems-history-context.xlsx), [Schematron](StructureDefinition-ext-ems-history-context.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-history-context",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-history-context",
  "version" : "0.2.0",
  "name" : "EMSHistoryContext",
  "title" : "EMS History Context",
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
  "description" : "Contextual data for NEMSIS eHistory not directly representable in FHIR Condition: advance directives, patient's practitioner name, history source, immunization type/year, emergency information form, alcohol/drug use indicators, pregnancy status, and last oral intake.",
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
      "short" : "EMS History Context",
      "definition" : "Contextual data for NEMSIS eHistory not directly representable in FHIR Condition: advance directives, patient's practitioner name, history source, immunization type/year, emergency information form, alcohol/drug use indicators, pregnancy status, and last oral intake."
    },
    {
      "id" : "Extension.extension:advanceDirectives",
      "path" : "Extension.extension",
      "sliceName" : "advanceDirectives",
      "short" : "eHistory.05 - Advance Directives",
      "comment" : "NEMSIS eHistory.05. Usage: Recommended. Nillable. NV: NotRecorded. Repeating (0..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:advanceDirectives.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:advanceDirectives.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "advanceDirectives"
    },
    {
      "id" : "Extension.extension:advanceDirectives.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-advance-directives"
      }
    },
    {
      "id" : "Extension.extension:practitionerName",
      "path" : "Extension.extension",
      "sliceName" : "practitionerName",
      "short" : "eHistory.02/.03/.04 - Patient's Practitioner Name",
      "comment" : "NEMSIS eHistory.02 (Last), .03 (First), .04 (Middle). Usage: Optional. The patient's primary practitioner as a HumanName (family/given).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:practitionerName.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:practitionerName.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "practitionerName"
    },
    {
      "id" : "Extension.extension:practitionerName.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "HumanName"
      }]
    },
    {
      "id" : "Extension.extension:historyObtainedFrom",
      "path" : "Extension.extension",
      "sliceName" : "historyObtainedFrom",
      "short" : "eHistory.09 - Medical History Obtained From",
      "comment" : "NEMSIS eHistory.09. Usage: Optional. Repeating (0..M).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:historyObtainedFrom.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:historyObtainedFrom.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "historyObtainedFrom"
    },
    {
      "id" : "Extension.extension:historyObtainedFrom.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-history-obtained-from"
      }
    },
    {
      "id" : "Extension.extension:immunizationType",
      "path" : "Extension.extension",
      "sliceName" : "immunizationType",
      "short" : "eHistory.10 - The Patient's Type of Immunization",
      "comment" : "NEMSIS eHistory.10. Usage: Optional. PN: Refused, UnableToComplete.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:immunizationType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:immunizationType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "immunizationType"
    },
    {
      "id" : "Extension.extension:immunizationType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-immunization-type"
      }
    },
    {
      "id" : "Extension.extension:immunizationYear",
      "path" : "Extension.extension",
      "sliceName" : "immunizationYear",
      "short" : "eHistory.11 - Immunization Year",
      "comment" : "NEMSIS eHistory.11. Usage: Optional. Year-precision date (e.g., 2020).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:immunizationYear.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:immunizationYear.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "immunizationYear"
    },
    {
      "id" : "Extension.extension:immunizationYear.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:emergencyInformationForm",
      "path" : "Extension.extension",
      "sliceName" : "emergencyInformationForm",
      "short" : "eHistory.16 - Presence of Emergency Information Form",
      "comment" : "NEMSIS eHistory.16. Usage: Optional. NEMSIS YesNoValues mapped to boolean.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:emergencyInformationForm.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:emergencyInformationForm.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "emergencyInformationForm"
    },
    {
      "id" : "Extension.extension:emergencyInformationForm.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:alcoholDrugUse",
      "path" : "Extension.extension",
      "sliceName" : "alcoholDrugUse",
      "short" : "eHistory.17 - Alcohol/Drug Use Indicators",
      "comment" : "NEMSIS eHistory.17. Usage: Required/National. Nillable. NV: NotRecorded. PN: Refused, UnableToComplete. Repeating (1..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:alcoholDrugUse.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:alcoholDrugUse.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "alcoholDrugUse"
    },
    {
      "id" : "Extension.extension:alcoholDrugUse.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-alcohol-drug-use"
      }
    },
    {
      "id" : "Extension.extension:pregnancy",
      "path" : "Extension.extension",
      "sliceName" : "pregnancy",
      "short" : "eHistory.18 - Pregnancy",
      "comment" : "NEMSIS eHistory.18. Usage: Optional (State). PN: ExamFindingNotPresent, UnableToComplete. Omit for patients for whom pregnancy is not applicable.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:pregnancy.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:pregnancy.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "pregnancy"
    },
    {
      "id" : "Extension.extension:pregnancy.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-pregnancy"
      }
    },
    {
      "id" : "Extension.extension:lastOralIntake",
      "path" : "Extension.extension",
      "sliceName" : "lastOralIntake",
      "short" : "eHistory.19 - Last Oral Intake",
      "comment" : "NEMSIS eHistory.19. Usage: Optional. Date/time of the patient's last oral intake.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:lastOralIntake.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:lastOralIntake.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "lastOralIntake"
    },
    {
      "id" : "Extension.extension:lastOralIntake.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-history-context"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
