# EMS Ambulance Claim - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Ambulance Claim**

## Resource Profile: EMS Ambulance Claim 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-claim | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSClaim |

 
Represents a CMS ambulance claim generated from an EMS response. Derived from FHIR R4 Claim base resource (no US Core profile exists). Maps to NEMSIS ePayment billing elements: primary method of payment (ePayment.01), CMS service level (ePayment.50), response urgency (ePayment.40), transport assessment (ePayment.41), ambulance transport reason (ePayment.44), ambulance conditions indicators (ePayment.47), physician certification statement data (ePayment.02–07), mileage (ePayment.48), and supply items (ePayment.55/56). 

**Usages:**

* Examples for this Profile: [Claim/ex-ems-claim](Claim-ex-ems-claim.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-claim.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-claim.csv), [Excel](StructureDefinition-ems-claim.xlsx), [Schematron](StructureDefinition-ems-claim.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-claim",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-claim",
  "version" : "0.2.0",
  "name" : "EMSClaim",
  "title" : "EMS Ambulance Claim",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-19T20:45:43-04:00",
  "publisher" : "fhirEMSCore Research Project (AI-Generated — Unofficial)",
  "contact" : [{
    "name" : "fhirEMSCore Research Project (AI-Generated — Unofficial)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/fhirEMS/fhirEMSCoreIG"
    }]
  },
  {
    "name" : "fhirEMSCore Research Project",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/fhirEMS/fhirEMSCoreIG"
    }]
  }],
  "description" : "Represents a CMS ambulance claim generated from an EMS response. Derived from FHIR R4 Claim base resource (no US Core profile exists). Maps to NEMSIS ePayment billing elements: primary method of payment (ePayment.01), CMS service level (ePayment.50), response urgency (ePayment.40), transport assessment (ePayment.41), ambulance transport reason (ePayment.44), ambulance conditions indicators (ePayment.47), physician certification statement data (ePayment.02–07), mileage (ePayment.48), and supply items (ePayment.55/56).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Claim",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Claim",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Claim",
      "path" : "Claim"
    },
    {
      "id" : "Claim.extension",
      "path" : "Claim.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Claim.extension:primaryPaymentMethod",
      "path" : "Claim.extension",
      "sliceName" : "primaryPaymentMethod",
      "short" : "ePayment.01 - Primary Method of Payment",
      "comment" : "NEMSIS ePayment.01. Usage: Required/National. NV: NotRecorded.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-primary-payment-method"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.extension:cmsServiceLevel",
      "path" : "Claim.extension",
      "sliceName" : "cmsServiceLevel",
      "short" : "ePayment.50 - CMS Service Level",
      "comment" : "NEMSIS ePayment.50. Usage: Required/National. NV: NotRecorded. The CMS ambulance service level determining the base rate for billing.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-cms-service-level"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.extension:responseUrgency",
      "path" : "Claim.extension",
      "sliceName" : "responseUrgency",
      "short" : "ePayment.40 - Response Urgency",
      "comment" : "NEMSIS ePayment.40. Usage: Optional. Whether the response was immediate or non-immediate.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-urgency"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.extension:transportAssessment",
      "path" : "Claim.extension",
      "sliceName" : "transportAssessment",
      "short" : "ePayment.41 - Patient Transport Assessment",
      "comment" : "NEMSIS ePayment.41. Usage: Optional. Repeating (0..M). Physical assessment of the patient justifying ambulance transport.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-transport-assessment"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.extension:ambulanceTransportReason",
      "path" : "Claim.extension",
      "sliceName" : "ambulanceTransportReason",
      "short" : "ePayment.44 - Ambulance Transport Reason Code",
      "comment" : "NEMSIS ePayment.44. Usage: Optional. CMS ambulance transport reason code (A–E).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-ambulance-transport-reason"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.extension:ambulanceConditions",
      "path" : "Claim.extension",
      "sliceName" : "ambulanceConditions",
      "short" : "ePayment.47 - Ambulance Conditions Indicator",
      "comment" : "NEMSIS ePayment.47. Usage: Optional. Repeating (0..M). CMS conditions indicators justifying ambulance necessity.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-ambulance-conditions"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.extension:alsAssessment",
      "path" : "Claim.extension",
      "sliceName" : "alsAssessment",
      "short" : "ePayment.49 - ALS Assessment Performed and Warranted",
      "comment" : "NEMSIS ePayment.49. Usage: Optional. Whether an ALS assessment was performed and warranted.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-als-assessment"]
      }]
    },
    {
      "id" : "Claim.extension:mileageToClosest",
      "path" : "Claim.extension",
      "sliceName" : "mileageToClosest",
      "short" : "ePayment.48 - Mileage to Closest Hospital Facility",
      "comment" : "NEMSIS ePayment.48. Usage: Optional. Distance in miles to the closest appropriate hospital.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-mileage-to-closest"]
      }]
    },
    {
      "id" : "Claim.status",
      "path" : "Claim.status",
      "mustSupport" : true
    },
    {
      "id" : "Claim.type",
      "path" : "Claim.type",
      "comment" : "CMS ambulance claims are submitted as professional claims.",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
          "code" : "professional"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Claim.use",
      "path" : "Claim.use",
      "patternCode" : "claim",
      "mustSupport" : true
    },
    {
      "id" : "Claim.patient",
      "path" : "Claim.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.created",
      "path" : "Claim.created",
      "mustSupport" : true
    },
    {
      "id" : "Claim.provider",
      "path" : "Claim.provider",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-organization",
        "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo",
      "path" : "Claim.supportingInfo",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "category"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:physicianCertification",
      "path" : "Claim.supportingInfo",
      "sliceName" : "physicianCertification",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:physicianCertification.category",
      "path" : "Claim.supportingInfo.category",
      "short" : "ePayment.02–07 - Physician Certification Statement",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/claiminformationcategory",
          "code" : "attachment"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:physicianCertification.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "comment" : "NEMSIS ePayment.02. Usage: Optional. Whether a physician certification statement was obtained.",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Claim.supportingInfo:roundTripPurpose",
      "path" : "Claim.supportingInfo",
      "sliceName" : "roundTripPurpose",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:roundTripPurpose.category",
      "path" : "Claim.supportingInfo.category",
      "short" : "ePayment.45 - Round Trip Purpose Description",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/claiminformationcategory",
          "code" : "info"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:roundTripPurpose.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "comment" : "NEMSIS ePayment.45. Usage: Optional. Description of the reason for round trip transport.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Claim.supportingInfo:stretcherPurpose",
      "path" : "Claim.supportingInfo",
      "sliceName" : "stretcherPurpose",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:stretcherPurpose.category",
      "path" : "Claim.supportingInfo.category",
      "short" : "ePayment.46 - Stretcher Purpose Description",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/claiminformationcategory",
          "code" : "patientreasonforvisit"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:stretcherPurpose.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "comment" : "NEMSIS ePayment.46. Usage: Optional. Description of the medical necessity for stretcher use.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Claim.diagnosis",
      "path" : "Claim.diagnosis",
      "comment" : "ICD-10-CM diagnoses supporting medical necessity.",
      "mustSupport" : true
    },
    {
      "id" : "Claim.diagnosis.diagnosis[x]",
      "path" : "Claim.diagnosis.diagnosis[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Claim.diagnosis.diagnosis[x]:diagnosisCodeableConcept",
      "path" : "Claim.diagnosis.diagnosis[x]",
      "sliceName" : "diagnosisCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.diagnosis.diagnosis[x]:diagnosisCodeableConcept.coding.system",
      "path" : "Claim.diagnosis.diagnosis[x].coding.system",
      "patternUri" : "http://hl7.org/fhir/sid/icd-10-cm"
    },
    {
      "id" : "Claim.insurance",
      "path" : "Claim.insurance",
      "mustSupport" : true
    },
    {
      "id" : "Claim.insurance.sequence",
      "path" : "Claim.insurance.sequence",
      "comment" : "Corresponds to ePayment.11 billing priority order.",
      "mustSupport" : true
    },
    {
      "id" : "Claim.insurance.focal",
      "path" : "Claim.insurance.focal",
      "mustSupport" : true
    },
    {
      "id" : "Claim.insurance.coverage",
      "path" : "Claim.insurance.coverage",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-coverage"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.item",
      "path" : "Claim.item",
      "mustSupport" : true
    },
    {
      "id" : "Claim.item.sequence",
      "path" : "Claim.item.sequence",
      "mustSupport" : true
    },
    {
      "id" : "Claim.item.productOrService",
      "path" : "Claim.item.productOrService",
      "comment" : "HCPCS code for ambulance service level. Use A0428–A0999 HCPCS Level II codes corresponding to ePayment.50 CMS Service Level.",
      "mustSupport" : true
    },
    {
      "id" : "Claim.item.quantity",
      "path" : "Claim.item.quantity",
      "comment" : "For mileage items, quantity = miles transported.",
      "mustSupport" : true
    }]
  }
}

```
