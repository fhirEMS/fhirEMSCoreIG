# Example EMS Encounter — MVA 911 Response - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Encounter — MVA 911 Response**

## Example Encounter: Example EMS Encounter — MVA 911 Response

Profile: [EMS Encounter](StructureDefinition-ems-encounter.md)

**EMS Response Type**: Emergency Response (Primary Response Area)

**EMS Unit Type**: Ground Transport (ALS Equipped)

**EMS Response Mode to Scene**: Emergent (Immediate Response)

**EMS Additional Response Mode Descriptors**: Lights and Sirens

> **EMS Response Delays**
* sceneDelay: Extrication

> **EMS Vehicle Unit Identification**
* unitNumber: A-7
* callSign: Medic 7

**EMS Dispatch Reason**: Motor vehicle accident

> **EMS Dispatch Information**
* emdPerformed: Yes, With Pre-Arrival Instructions
* emdDeterminant: 29D02p
* dispatchCenterNameOrId: Riverside County Emergency Communications Center
* dispatchPriority: Critical
* cadRecordId: CAD-2026-0314-008842

> **EMS Response Times**
* psapCallTime: 2026-03-14 14:20:00-0800
* dispatchNotified: 2026-03-14 14:21:00-0800
* unitNotified: 2026-03-14 14:22:00-0800
* unitEnRoute: 2026-03-14 14:24:00-0800
* unitArrivedScene: 2026-03-14 14:31:00-0800
* arrivalAtPatient: 2026-03-14 14:33:00-0800
* unitLeftScene: 2026-03-14 14:52:00-0800
* patientArrivedDestination: 2026-03-14 15:05:00-0800
* destinationPatientTransferOfCare: 2026-03-14 15:08:00-0800
* unitBackInService: 2026-03-14 15:25:00-0800
* unitBackAtBase: 2026-03-14 15:40:00-0800

> **EMS Disposition Codes**
* unitDisposition: Patient Contact Made
* patientEvaluationCare: Patient Evaluated and Care Provided
* crewDisposition: Initiated and Continued Primary Care
* transportDisposition: Transport by This EMS Unit (This Crew Only)
* levelOfCareProvided: ALS - Paramedic
* patientAcuity: Critical (Red)

> **EMS Transport Details**
* transportMethod: Ground-Ambulance
* transportMode: Emergent (Immediate Response)
* additionalTransportMode: Lights and Sirens

> **EMS Destination Details**
* reasonForChoosingDestination: Regional Specialty Center
* typeOfDestination: Hospital-Emergency Department
* hospitalInPatientDestination: Hospital-ICU
* hospitalCapability: Trauma Center Level 1
* preArrivalAlert: Yes-Adult Trauma
* preArrivalAlertDateTime: 2026-03-14 14:50:00-0800
* numberOfPatients: 1

**EMS Protocol Used**: Injury-Head

**EMS Chief Complaint Anatomic Location**: Head

**EMS Transport Disposition (Legacy)**: Transport by This EMS Unit (This Crew Only)

> **EMS Other Context**
* reviewRequested: true
* registryCandidate: Trauma
* crewCompletingReport: P-1234

> **EMS Crew Safety**
* crewMemberId: P-1234
* ppeUsed: Gloves
* ppeUsed: Eye Protection
* workRelatedExposure: false

**identifier**: Visit number/2026-03-14-0042, Resource identifier/2026-031400042-1

**status**: Finished

**class**: [ActCode: EMER](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-EMER) (emergency)

**type**: Emergency medical services

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Individual** |
| * | Participation | [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md) |

**period**: 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800

**serviceProvider**: [Organization Riverside County EMS Agency](Organization-ex-ems-organization-agency.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "ex-ems-encounter",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter"]
  },
  "extension" : [{
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-type",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
        "code" : "2205001",
        "display" : "Emergency Response (Primary Response Area)"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-unit-type",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
        "code" : "2207015",
        "display" : "Ground Transport (ALS Equipped)"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-mode",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
        "code" : "2223001",
        "display" : "Emergent (Immediate Response)"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-additional-response-mode",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
        "code" : "2224015",
        "display" : "Lights and Sirens"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "sceneDelay",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "2210011",
          "display" : "Extrication"
        }]
      }
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-delays"
  },
  {
    "extension" : [{
      "url" : "unitNumber",
      "valueString" : "A-7"
    },
    {
      "url" : "callSign",
      "valueString" : "Medic 7"
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-unit"
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-dispatch-reason",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "418399005",
        "display" : "Motor vehicle accident"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "emdPerformed",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "2302003",
          "display" : "Yes, With Pre-Arrival Instructions"
        }]
      }
    },
    {
      "url" : "emdDeterminant",
      "valueString" : "29D02p"
    },
    {
      "url" : "dispatchCenterNameOrId",
      "valueString" : "Riverside County Emergency Communications Center"
    },
    {
      "url" : "dispatchPriority",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "2305001",
          "display" : "Critical"
        }]
      }
    },
    {
      "url" : "cadRecordId",
      "valueString" : "CAD-2026-0314-008842"
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-dispatch-info"
  },
  {
    "extension" : [{
      "url" : "psapCallTime",
      "valueDateTime" : "2026-03-14T14:20:00-08:00"
    },
    {
      "url" : "dispatchNotified",
      "valueDateTime" : "2026-03-14T14:21:00-08:00"
    },
    {
      "url" : "unitNotified",
      "valueDateTime" : "2026-03-14T14:22:00-08:00"
    },
    {
      "url" : "unitEnRoute",
      "valueDateTime" : "2026-03-14T14:24:00-08:00"
    },
    {
      "url" : "unitArrivedScene",
      "valueDateTime" : "2026-03-14T14:31:00-08:00"
    },
    {
      "url" : "arrivalAtPatient",
      "valueDateTime" : "2026-03-14T14:33:00-08:00"
    },
    {
      "url" : "unitLeftScene",
      "valueDateTime" : "2026-03-14T14:52:00-08:00"
    },
    {
      "url" : "patientArrivedDestination",
      "valueDateTime" : "2026-03-14T15:05:00-08:00"
    },
    {
      "url" : "destinationPatientTransferOfCare",
      "valueDateTime" : "2026-03-14T15:08:00-08:00"
    },
    {
      "url" : "unitBackInService",
      "valueDateTime" : "2026-03-14T15:25:00-08:00"
    },
    {
      "url" : "unitBackAtBase",
      "valueDateTime" : "2026-03-14T15:40:00-08:00"
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-times"
  },
  {
    "extension" : [{
      "url" : "unitDisposition",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "4227001",
          "display" : "Patient Contact Made"
        }]
      }
    },
    {
      "url" : "patientEvaluationCare",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "4228001",
          "display" : "Patient Evaluated and Care Provided"
        }]
      }
    },
    {
      "url" : "crewDisposition",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "4229001",
          "display" : "Initiated and Continued Primary Care"
        }]
      }
    },
    {
      "url" : "transportDisposition",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "4230001",
          "display" : "Transport by This EMS Unit (This Crew Only)"
        }]
      }
    },
    {
      "url" : "levelOfCareProvided",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "4232005",
          "display" : "ALS - Paramedic"
        }]
      }
    },
    {
      "url" : "patientAcuity",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "4219001",
          "display" : "Critical (Red)"
        }]
      }
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-disposition-codes"
  },
  {
    "extension" : [{
      "url" : "transportMethod",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "4216005",
          "display" : "Ground-Ambulance"
        }]
      }
    },
    {
      "url" : "transportMode",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "4217001",
          "display" : "Emergent (Immediate Response)"
        }]
      }
    },
    {
      "url" : "additionalTransportMode",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "4218011",
          "display" : "Lights and Sirens"
        }]
      }
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-transport-details"
  },
  {
    "extension" : [{
      "url" : "reasonForChoosingDestination",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "4220021",
          "display" : "Regional Specialty Center"
        }]
      }
    },
    {
      "url" : "typeOfDestination",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "4221003",
          "display" : "Hospital-Emergency Department"
        }]
      }
    },
    {
      "url" : "hospitalInPatientDestination",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "4222013",
          "display" : "Hospital-ICU"
        }]
      }
    },
    {
      "url" : "hospitalCapability",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "9908021",
          "display" : "Trauma Center Level 1"
        }]
      }
    },
    {
      "url" : "preArrivalAlert",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
          "code" : "4224003",
          "display" : "Yes-Adult Trauma"
        }]
      }
    },
    {
      "url" : "preArrivalAlertDateTime",
      "valueDateTime" : "2026-03-14T14:50:00-08:00"
    },
    {
      "url" : "numberOfPatients",
      "valuePositiveInt" : 1
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-destination-details"
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-protocol-used",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-procedures",
        "code" : "9914101",
        "display" : "Injury-Head"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-incident-type",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-situation",
        "code" : "2807015",
        "display" : "Head"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-transport-reason",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
        "code" : "4230001",
        "display" : "Transport by This EMS Unit (This Crew Only)"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "reviewRequested",
      "valueBoolean" : true
    },
    {
      "url" : "registryCandidate",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-other",
          "code" : "4502017",
          "display" : "Trauma"
        }]
      }
    },
    {
      "url" : "crewCompletingReport",
      "valueString" : "P-1234"
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-other-context"
  },
  {
    "extension" : [{
      "url" : "crewMemberId",
      "valueString" : "P-1234"
    },
    {
      "url" : "ppeUsed",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-other",
          "code" : "4503003",
          "display" : "Gloves"
        }]
      }
    },
    {
      "url" : "ppeUsed",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-other",
          "code" : "4503001",
          "display" : "Eye Protection"
        }]
      }
    },
    {
      "url" : "workRelatedExposure",
      "valueBoolean" : false
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-crew-safety"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "VN",
        "display" : "Visit number"
      }]
    },
    "system" : "http://example.org/ems/incidents",
    "value" : "2026-03-14-0042"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "RI",
        "display" : "Resource identifier"
      }]
    },
    "system" : "http://example.org/ems/responses",
    "value" : "2026-031400042-1"
  }],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "EMER",
    "display" : "emergency"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "409971007",
      "display" : "Emergency medical services"
    }]
  }],
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "participant" : [{
    "type" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
        "code" : "PART"
      }]
    }],
    "individual" : {
      "reference" : "Practitioner/ex-ems-practitioner"
    }
  }],
  "period" : {
    "start" : "2026-03-14T14:22:00-08:00",
    "end" : "2026-03-14T15:08:00-08:00"
  },
  "serviceProvider" : {
    "reference" : "Organization/ex-ems-organization-agency"
  }
}

```
