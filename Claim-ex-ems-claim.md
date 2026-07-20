# Example EMS Claim — ALS Level 1 Emergency - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Claim — ALS Level 1 Emergency**

## Example Claim: Example EMS Claim — ALS Level 1 Emergency

Profile: [EMS Ambulance Claim](StructureDefinition-ems-claim.md)

**EMS Primary Payment Method**: Medicare

**EMS CMS Service Level**: ALS, Level 1 Emergency

**EMS Response Urgency**: Immediate

**EMS Patient Transport Assessment**: Unable to stand without assistance

**EMS Patient Transport Assessment**: Unable to walk without assistance

**EMS Ambulance Transport Reason**: Patient was transported to the nearest facility for care of symptoms, complaints, or both

**EMS Ambulance Conditions Indicator**: Patient was unconscious or in shock

**EMS Ambulance Conditions Indicator**: Patient was transported in an emergency situation

**EMS Ambulance Conditions Indicator**: Ambulance service was medically necessary

**EMS ALS Assessment Performed and Warranted**: true

**EMS Mileage to Closest Hospital**: 8.4 miles

**status**: Active

**type**: Professional

**use**: Claim

**patient**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**created**: 2026-03-14

**provider**: [Organization Riverside County EMS Agency](Organization-ex-ems-organization-agency.md)

**priority**: Normal

### SupportingInfos

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Category** | **Value[x]** |
| * | 1 | Attachment | false |

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Sequence** | **Diagnosis[x]** |
| * | 1 | Cardiac arrest, cause unspecified |

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage: extension = Medicare Part B; status = active; subscriberId = 1EG4-TE5-MK72; relationship = Self; order = 1](Coverage-ex-ems-coverage.md) |

> **item****sequence**: 1**productOrService**: Ambulance service, advanced life support, emergency transport, level 1 (ALS 1 - Emergency)

> **item****sequence**: 2**productOrService**: Ground mileage, per statute mile**quantity**: 8.4



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "ex-ems-claim",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-claim"]
  },
  "extension" : [{
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-primary-payment-method",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payment",
        "code" : "2601005",
        "display" : "Medicare"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-cms-service-level",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payment",
        "code" : "2650003",
        "display" : "ALS, Level 1 Emergency"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-urgency",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payment",
        "code" : "2640001",
        "display" : "Immediate"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-transport-assessment",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payment",
        "code" : "2641003",
        "display" : "Unable to stand without assistance"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-transport-assessment",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payment",
        "code" : "2641005",
        "display" : "Unable to walk without assistance"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-ambulance-transport-reason",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payment",
        "code" : "A",
        "display" : "Patient was transported to the nearest facility for care of symptoms, complaints, or both"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-ambulance-conditions",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payment",
        "code" : "05",
        "display" : "Patient was unconscious or in shock"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-ambulance-conditions",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payment",
        "code" : "06",
        "display" : "Patient was transported in an emergency situation"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-ambulance-conditions",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payment",
        "code" : "09",
        "display" : "Ambulance service was medically necessary"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-als-assessment",
    "valueBoolean" : true
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-mileage-to-closest",
    "valueQuantity" : {
      "value" : 8.4,
      "unit" : "miles"
    }
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
      "code" : "professional"
    }]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "created" : "2026-03-14",
  "provider" : {
    "reference" : "Organization/ex-ems-organization-agency"
  },
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
      "code" : "normal"
    }]
  },
  "supportingInfo" : [{
    "sequence" : 1,
    "category" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/claiminformationcategory",
        "code" : "attachment"
      }]
    },
    "valueBoolean" : false
  }],
  "diagnosis" : [{
    "sequence" : 1,
    "diagnosisCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/sid/icd-10-cm",
        "code" : "I46.9",
        "display" : "Cardiac arrest, cause unspecified"
      }]
    }
  }],
  "insurance" : [{
    "sequence" : 1,
    "focal" : true,
    "coverage" : {
      "reference" : "Coverage/ex-ems-coverage"
    }
  }],
  "item" : [{
    "sequence" : 1,
    "productOrService" : {
      "coding" : [{
        "system" : "https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets",
        "code" : "A0427",
        "display" : "Ambulance service, advanced life support, emergency transport, level 1 (ALS 1 - Emergency)"
      }]
    }
  },
  {
    "sequence" : 2,
    "productOrService" : {
      "coding" : [{
        "system" : "https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets",
        "code" : "A0425",
        "display" : "Ground mileage, per statute mile"
      }]
    },
    "quantity" : {
      "value" : 8.4
    }
  }]
}

```
