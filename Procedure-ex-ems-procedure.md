# Example EMS Procedure — IV Access - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Procedure — IV Access**

## Example Procedure: Example EMS Procedure — IV Access

Profile: [EMS Procedure](StructureDefinition-ems-procedure.md)

> **EMS Procedure Context**
* priorEMSCare: No
* numberOfAttempts: 1
* response: Improved
* authorization: Protocol (Standing Order)

**status**: Completed

**code**: Catheterization of vein (procedure)

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**encounter**: [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md)

**performed**: 2026-03-14 14:40:00-0800

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Function** | **Actor** |
| * | Paramedic | [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md) |

**bodySite**: Antecubital-Left

**outcome**: Successful

**complication**: None



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ex-ems-procedure",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-procedure"]
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
      "url" : "numberOfAttempts",
      "valueInteger" : 1
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
      "url" : "authorization",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications",
          "code" : "9918005",
          "display" : "Protocol (Standing Order)"
        }]
      }
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-procedure-context"
  }],
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "392230005",
      "display" : "Catheterization of vein (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "encounter" : {
    "reference" : "Encounter/ex-ems-encounter"
  },
  "performedDateTime" : "2026-03-14T14:40:00-08:00",
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
  "bodySite" : [{
    "coding" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications",
      "code" : "3913001",
      "display" : "Antecubital-Left"
    }]
  }],
  "outcome" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385669000",
      "display" : "Successful"
    }]
  },
  "complication" : [{
    "coding" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications",
      "code" : "3907033",
      "display" : "None"
    }]
  }]
}

```
