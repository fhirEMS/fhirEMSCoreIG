# EMS Outcome Observation - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Outcome Observation**

## Resource Profile: EMS Outcome Observation 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-outcome | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSObservationOutcome |

 
Documents hospital and ED outcome data collected by the EMS agency. Covers NEMSIS eOutcome.01 (ED Disposition), eOutcome.02 (Hospital Disposition), eOutcome.09/12 (ED/Hospital Procedures using ICD-10-PCS), eOutcome.10/13 (ED/Hospital Diagnoses using ICD-10-CM), eOutcome.11 (Hospital Admission DateTime), eOutcome.16 (Hospital Discharge DateTime), eOutcome.18 (ED Admission DateTime), and eOutcome.21 (Injury Severity Score). Each significant eOutcome data point is captured as an Observation component. 

**Usages:**

* Examples for this Profile: [Observation/ex-ems-observation-outcome](Observation-ex-ems-observation-outcome.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-observation-outcome.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-observation-outcome.csv), [Excel](StructureDefinition-ems-observation-outcome.xlsx), [Schematron](StructureDefinition-ems-observation-outcome.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-observation-outcome",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-outcome",
  "version" : "0.2.0",
  "name" : "EMSObservationOutcome",
  "title" : "EMS Outcome Observation",
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
  "description" : "Documents hospital and ED outcome data collected by the EMS agency. Covers NEMSIS eOutcome.01 (ED Disposition), eOutcome.02 (Hospital Disposition), eOutcome.09/12 (ED/Hospital Procedures using ICD-10-PCS), eOutcome.10/13 (ED/Hospital Diagnoses using ICD-10-CM), eOutcome.11 (Hospital Admission DateTime), eOutcome.16 (Hospital Discharge DateTime), eOutcome.18 (ED Admission DateTime), and eOutcome.21 (Injury Severity Score). Each significant eOutcome data point is captured as an Observation component.",
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
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-clinical-result",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Observation status (final | preliminary | amended)"
    },
    {
      "id" : "Observation.category:us-core",
      "path" : "Observation.category",
      "sliceName" : "us-core",
      "comment" : "eOutcome data is hospital outcome and disposition information collected by the EMS agency. 'exam' is the closest category in the US Core Clinical Result Observation Category value set.",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam",
          "display" : "Exam"
        }]
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "eOutcome — EMS Outcome Panel",
      "comment" : "NEMSIS eOutcome panel code. Individual outcomes are captured in Observation.component slices. Originally mapped to LOINC 74209-4 (EMS-NEMSIS collaboration code, not in LOINC v2.81 cache).",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "eOutcomePanel",
          "display" : "EMS Outcome Observation Panel"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }]
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
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
      "id" : "Observation.effective[x]:effectiveDateTime",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
      "short" : "Date/time outcome data was recorded or reported",
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
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:edDisposition",
      "path" : "Observation.component",
      "sliceName" : "edDisposition",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:edDisposition.code",
      "path" : "Observation.component.code",
      "short" : "eOutcome.01 - ED Disposition",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "eOutcomeEDDisposition"
        }]
      }
    },
    {
      "id" : "Observation.component:edDisposition.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "eOutcome.01 - ED Disposition Code (UB-04)",
      "comment" : "NEMSIS eOutcome.01. Usage: Required/National. NV: NotRecorded. UB-04 patient discharge status codes.",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-discharge-disposition"
      }
    },
    {
      "id" : "Observation.component:hospitalDisposition",
      "path" : "Observation.component",
      "sliceName" : "hospitalDisposition",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hospitalDisposition.code",
      "path" : "Observation.component.code",
      "short" : "eOutcome.02 - Hospital Discharge Disposition",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8656-1"
        }]
      }
    },
    {
      "id" : "Observation.component:hospitalDisposition.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "eOutcome.02 - Hospital Discharge Disposition Code (UB-04)",
      "comment" : "NEMSIS eOutcome.02. Usage: Required/National. NV: NotRecorded. UB-04 patient discharge status codes.",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-discharge-disposition"
      }
    },
    {
      "id" : "Observation.component:edProcedure",
      "path" : "Observation.component",
      "sliceName" : "edProcedure",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:edProcedure.code",
      "path" : "Observation.component.code",
      "short" : "eOutcome.09 - ED Procedure (ICD-10-PCS)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "52830-7"
        }]
      }
    },
    {
      "id" : "Observation.component:edProcedure.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:edProcedure.value[x].coding.system",
      "path" : "Observation.component.value[x].coding.system",
      "short" : "eOutcome.09 - ED Procedure Code (ICD-10-PCS)",
      "comment" : "NEMSIS eOutcome.09. Usage: Required/National. NV: NotRecorded. ICD-10-PCS procedure code. Repeating (0..M).",
      "patternUri" : "http://www.cms.gov/Medicare/Coding/ICD10"
    },
    {
      "id" : "Observation.component:edDiagnosis",
      "path" : "Observation.component",
      "sliceName" : "edDiagnosis",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:edDiagnosis.code",
      "path" : "Observation.component.code",
      "short" : "eOutcome.10 - ED Diagnosis (ICD-10-CM)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "29548-5",
          "display" : "Diagnosis Narrative"
        }]
      }
    },
    {
      "id" : "Observation.component:edDiagnosis.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:edDiagnosis.value[x].coding.system",
      "path" : "Observation.component.value[x].coding.system",
      "short" : "eOutcome.10 - ED Diagnosis Code (ICD-10-CM)",
      "comment" : "NEMSIS eOutcome.10. Usage: Required/National. NV: NotRecorded. ICD-10-CM diagnosis code. Repeating (0..M).",
      "patternUri" : "http://hl7.org/fhir/sid/icd-10-cm"
    },
    {
      "id" : "Observation.component:hospitalAdmitDateTime",
      "path" : "Observation.component",
      "sliceName" : "hospitalAdmitDateTime",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hospitalAdmitDateTime.code",
      "path" : "Observation.component.code",
      "short" : "eOutcome.11 - Hospital Admission Date/Time",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "52455-3",
          "display" : "Admission date"
        }]
      }
    },
    {
      "id" : "Observation.component:hospitalAdmitDateTime.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "eOutcome.11 - Hospital Admission Date/Time",
      "comment" : "NEMSIS eOutcome.11. Usage: Required/National. NV: NotRecorded.",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hospitalProcedure",
      "path" : "Observation.component",
      "sliceName" : "hospitalProcedure",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hospitalProcedure.code",
      "path" : "Observation.component.code",
      "short" : "eOutcome.12 - Hospital Procedure (ICD-10-PCS)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "eOutcomeHospitalProcedure"
        }]
      }
    },
    {
      "id" : "Observation.component:hospitalProcedure.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hospitalProcedure.value[x].coding.system",
      "path" : "Observation.component.value[x].coding.system",
      "short" : "eOutcome.12 - Hospital Procedure Code (ICD-10-PCS)",
      "comment" : "NEMSIS eOutcome.12. Usage: Required/National. NV: NotRecorded. ICD-10-PCS procedure code. Repeating (0..M).",
      "patternUri" : "http://www.cms.gov/Medicare/Coding/ICD10"
    },
    {
      "id" : "Observation.component:hospitalDiagnosis",
      "path" : "Observation.component",
      "sliceName" : "hospitalDiagnosis",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hospitalDiagnosis.code",
      "path" : "Observation.component.code",
      "short" : "eOutcome.13 - Hospital Diagnosis (ICD-10-CM)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "29308-4",
          "display" : "Diagnosis"
        }]
      }
    },
    {
      "id" : "Observation.component:hospitalDiagnosis.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hospitalDiagnosis.value[x].coding.system",
      "path" : "Observation.component.value[x].coding.system",
      "short" : "eOutcome.13 - Hospital Diagnosis Code (ICD-10-CM)",
      "comment" : "NEMSIS eOutcome.13. Usage: Required/National. NV: NotRecorded. ICD-10-CM diagnosis code. Repeating (0..M).",
      "patternUri" : "http://hl7.org/fhir/sid/icd-10-cm"
    },
    {
      "id" : "Observation.component:hospitalDischargeDateTime",
      "path" : "Observation.component",
      "sliceName" : "hospitalDischargeDateTime",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hospitalDischargeDateTime.code",
      "path" : "Observation.component.code",
      "short" : "eOutcome.16 - Hospital Discharge Date/Time",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8651-2"
        }]
      }
    },
    {
      "id" : "Observation.component:hospitalDischargeDateTime.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "eOutcome.16 - Hospital Discharge Date/Time",
      "comment" : "NEMSIS eOutcome.16. Usage: Required/National. NV: NotRecorded.",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:edAdmitDateTime",
      "path" : "Observation.component",
      "sliceName" : "edAdmitDateTime",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:edAdmitDateTime.code",
      "path" : "Observation.component.code",
      "short" : "eOutcome.18 - ED Admission Date/Time",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "eOutcomeEDArrivalDateTime"
        }]
      }
    },
    {
      "id" : "Observation.component:edAdmitDateTime.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "eOutcome.18 - ED Admission Date/Time",
      "comment" : "NEMSIS eOutcome.18. Usage: Required/National. NV: NotRecorded.",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:injurySeverityScore",
      "path" : "Observation.component",
      "sliceName" : "injurySeverityScore",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:injurySeverityScore.code",
      "path" : "Observation.component.code",
      "short" : "eOutcome.21 - Injury Severity Score",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "eOutcomeInjurySeverityScore"
        }]
      }
    },
    {
      "id" : "Observation.component:injurySeverityScore.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "eOutcome.21 - Injury Severity Score (ISS) integer 1–75",
      "comment" : "NEMSIS eOutcome.21. Usage: Optional. AIS-based ISS score, range 1–75.",
      "type" : [{
        "code" : "integer"
      }],
      "mustSupport" : true
    }]
  }
}

```
