# Example EMS Exam — Skin Assessment - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Exam — Skin Assessment**

## Example Observation: Example EMS Exam — Skin Assessment

Profile: [EMS Physical Exam Observation](StructureDefinition-ems-observation-exam.md)

**status**: Final

**category**: Exam

**code**: Physical findings of Skin

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**encounter**: [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md)

**effective**: 2026-03-14 14:37:00-0800

**performer**: [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)

> **component****code**: Temperature of Skin**value**: Pale

> **component****code**: Physical findings of Skin**value**: Diaphoretic



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ex-ems-exam-skin",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-exam"]
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
      "system" : "http://loinc.org",
      "code" : "8709-8",
      "display" : "Physical findings of Skin"
    }]
  },
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "encounter" : {
    "reference" : "Encounter/ex-ems-encounter"
  },
  "effectiveDateTime" : "2026-03-14T14:37:00-08:00",
  "performer" : [{
    "reference" : "Practitioner/ex-ems-practitioner"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "39106-0"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-exam",
        "code" : "3504025",
        "display" : "Pale"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8709-8"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-exam",
        "code" : "3504007",
        "display" : "Diaphoretic"
      }]
    }
  }]
}

```
