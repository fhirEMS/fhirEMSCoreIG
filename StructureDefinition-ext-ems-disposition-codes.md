# EMS Disposition Codes - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Disposition Codes**

## Extension: EMS Disposition Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-disposition-codes | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSDispositionCodes |

Groups the core NEMSIS disposition data elements. All sub-elements are Mandatory or Required/National. Nillable sub-elements accept NV codes via ext-ems-not-value when the value is not recorded or not applicable.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Encounter](StructureDefinition-ems-encounter.md)
* Examples for this Extension: [Encounter/ex-ems-encounter](Encounter-ex-ems-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-disposition-codes.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-disposition-codes.csv), [Excel](StructureDefinition-ext-ems-disposition-codes.xlsx), [Schematron](StructureDefinition-ext-ems-disposition-codes.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-disposition-codes",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-disposition-codes",
  "version" : "0.2.0",
  "name" : "EMSDispositionCodes",
  "title" : "EMS Disposition Codes",
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
  "description" : "Groups the core NEMSIS disposition data elements. All sub-elements are\nMandatory or Required/National. Nillable sub-elements accept NV codes via\next-ems-not-value when the value is not recorded or not applicable.",
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
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Disposition Codes",
      "definition" : "Groups the core NEMSIS disposition data elements. All sub-elements are\nMandatory or Required/National. Nillable sub-elements accept NV codes via\next-ems-not-value when the value is not recorded or not applicable."
    },
    {
      "id" : "Extension.extension:unitDisposition",
      "path" : "Extension.extension",
      "sliceName" : "unitDisposition",
      "short" : "eDisposition.27 - Unit Disposition",
      "comment" : "NEMSIS eDisposition.27. Usage: Mandatory/National. Not nillable. No NV or PN. Whether/how the unit made patient contact.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:unitDisposition.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:unitDisposition.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "unitDisposition"
    },
    {
      "id" : "Extension.extension:unitDisposition.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-unit-disposition"
      }
    },
    {
      "id" : "Extension.extension:patientEvaluationCare",
      "path" : "Extension.extension",
      "sliceName" : "patientEvaluationCare",
      "short" : "eDisposition.28 - Patient Evaluation/Care",
      "comment" : "NEMSIS eDisposition.28. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. What evaluation and care was provided.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:patientEvaluationCare.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:patientEvaluationCare.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "patientEvaluationCare"
    },
    {
      "id" : "Extension.extension:patientEvaluationCare.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-patient-eval-care"
      }
    },
    {
      "id" : "Extension.extension:crewDisposition",
      "path" : "Extension.extension",
      "sliceName" : "crewDisposition",
      "short" : "eDisposition.29 - Crew Disposition",
      "comment" : "NEMSIS eDisposition.29. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. What the crew did during the response.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:crewDisposition.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:crewDisposition.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "crewDisposition"
    },
    {
      "id" : "Extension.extension:crewDisposition.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-crew-disposition"
      }
    },
    {
      "id" : "Extension.extension:transportDisposition",
      "path" : "Extension.extension",
      "sliceName" : "transportDisposition",
      "short" : "eDisposition.30 - Transport Disposition",
      "comment" : "NEMSIS eDisposition.30. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Whether/how the patient was transported.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:transportDisposition.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:transportDisposition.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "transportDisposition"
    },
    {
      "id" : "Extension.extension:transportDisposition.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-transport-disposition"
      }
    },
    {
      "id" : "Extension.extension:levelOfCareProvided",
      "path" : "Extension.extension",
      "sliceName" : "levelOfCareProvided",
      "short" : "eDisposition.32 - Level of Care Provided per Protocol",
      "comment" : "NEMSIS eDisposition.32. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. The level of care (BLS, ALS, Critical Care, etc.) authorized by protocol.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:levelOfCareProvided.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:levelOfCareProvided.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "levelOfCareProvided"
    },
    {
      "id" : "Extension.extension:levelOfCareProvided.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-level-of-care"
      }
    },
    {
      "id" : "Extension.extension:patientAcuity",
      "path" : "Extension.extension",
      "sliceName" : "patientAcuity",
      "short" : "eDisposition.19 - Acuity Upon EMS Release of Patient",
      "comment" : "NEMSIS eDisposition.19. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. The patient's acuity triage level at the time of EMS release.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:patientAcuity.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:patientAcuity.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "patientAcuity"
    },
    {
      "id" : "Extension.extension:patientAcuity.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-patient-acuity"
      }
    },
    {
      "id" : "Extension.extension:reasonForRefusal",
      "path" : "Extension.extension",
      "sliceName" : "reasonForRefusal",
      "short" : "eDisposition.31 - Reason for Refusal/Release",
      "comment" : "NEMSIS eDisposition.31. Usage: Optional. Repeating (0..M). Not nillable. No NV or PN. Reason documented when patient refused or was released.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:reasonForRefusal.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:reasonForRefusal.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "reasonForRefusal"
    },
    {
      "id" : "Extension.extension:reasonForRefusal.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-reason-for-refusal"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-disposition-codes"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
