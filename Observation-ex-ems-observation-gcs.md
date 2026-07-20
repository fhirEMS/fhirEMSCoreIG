# Example EMS GCS Panel Observation - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS GCS Panel Observation**

## Example Observation: Example EMS GCS Panel Observation

Profile: [EMS Glasgow Coma Score (GCS) Panel](StructureDefinition-ems-observation-gcs.md)

**EMS Vital Obtained Prior to EMS Care**: No

**status**: Final

**category**: Exam

**code**: Glasgow coma score total

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**encounter**: [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md)

**effective**: 2026-03-14 14:37:00-0800

**performer**: [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)

**hasMember**: 

* [Observation Glasgow coma score eye opening](Observation-ex-ems-gcs-eye.md)
* [Observation Glasgow coma score verbal](Observation-ex-ems-gcs-verbal.md)
* [Observation Glasgow coma score motor](Observation-ex-ems-gcs-motor.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Glasgow coma score special circumstances | Initial GCS has legitimate values without interventions |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ex-ems-observation-gcs",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-gcs"]
  },
  "extension" : [{
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-vital-obtained-prior",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0136",
        "code" : "N",
        "display" : "No"
      }]
    }
  }],
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
      "code" : "9269-2"
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
  "hasMember" : [{
    "reference" : "Observation/ex-ems-gcs-eye"
  },
  {
    "reference" : "Observation/ex-ems-gcs-verbal"
  },
  {
    "reference" : "Observation/ex-ems-gcs-motor"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "55285-1",
        "display" : "Glasgow coma score special circumstances"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-vitals",
        "code" : "3322003",
        "display" : "Initial GCS has legitimate values without interventions"
      }]
    }
  }]
}

```
