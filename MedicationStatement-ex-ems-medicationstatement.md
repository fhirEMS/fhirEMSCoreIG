# Example EMS Home Medication — Lisinopril - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Home Medication — Lisinopril**

## Example MedicationStatement: Example EMS Home Medication — Lisinopril

Profile: [EMS Medication Statement — Home Medications](StructureDefinition-ems-medicationstatement.md)

**status**: Active

**medication**: Lisinopril 10 mg

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**context**: [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md)

**dateAsserted**: 2026-03-14 14:40:00-0800

**informationSource**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**reasonReference**: [Condition Essential (primary) hypertension](Condition-ex-ems-condition-problems.md)

> **dosage****text**: 10 mg orally once daily**timing**: Code **route**: Oral

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 10 mg (Details: UCUM codemg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "ex-ems-medicationstatement",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-medicationstatement"]
  },
  "status" : "active",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "314076",
      "display" : "lisinopril 10 MG Oral Tablet"
    }],
    "text" : "Lisinopril 10 mg"
  },
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "context" : {
    "reference" : "Encounter/ex-ems-encounter"
  },
  "dateAsserted" : "2026-03-14T14:40:00-08:00",
  "informationSource" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "reasonReference" : [{
    "reference" : "Condition/ex-ems-condition-problems"
  }],
  "dosage" : [{
    "text" : "10 mg orally once daily",
    "timing" : {
      "code" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-history",
          "code" : "3120019",
          "display" : "qd (every day)"
        }]
      }
    },
    "route" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications",
        "code" : "9927035",
        "display" : "Oral"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 10,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }]
}

```
