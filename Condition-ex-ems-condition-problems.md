# Example EMS Past Medical History — Hypertension - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Past Medical History — Hypertension**

## Example Condition: Example EMS Past Medical History — Hypertension

Profile: [EMS Condition — Past Medical History](StructureDefinition-ems-condition-problems.md)

> **EMS History Context**
* advanceDirectives: None
* practitionerName: Sarah Chen 
* historyObtainedFrom: Patient
* immunizationType: Tetanus
* immunizationYear: 2020
* emergencyInformationForm: false
* alcoholDrugUse: Physical Exam Indicates Suspected Alcohol or Drug Use
* lastOralIntake: 2026-03-14 12:30:00-0800

**clinicalStatus**: Active

**verificationStatus**: Unconfirmed

**category**: Problem List Item

**code**: Hypertension

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**encounter**: [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md)

**recordedDate**: 2026-03-14 14:40:00-0800

**recorder**: [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ex-ems-condition-problems",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition-problems"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "advanceDirectives",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-history",
          "code" : "3105005",
          "display" : "None"
        }]
      }
    },
    {
      "url" : "practitionerName",
      "valueHumanName" : {
        "family" : "Chen",
        "given" : ["Sarah"]
      }
    },
    {
      "url" : "historyObtainedFrom",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-history",
          "code" : "3109007",
          "display" : "Patient"
        }]
      }
    },
    {
      "url" : "immunizationType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-history",
          "code" : "9910043",
          "display" : "Tetanus"
        }]
      }
    },
    {
      "url" : "immunizationYear",
      "valueDate" : "2020"
    },
    {
      "url" : "emergencyInformationForm",
      "valueBoolean" : false
    },
    {
      "url" : "alcoholDrugUse",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-history",
          "code" : "3117013",
          "display" : "Physical Exam Indicates Suspected Alcohol or Drug Use"
        }]
      }
    },
    {
      "url" : "lastOralIntake",
      "valueDateTime" : "2026-03-14T12:30:00-08:00"
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-history-context"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "unconfirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "problem-list-item",
      "display" : "Problem List Item"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/sid/icd-10-cm",
      "code" : "I10",
      "display" : "Essential (primary) hypertension"
    }],
    "text" : "Hypertension"
  },
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "encounter" : {
    "reference" : "Encounter/ex-ems-encounter"
  },
  "recordedDate" : "2026-03-14T14:40:00-08:00",
  "recorder" : {
    "reference" : "Practitioner/ex-ems-practitioner"
  }
}

```
