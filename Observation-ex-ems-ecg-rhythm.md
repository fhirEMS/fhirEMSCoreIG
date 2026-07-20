# Example EMS ECG Rhythm Observation - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS ECG Rhythm Observation**

## Example Observation: Example EMS ECG Rhythm Observation

> **EMS ECG Context**
* ecgType: 12 Lead-Left Sided (Normal)
* ecgMethod: Computer Interpretation

**status**: Final

**category**: Vital Signs

**code**: Cardiac Rhythm / Electrocardiography (eVitals.03)

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**encounter**: [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md)

**effective**: 2026-03-14 14:38:00-0800

**performer**: [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)

**value**: Sinus Tachycardia



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ex-ems-ecg-rhythm",
  "extension" : [{
    "extension" : [{
      "url" : "ecgType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-vitals",
          "code" : "3304007",
          "display" : "12 Lead-Left Sided (Normal)"
        }]
      }
    },
    {
      "url" : "ecgMethod",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-vitals",
          "code" : "3305001",
          "display" : "Computer Interpretation"
        }]
      }
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-ecg-context"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "text" : "Cardiac Rhythm / Electrocardiography (eVitals.03)"
  },
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "encounter" : {
    "reference" : "Encounter/ex-ems-encounter"
  },
  "effectiveDateTime" : "2026-03-14T14:38:00-08:00",
  "performer" : [{
    "reference" : "Practitioner/ex-ems-practitioner"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-vitals",
      "code" : "9901049",
      "display" : "Sinus Tachycardia"
    }]
  }
}

```
