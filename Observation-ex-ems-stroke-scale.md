# Example EMS Stroke Scale Observation - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Stroke Scale Observation**

## Example Observation: Example EMS Stroke Scale Observation

> **EMS Stroke Scale Context**
* scaleType: Cincinnati Prehospital Stroke Scale (CPSS)
* scaleScore: 0

**status**: Final

**category**: Exam

**code**: Stroke Scale Result (eVitals.29)

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**encounter**: [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md)

**effective**: 2026-03-14 14:40:00-0800

**performer**: [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)

**value**: Negative



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ex-ems-stroke-scale",
  "extension" : [{
    "extension" : [{
      "url" : "scaleType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-vitals",
          "code" : "3330001",
          "display" : "Cincinnati Prehospital Stroke Scale (CPSS)"
        }]
      }
    },
    {
      "url" : "scaleScore",
      "valueDecimal" : 0
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-stroke-scale-context"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "exam"
    }]
  }],
  "code" : {
    "text" : "Stroke Scale Result (eVitals.29)"
  },
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "encounter" : {
    "reference" : "Encounter/ex-ems-encounter"
  },
  "effectiveDateTime" : "2026-03-14T14:40:00-08:00",
  "performer" : [{
    "reference" : "Practitioner/ex-ems-practitioner"
  }],
  "valueCodeableConcept" : {
    "extension" : [{
      "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-pertinent-negative",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-pertinent-negative",
          "code" : "PN.ExamFindingNotPresent",
          "display" : "Exam Finding Not Present"
        }]
      }
    }],
    "coding" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-vitals",
      "code" : "3329001",
      "display" : "Negative"
    }]
  }
}

```
