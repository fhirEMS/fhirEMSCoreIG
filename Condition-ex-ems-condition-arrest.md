# Example EMS Cardiac Arrest Condition - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Cardiac Arrest Condition**

## Example Condition: Example EMS Cardiac Arrest Condition

Profile: [EMS Cardiac Arrest Condition](StructureDefinition-ems-condition-arrest.md)

> **EMS Cardiac Arrest Context**
* cardiacArrest: Yes, Prior to Any EMS Arrival (includes Transport EMS & Medical First Responders)
* etiology: Cardiac (Presumed)
* resuscitationBy: Initiated Chest Compressions
* resuscitationBy: Attempted Defibrillation
* witnessedBy: Not Witnessed
* aedUsePrior: No
* cprType: Compressions-Manual
* cprType: Ventilation-Bag Valve Mask
* therapeuticHypothermia: false
* firstRhythm: Ventricular Fibrillation
* rosc: Yes, Prior to Arrival at the ED
* cprDiscontinuedReason: Return of Spontaneous Circulation (pulse or BP noted)
* rhythmAtDestination: Sinus Tachycardia
* endOfArrestEvent: ROSC in the Field
* whoFirstCPR: Bystander
* whoFirstAED: First Responder (EMS)
* whoFirstDefibrillated: First Responder (EMS)

**clinicalStatus**: Resolved

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Cardiac arrest

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**encounter**: [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md)

**onset**: 2026-03-14 14:12:00-0800

**recorder**: [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ex-ems-condition-arrest",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition-arrest"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "cardiacArrest",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3001003",
          "display" : "Yes, Prior to Any EMS Arrival (includes Transport EMS & Medical First Responders)"
        }]
      }
    },
    {
      "url" : "etiology",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3002001",
          "display" : "Cardiac (Presumed)"
        }]
      }
    },
    {
      "url" : "resuscitationBy",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3003005",
          "display" : "Initiated Chest Compressions"
        }]
      }
    },
    {
      "url" : "resuscitationBy",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3003001",
          "display" : "Attempted Defibrillation"
        }]
      }
    },
    {
      "url" : "witnessedBy",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3004001",
          "display" : "Not Witnessed"
        }]
      }
    },
    {
      "url" : "aedUsePrior",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3007001",
          "display" : "No"
        }]
      }
    },
    {
      "url" : "cprType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3009001",
          "display" : "Compressions-Manual"
        }]
      }
    },
    {
      "url" : "cprType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3009013",
          "display" : "Ventilation-Bag Valve Mask"
        }]
      }
    },
    {
      "url" : "therapeuticHypothermia",
      "valueBoolean" : false
    },
    {
      "url" : "firstRhythm",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3011011",
          "display" : "Ventricular Fibrillation"
        }]
      }
    },
    {
      "url" : "rosc",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3012005",
          "display" : "Yes, Prior to Arrival at the ED"
        }]
      }
    },
    {
      "url" : "cprDiscontinuedReason",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3016011",
          "display" : "Return of Spontaneous Circulation (pulse or BP noted)"
        }]
      }
    },
    {
      "url" : "rhythmAtDestination",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-vitals",
          "code" : "9901049",
          "display" : "Sinus Tachycardia"
        }]
      }
    },
    {
      "url" : "endOfArrestEvent",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3018007",
          "display" : "ROSC in the Field"
        }]
      }
    },
    {
      "url" : "whoFirstCPR",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3020001",
          "display" : "Bystander"
        }]
      }
    },
    {
      "url" : "whoFirstAED",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3021007",
          "display" : "First Responder (EMS)"
        }]
      }
    },
    {
      "url" : "whoFirstDefibrillated",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
          "code" : "3022007",
          "display" : "First Responder (EMS)"
        }]
      }
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-arrest-context"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "resolved"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis",
      "display" : "Encounter Diagnosis"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "410429000",
      "display" : "Cardiac arrest"
    }]
  },
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "encounter" : {
    "reference" : "Encounter/ex-ems-encounter"
  },
  "onsetDateTime" : "2026-03-14T14:12:00-08:00",
  "recorder" : {
    "reference" : "Practitioner/ex-ems-practitioner"
  }
}

```
