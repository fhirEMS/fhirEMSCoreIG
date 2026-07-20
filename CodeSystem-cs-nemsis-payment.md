# NEMSIS ePayment Code System - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS ePayment Code System**

## CodeSystem: NEMSIS ePayment Code System 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payment | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISPayment |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.11 | |

 
Enumeration codes from the NEMSIS 3.5.1 ePayment section covering primary method of payment, insurance billing priority, relationship to insured, response urgency, patient transport assessment, ambulance transport reason codes, ambulance conditions indicators, CMS service level, and payer type. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSAmbulanceConditionsVS](ValueSet-vs-ems-ambulance-conditions.md)
* [EMSAmbulanceTransportReasonVS](ValueSet-vs-ems-ambulance-transport-reason.md)
* [EMSCMSServiceLevelVS](ValueSet-vs-ems-cms-service-level.md)
* [EMSInsuranceBillingPriorityVS](ValueSet-vs-ems-insurance-billing-priority.md)
* [EMSInsuredRelationshipVS](ValueSet-vs-ems-insured-relationship.md)
* [EMSPatientTransportAssessmentVS](ValueSet-vs-ems-patient-transport-assessment.md)
* [EMSPaymentMethodVS](ValueSet-vs-ems-payment-method.md)
* [EMSResponseUrgencyVS](ValueSet-vs-ems-response-urgency.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-payment",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payment",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.11"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISPayment",
  "title" : "NEMSIS ePayment Code System",
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
  "description" : "Enumeration codes from the NEMSIS 3.5.1 ePayment section covering primary method of payment, insurance billing priority, relationship to insured, response urgency, patient transport assessment, ambulance transport reason codes, ambulance conditions indicators, CMS service level, and payer type.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 61,
  "concept" : [{
    "code" : "2601001",
    "display" : "Insurance"
  },
  {
    "code" : "2601003",
    "display" : "Medicaid"
  },
  {
    "code" : "2601005",
    "display" : "Medicare"
  },
  {
    "code" : "2601007",
    "display" : "Not Billed (for any reason)"
  },
  {
    "code" : "2601009",
    "display" : "Other Government"
  },
  {
    "code" : "2601011",
    "display" : "Self Pay"
  },
  {
    "code" : "2601013",
    "display" : "Workers Compensation"
  },
  {
    "code" : "2601015",
    "display" : "Payment by Facility"
  },
  {
    "code" : "2601017",
    "display" : "Contracted Payment"
  },
  {
    "code" : "2601019",
    "display" : "Community Network"
  },
  {
    "code" : "2601021",
    "display" : "No Insurance Identified"
  },
  {
    "code" : "2601023",
    "display" : "Other Payment Option"
  },
  {
    "code" : "2611001",
    "display" : "Other"
  },
  {
    "code" : "2611003",
    "display" : "Primary"
  },
  {
    "code" : "2611005",
    "display" : "Secondary"
  },
  {
    "code" : "2611007",
    "display" : "Tertiary"
  },
  {
    "code" : "2611009",
    "display" : "Payer Responsibility Four"
  },
  {
    "code" : "2611011",
    "display" : "Payer Responsibility Five"
  },
  {
    "code" : "2611013",
    "display" : "Payer Responsibility Six"
  },
  {
    "code" : "2611015",
    "display" : "Payer Responsibility Seven"
  },
  {
    "code" : "2611017",
    "display" : "Payer Responsibility Eight"
  },
  {
    "code" : "2611019",
    "display" : "Payer Responsibility Nine"
  },
  {
    "code" : "2611021",
    "display" : "Payer Responsibility Ten"
  },
  {
    "code" : "2611023",
    "display" : "Payer Responsibility Eleven"
  },
  {
    "code" : "2611025",
    "display" : "Unknown"
  },
  {
    "code" : "2622001",
    "display" : "Self"
  },
  {
    "code" : "2622003",
    "display" : "Spouse"
  },
  {
    "code" : "2622005",
    "display" : "Child/Dependent"
  },
  {
    "code" : "2622009",
    "display" : "Cadaver Donor"
  },
  {
    "code" : "2622011",
    "display" : "Employee"
  },
  {
    "code" : "2622013",
    "display" : "Life/Domestic Partner"
  },
  {
    "code" : "2622015",
    "display" : "Organ Donor"
  },
  {
    "code" : "2622017",
    "display" : "Unknown"
  },
  {
    "code" : "2622019",
    "display" : "Other Relationship"
  },
  {
    "code" : "2640001",
    "display" : "Immediate"
  },
  {
    "code" : "2640003",
    "display" : "Non-Immediate"
  },
  {
    "code" : "2641001",
    "display" : "Unable to sit without assistance"
  },
  {
    "code" : "2641003",
    "display" : "Unable to stand without assistance"
  },
  {
    "code" : "2641005",
    "display" : "Unable to walk without assistance"
  },
  {
    "code" : "A",
    "display" : "Patient was transported to the nearest facility for care of symptoms, complaints, or both"
  },
  {
    "code" : "B",
    "display" : "Patient was transported for the benefit of a preferred physician"
  },
  {
    "code" : "C",
    "display" : "Patient was transported for the nearness of family members"
  },
  {
    "code" : "D",
    "display" : "Patient was transported for the care of a specialist or for availability of equipment"
  },
  {
    "code" : "E",
    "display" : "Patient was transferred to a Rehabilitation Facility"
  },
  {
    "code" : "01",
    "display" : "Patient was admitted to a hospital"
  },
  {
    "code" : "04",
    "display" : "Patient was moved by stretcher"
  },
  {
    "code" : "05",
    "display" : "Patient was unconscious or in shock"
  },
  {
    "code" : "06",
    "display" : "Patient was transported in an emergency situation"
  },
  {
    "code" : "07",
    "display" : "Patient had to be physically restrained"
  },
  {
    "code" : "08",
    "display" : "Patient had visible hemorrhaging"
  },
  {
    "code" : "09",
    "display" : "Ambulance service was medically necessary"
  },
  {
    "code" : "12",
    "display" : "Patient is confined to a bed or chair"
  },
  {
    "code" : "2650001",
    "display" : "ALS, Level 1"
  },
  {
    "code" : "2650003",
    "display" : "ALS, Level 1 Emergency"
  },
  {
    "code" : "2650005",
    "display" : "ALS, Level 2"
  },
  {
    "code" : "2650007",
    "display" : "BLS"
  },
  {
    "code" : "2650009",
    "display" : "BLS, Emergency"
  },
  {
    "code" : "2650011",
    "display" : "Fixed Wing (Airplane)"
  },
  {
    "code" : "2650013",
    "display" : "Paramedic Intercept"
  },
  {
    "code" : "2650015",
    "display" : "Specialty Care Transport"
  },
  {
    "code" : "2650017",
    "display" : "Rotary Wing (Helicopter)"
  }]
}

```
