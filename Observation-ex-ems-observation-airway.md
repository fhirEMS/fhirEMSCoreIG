# Example EMS Airway Management — Endotracheal Intubation - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Airway Management — Endotracheal Intubation**

## Example Observation: Example EMS Airway Management — Endotracheal Intubation

Profile: [EMS Airway Management Observation](StructureDefinition-ems-observation-airway.md)

> **EMS Airway Management Context**
* indications: Apnea or Agonal Respirations
* confirmedDateTime: 2026-03-14 14:32:00-0800
* deviceConfirmed: Endotracheal Tube
* confirmationMethod: Waveform ETCO2
* confirmationMethod: Auscultation
* confirmingPersonType: Another Person on the Same Crew

**status**: Final

**category**: Procedure

**code**: Emergency laryngeal intubation

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**encounter**: [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md)

**effective**: 2026-03-14 14:32:00-0800

**performer**: [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Respiratory rate by Spirometry --at maximum voluntary ventilation | 22 cm (Details: UCUM codecm = 'cm') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ex-ems-observation-airway",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-airway"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "indications",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-airway",
          "code" : "4001005",
          "display" : "Apnea or Agonal Respirations"
        }]
      }
    },
    {
      "url" : "confirmedDateTime",
      "valueDateTime" : "2026-03-14T14:32:00-08:00"
    },
    {
      "url" : "deviceConfirmed",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-airway",
          "code" : "4003003",
          "display" : "Endotracheal Tube"
        }]
      }
    },
    {
      "url" : "confirmationMethod",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-airway",
          "code" : "4004019",
          "display" : "Waveform ETCO2"
        }]
      }
    },
    {
      "url" : "confirmationMethod",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-airway",
          "code" : "4004001",
          "display" : "Auscultation"
        }]
      }
    },
    {
      "url" : "confirmingPersonType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-airway",
          "code" : "4006001",
          "display" : "Another Person on the Same Crew"
        }]
      }
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-airway-context"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "procedure",
      "display" : "Procedure"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "182682004",
      "display" : "Emergency laryngeal intubation"
    }]
  },
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "encounter" : {
    "reference" : "Encounter/ex-ems-encounter"
  },
  "effectiveDateTime" : "2026-03-14T14:32:00-08:00",
  "performer" : [{
    "reference" : "Practitioner/ex-ems-practitioner"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "19841-6"
      }]
    },
    "valueQuantity" : {
      "value" : 22,
      "unit" : "cm",
      "system" : "http://unitsofmeasure.org",
      "code" : "cm"
    }
  }]
}

```
