# Example EMS Outcome — ED and Hospital Disposition - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Outcome — ED and Hospital Disposition**

## Example Observation: Example EMS Outcome — ED and Hospital Disposition

Profile: [EMS Outcome Observation](StructureDefinition-ems-observation-outcome.md)

**status**: Final

**category**: Exam

**code**: EMS Outcome Observation Panel

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**encounter**: [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md)

**effective**: 2026-03-15 08:00:00-0800

**performer**: [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)

> **component****code**: Emergency Department Patient Disposition**value**: Admitted as an inpatient to this hospital

> **component****code**: Diagnosis Narrative**value**: Unspecified injury of head, initial encounter

> **component****code**: Admission date**value**: 2026-03-14 17:30:00-0800

> **component****code**: Emergency Department Arrival Date and Time**value**: 2026-03-14 15:08:00-0800

> **component****code**: Injury Severity Score (ISS)**value**: 9



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ex-ems-observation-outcome",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-outcome"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "exam",
      "display" : "Exam"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
      "code" : "eOutcomePanel",
      "display" : "EMS Outcome Observation Panel"
    }]
  },
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "encounter" : {
    "reference" : "Encounter/ex-ems-encounter"
  },
  "effectiveDateTime" : "2026-03-15T08:00:00-08:00",
  "performer" : [{
    "reference" : "Practitioner/ex-ems-practitioner"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
        "code" : "eOutcomeEDDisposition"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.nubc.org/CodeSystem/PatDischargeStatus",
        "code" : "09",
        "display" : "Admitted as an inpatient to this hospital"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "29548-5",
        "display" : "Diagnosis Narrative"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/sid/icd-10-cm",
        "code" : "S09.90XA",
        "display" : "Unspecified injury of head, initial encounter"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "52455-3",
        "display" : "Admission date"
      }]
    },
    "valueDateTime" : "2026-03-14T17:30:00-08:00"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
        "code" : "eOutcomeEDArrivalDateTime"
      }]
    },
    "valueDateTime" : "2026-03-14T15:08:00-08:00"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
        "code" : "eOutcomeInjurySeverityScore"
      }]
    },
    "valueInteger" : 9
  }]
}

```
