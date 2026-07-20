# EMS Procedure Context - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Procedure Context**

## Extension: EMS Procedure Context 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-procedure-context | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSProcedureContext |

Contextual data for NEMSIS eProcedures not directly representable in FHIR Procedure: prior EMS care indicator, number of attempts, clinical response, authorization type, airway technique(s), and performed-by-another-unit indicator.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Procedure](StructureDefinition-ems-procedure.md)
* Examples for this Extension: [Procedure/ex-ems-procedure](Procedure-ex-ems-procedure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-procedure-context.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-procedure-context.csv), [Excel](StructureDefinition-ext-ems-procedure-context.xlsx), [Schematron](StructureDefinition-ext-ems-procedure-context.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-procedure-context",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-procedure-context",
  "version" : "0.2.0",
  "name" : "EMSProcedureContext",
  "title" : "EMS Procedure Context",
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
  "description" : "Contextual data for NEMSIS eProcedures not directly representable in FHIR Procedure: prior EMS care indicator, number of attempts, clinical response, authorization type, airway technique(s), and performed-by-another-unit indicator.",
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
    "expression" : "Procedure"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Procedure Context",
      "definition" : "Contextual data for NEMSIS eProcedures not directly representable in FHIR Procedure: prior EMS care indicator, number of attempts, clinical response, authorization type, airway technique(s), and performed-by-another-unit indicator."
    },
    {
      "id" : "Extension.extension:priorEMSCare",
      "path" : "Extension.extension",
      "sliceName" : "priorEMSCare",
      "short" : "eProcedures.02 - Procedure Performed Prior to this Unit's EMS Care",
      "comment" : "NEMSIS eProcedures.02. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
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
      "id" : "Extension.extension:numberOfAttempts",
      "path" : "Extension.extension",
      "sliceName" : "numberOfAttempts",
      "short" : "eProcedures.05 - Number of Procedure Attempts",
      "comment" : "NEMSIS eProcedures.05. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Integer count of attempts.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:numberOfAttempts.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:numberOfAttempts.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "numberOfAttempts"
    },
    {
      "id" : "Extension.extension:numberOfAttempts.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:response",
      "path" : "Extension.extension",
      "sliceName" : "response",
      "short" : "eProcedures.08 - Response to Procedure",
      "comment" : "NEMSIS eProcedures.08. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
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
      "id" : "Extension.extension:authorization",
      "path" : "Extension.extension",
      "sliceName" : "authorization",
      "short" : "eProcedures.11 - Procedure Authorization",
      "comment" : "NEMSIS eProcedures.11. Usage: Optional. How the procedure was authorized.",
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
      "id" : "Extension.extension:airwayTechnique",
      "path" : "Extension.extension",
      "sliceName" : "airwayTechnique",
      "short" : "eProcedures.14 - Airway Placement Technique",
      "comment" : "NEMSIS eProcedures.14. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. Repeating (0..M). Required when procedure is an airway placement.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:airwayTechnique.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:airwayTechnique.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "airwayTechnique"
    },
    {
      "id" : "Extension.extension:airwayTechnique.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-technique"
      }
    },
    {
      "id" : "Extension.extension:byAnotherUnit",
      "path" : "Extension.extension",
      "sliceName" : "byAnotherUnit",
      "short" : "eProcedures.15 - Procedure Performed by Another Unit",
      "comment" : "NEMSIS eProcedures.15. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable.",
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
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-procedure-context"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
