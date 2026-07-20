# EMS Medication Administration Context - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Medication Administration Context**

## Extension: EMS Medication Administration Context 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-medication-context | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSMedicationContext |

Contextual data for NEMSIS eMedications not directly representable in FHIR MedicationAdministration: prior EMS care indicator, clinical response, complication(s), and authorization type.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Medication Administration](StructureDefinition-ems-medicationadministration.md)
* Examples for this Extension: [MedicationAdministration/ex-ems-medicationadministration](MedicationAdministration-ex-ems-medicationadministration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-medication-context.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-medication-context.csv), [Excel](StructureDefinition-ext-ems-medication-context.xlsx), [Schematron](StructureDefinition-ext-ems-medication-context.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-medication-context",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-medication-context",
  "version" : "0.2.0",
  "name" : "EMSMedicationContext",
  "title" : "EMS Medication Administration Context",
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
  "description" : "Contextual data for NEMSIS eMedications not directly representable in FHIR MedicationAdministration: prior EMS care indicator, clinical response, complication(s), and authorization type.",
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
    "expression" : "MedicationAdministration"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Medication Administration Context",
      "definition" : "Contextual data for NEMSIS eMedications not directly representable in FHIR MedicationAdministration: prior EMS care indicator, clinical response, complication(s), and authorization type."
    },
    {
      "id" : "Extension.extension:priorEMSCare",
      "path" : "Extension.extension",
      "sliceName" : "priorEMSCare",
      "short" : "eMedications.02 - Medication Administered Prior to this Unit's EMS Care",
      "comment" : "NEMSIS eMedications.02. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:priorEMSCare.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:priorEMSCare.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "priorEMSCare"
    },
    {
      "id" : "Extension.extension:priorEMSCare.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/yesnodontknow"
      }
    },
    {
      "id" : "Extension.extension:response",
      "path" : "Extension.extension",
      "sliceName" : "response",
      "short" : "eMedications.07 - Response to Medication",
      "comment" : "NEMSIS eMedications.07. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:response.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:response.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "response"
    },
    {
      "id" : "Extension.extension:response.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-clinical-response"
      }
    },
    {
      "id" : "Extension.extension:complication",
      "path" : "Extension.extension",
      "sliceName" : "complication",
      "short" : "eMedications.08 - Medication Complication",
      "comment" : "NEMSIS eMedications.08. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Repeating (1..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:complication.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:complication.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "complication"
    },
    {
      "id" : "Extension.extension:complication.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medication-complication"
      }
    },
    {
      "id" : "Extension.extension:authorization",
      "path" : "Extension.extension",
      "sliceName" : "authorization",
      "short" : "eMedications.11 - Medication Authorization",
      "comment" : "NEMSIS eMedications.11. Usage: Optional. How the medication administration was authorized.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:authorization.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:authorization.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "authorization"
    },
    {
      "id" : "Extension.extension:authorization.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-authorization-type"
      }
    },
    {
      "id" : "Extension.extension:byAnotherUnit",
      "path" : "Extension.extension",
      "sliceName" : "byAnotherUnit",
      "short" : "eMedications.13 - Medication Administered by Another Unit",
      "comment" : "NEMSIS eMedications.13. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:byAnotherUnit.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:byAnotherUnit.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "byAnotherUnit"
    },
    {
      "id" : "Extension.extension:byAnotherUnit.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/yesnodontknow"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-medication-context"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
