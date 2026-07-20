# Example EMS Organization — Riverside County EMS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Organization — Riverside County EMS**

## Example Organization: Example EMS Organization — Riverside County EMS

Profile: [EMS Organization](StructureDefinition-ems-organization.md)

> **EMS Agency Details**
* primaryServiceType: 911 Response (Scene) with Transport Capability
* levelOfService: Paramedic
* organizationStatus: Non-Volunteer

> **EMS Agency Medical Director**
* degree: Doctor of Medicine
* boardCertificationType: Emergency Medicine
* compensation: Compensated
* boardCertifiedEligible: true

> **EMS Agency Configuration**
> **url**state
**value**: CA**code**: Orotracheal intubation**permittedLevel**: Paramedic
> **url**procedure
**code**: naloxone**permittedLevel**: Paramedic
> **url**medication

> **url**protocol
**value**: Airway
> **url**specialtyCapability
**value**: Vehicle Extrication
> **url**billingStatus
**value**: true
> **url**emdProvided
**value**: Yes, 100% of the EMS Agency's Service Area
> **url**monitoringCapability
**value**: Capnography-Waveform
> **url**crewCallSign
**value**: Medic 7
> **url**dispatchCenter
**value**: Riverside County Emergency Communications Center

**identifier**: Organization identifier/CA-4065

**active**: true

**type**: Governmental, Non-Fire

**name**: Riverside County EMS Agency

**address**: 3990 Lemon Street Riverside CA 92501 

> **contact****purpose**: EMS Medical Director**name**: Maria Reyes **telecom**: ph: 951-555-0180, [medical.director@rcfd.example.org](mailto:medical.director@rcfd.example.org)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "ex-ems-organization-agency",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-organization"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "primaryServiceType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
          "code" : "9920001",
          "display" : "911 Response (Scene) with Transport Capability"
        }]
      }
    },
    {
      "url" : "levelOfService",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
          "code" : "9917007",
          "display" : "Paramedic"
        }]
      }
    },
    {
      "url" : "organizationStatus",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
          "code" : "1016003",
          "display" : "Non-Volunteer"
        }]
      }
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-agency-details"
  },
  {
    "extension" : [{
      "url" : "degree",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-demographics",
          "code" : "1113001",
          "display" : "Doctor of Medicine"
        }]
      }
    },
    {
      "url" : "boardCertificationType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-demographics",
          "code" : "1114009",
          "display" : "Emergency Medicine"
        }]
      }
    },
    {
      "url" : "compensation",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-demographics",
          "code" : "1115001",
          "display" : "Compensated"
        }]
      }
    },
    {
      "url" : "boardCertifiedEligible",
      "valueBoolean" : true
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-medical-director"
  },
  {
    "extension" : [{
      "url" : "state",
      "valueString" : "CA"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "232674004",
            "display" : "Orotracheal intubation"
          }]
        }
      },
      {
        "url" : "permittedLevel",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-personnel-level",
            "code" : "9925007",
            "display" : "Paramedic"
          }]
        }
      }],
      "url" : "procedure"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
            "code" : "7242",
            "display" : "naloxone"
          }]
        }
      },
      {
        "url" : "permittedLevel",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-personnel-level",
            "code" : "9925007",
            "display" : "Paramedic"
          }]
        }
      }],
      "url" : "medication"
    },
    {
      "url" : "protocol",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-procedures",
          "code" : "9914001",
          "display" : "Airway"
        }]
      }
    },
    {
      "url" : "specialtyCapability",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-demographics",
          "code" : "1211029",
          "display" : "Vehicle Extrication"
        }]
      }
    },
    {
      "url" : "billingStatus",
      "valueBoolean" : true
    },
    {
      "url" : "emdProvided",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-demographics",
          "code" : "1213003",
          "display" : "Yes, 100% of the EMS Agency's Service Area"
        }]
      }
    },
    {
      "url" : "monitoringCapability",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-demographics",
          "code" : "1215003",
          "display" : "Capnography-Waveform"
        }]
      }
    },
    {
      "url" : "crewCallSign",
      "valueString" : "Medic 7"
    },
    {
      "url" : "dispatchCenter",
      "valueString" : "Riverside County Emergency Communications Center"
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-agency-configuration"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "XX"
      }]
    },
    "system" : "http://example.org/ems/state-agency-id",
    "value" : "CA-4065"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
      "code" : "9912003",
      "display" : "Governmental, Non-Fire"
    }]
  }],
  "name" : "Riverside County EMS Agency",
  "address" : [{
    "line" : ["3990 Lemon Street"],
    "city" : "Riverside",
    "state" : "CA",
    "postalCode" : "92501"
  }],
  "contact" : [{
    "purpose" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-demographics",
        "code" : "1101011",
        "display" : "EMS Medical Director"
      }]
    },
    "name" : {
      "family" : "Reyes",
      "given" : ["Maria"]
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "951-555-0180"
    },
    {
      "system" : "email",
      "value" : "medical.director@rcfd.example.org"
    }]
  }]
}

```
