# Example EMS Medication Administration — Normal Saline Bolus - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Medication Administration — Normal Saline Bolus**

## Example MedicationAdministration: Example EMS Medication Administration — Normal Saline Bolus

Profile: [EMS Medication Administration](StructureDefinition-ems-medicationadministration.md)

> **EMS Medication Administration Context**
* priorEMSCare: No
* response: Improved
* complication: None
* authorization: Protocol (Standing Order)

**status**: Completed

**medication**: sodium chloride 9 MG/ML Injectable Solution

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**context**: [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md)

**effective**: 2026-03-14 14:42:00-0800

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Function** | **Actor** |
| * | Paramedic | [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md) |

### Dosages

| | | |
| :--- | :--- | :--- |
| - | **Route** | **Dose** |
| * | Intravenous (IV) | 500 ml (Details: UCUM codemL = 'mL') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "ex-ems-medicationadministration",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-medicationadministration"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "priorEMSCare",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0136",
          "code" : "N",
          "display" : "No"
        }]
      }
    },
    {
      "url" : "response",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications",
          "code" : "9916001",
          "display" : "Improved"
        }]
      }
    },
    {
      "url" : "complication",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications",
          "code" : "3708031",
          "display" : "None"
        }]
      }
    },
    {
      "url" : "authorization",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications",
          "code" : "9918005",
          "display" : "Protocol (Standing Order)"
        }]
      }
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-medication-context"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "313002",
      "display" : "sodium chloride 9 MG/ML Injectable Solution"
    }]
  },
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "context" : {
    "reference" : "Encounter/ex-ems-encounter"
  },
  "effectiveDateTime" : "2026-03-14T14:42:00-08:00",
  "performer" : [{
    "function" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications",
        "code" : "9905007",
        "display" : "Paramedic"
      }]
    },
    "actor" : {
      "reference" : "Practitioner/ex-ems-practitioner"
    }
  }],
  "dosage" : {
    "route" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications",
        "code" : "9927023",
        "display" : "Intravenous (IV)"
      }]
    },
    "dose" : {
      "value" : 500,
      "unit" : "ml",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    }
  }
}

```
