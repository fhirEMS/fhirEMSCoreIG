# Example EMS Injury Condition - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Injury Condition**

## Example Condition: Example EMS Injury Condition

Profile: [EMS Injury Condition](StructureDefinition-ems-condition-injury.md)

> **EMS Injury Context**
* mechanismOfInjury: Blunt
* traumaTriageHighRisk: Unable to follow commands (motor GCS < 6)
* traumaTriageModerateRisk: Auto Crash: Significant intrusion (including roof): >12 inches occupant site; >18 inches any site; need for extrication
* vehicleImpactArea: 12
* patientVehicleLocation: Front Seat-Left Side (or motorcycle driver)
* safetyEquipment: Shoulder and Lap Belt Used
* airbagDeployment: Airbag Deployed Front

> **EMS ACN Incident**
* company: OnStar
* incidentId: ACN-2026-0314-88213
* incidentDateTime: 2026-03-14 14:02:00-0800
* incidentLocation: 33.571412,-117.191256
* vehicleMake: Chevrolet
* vehicleModel: Silverado 1500
* vehicleModelYear: 2024
* multipleImpacts: false
* deltaVelocity: 42 miles per hour (Details: UCUM code[mi_i]/h = '[mi_i]/h')
* highProbabilityOfInjury: true
* pdof: 12
* rollover: false
* seatLocation: Driver Front Seat
* seatOccupied: true
* seatbeltUse: true
* airbagDeployed: true

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Motor vehicle traffic accident, driver

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**encounter**: [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md)

**onset**: 2026-03-14 14:02:00-0800

**recordedDate**: 2026-03-14 14:25:00-0800

**recorder**: [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ex-ems-condition-injury",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition-injury"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "mechanismOfInjury",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-injury",
          "code" : "2902001",
          "display" : "Blunt"
        }]
      }
    },
    {
      "url" : "traumaTriageHighRisk",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-injury",
          "code" : "2903041",
          "display" : "Unable to follow commands (motor GCS < 6)"
        }]
      }
    },
    {
      "url" : "traumaTriageModerateRisk",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-injury",
          "code" : "2904011",
          "display" : "Auto Crash: Significant intrusion (including roof): >12 inches occupant site; >18 inches any site; need for extrication"
        }]
      }
    },
    {
      "url" : "vehicleImpactArea",
      "valueInteger" : 12
    },
    {
      "url" : "patientVehicleLocation",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-injury",
          "code" : "2906001",
          "display" : "Front Seat-Left Side (or motorcycle driver)"
        }]
      }
    },
    {
      "url" : "safetyEquipment",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-injury",
          "code" : "2907027",
          "display" : "Shoulder and Lap Belt Used"
        }]
      }
    },
    {
      "url" : "airbagDeployment",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-injury",
          "code" : "2908001",
          "display" : "Airbag Deployed Front"
        }]
      }
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-injury-context"
  },
  {
    "extension" : [{
      "url" : "company",
      "valueString" : "OnStar"
    },
    {
      "url" : "incidentId",
      "valueString" : "ACN-2026-0314-88213"
    },
    {
      "url" : "incidentDateTime",
      "valueDateTime" : "2026-03-14T14:02:00-08:00"
    },
    {
      "url" : "incidentLocation",
      "valueString" : "33.571412,-117.191256"
    },
    {
      "url" : "vehicleMake",
      "valueString" : "Chevrolet"
    },
    {
      "url" : "vehicleModel",
      "valueString" : "Silverado 1500"
    },
    {
      "url" : "vehicleModelYear",
      "valueDate" : "2024"
    },
    {
      "url" : "multipleImpacts",
      "valueBoolean" : false
    },
    {
      "url" : "deltaVelocity",
      "valueQuantity" : {
        "value" : 42,
        "unit" : "miles per hour",
        "system" : "http://unitsofmeasure.org",
        "code" : "[mi_i]/h"
      }
    },
    {
      "url" : "highProbabilityOfInjury",
      "valueBoolean" : true
    },
    {
      "url" : "pdof",
      "valueInteger" : 12
    },
    {
      "url" : "rollover",
      "valueBoolean" : false
    },
    {
      "url" : "seatLocation",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-injury",
          "code" : "2926001",
          "display" : "Driver Front Seat"
        }]
      }
    },
    {
      "url" : "seatOccupied",
      "valueBoolean" : true
    },
    {
      "url" : "seatbeltUse",
      "valueBoolean" : true
    },
    {
      "url" : "airbagDeployed",
      "valueBoolean" : true
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-acn-incident"
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
      "system" : "http://hl7.org/fhir/sid/icd-10-cm",
      "code" : "V89.2XXA",
      "display" : "Person injured in unspecified motor-vehicle accident, traffic, initial encounter"
    }],
    "text" : "Motor vehicle traffic accident, driver"
  },
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "encounter" : {
    "reference" : "Encounter/ex-ems-encounter"
  },
  "onsetDateTime" : "2026-03-14T14:02:00-08:00",
  "recordedDate" : "2026-03-14T14:25:00-08:00",
  "recorder" : {
    "reference" : "Practitioner/ex-ems-practitioner"
  }
}

```
