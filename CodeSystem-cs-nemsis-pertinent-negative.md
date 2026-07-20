# NEMSIS Pertinent Negative Codes - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS Pertinent Negative Codes**

## CodeSystem: NEMSIS Pertinent Negative Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-pertinent-negative | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISPertinentNegative |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.13 | |

 
NEMSIS Pertinent Negative (PN) codes indicating a clinically significant documented absence. Applied to clinical data elements where documenting a negative finding is as meaningful as documenting a positive one. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSPertinentNegativeVS](ValueSet-vs-ems-pertinent-negative.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-pertinent-negative",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-pertinent-negative",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.13"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISPertinentNegative",
  "title" : "NEMSIS Pertinent Negative Codes",
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
  "description" : "NEMSIS Pertinent Negative (PN) codes indicating a clinically significant documented absence. Applied to clinical data elements where documenting a negative finding is as meaningful as documenting a positive one.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 14,
  "concept" : [{
    "code" : "PN.Approximate",
    "display" : "Approximate",
    "definition" : "The value is an estimate (e.g., estimated age)."
  },
  {
    "code" : "PN.ContraindicationNoted",
    "display" : "Contraindication Noted",
    "definition" : "A contraindication was identified that prevented the action."
  },
  {
    "code" : "PN.DeniedByOrder",
    "display" : "Denied By Order",
    "definition" : "The action was denied by a physician or standing order."
  },
  {
    "code" : "PN.ExamFindingNotPresent",
    "display" : "Exam Finding Not Present",
    "definition" : "The physical exam finding was specifically assessed and not found."
  },
  {
    "code" : "PN.MedicationAllergy",
    "display" : "Medication Allergy",
    "definition" : "The patient has a known allergy to the medication."
  },
  {
    "code" : "PN.MedicationAlreadyTaken",
    "display" : "Medication Already Taken",
    "definition" : "The patient had already taken the medication prior to EMS arrival."
  },
  {
    "code" : "PN.NoKnownDrugAllergy",
    "display" : "No Known Drug Allergy",
    "definition" : "The patient has no known drug allergies."
  },
  {
    "code" : "PN.NoneReported",
    "display" : "None Reported",
    "definition" : "No pertinent history or findings were reported."
  },
  {
    "code" : "PN.NotImmunized",
    "display" : "Not Immunized",
    "definition" : "The patient has not received the relevant immunization."
  },
  {
    "code" : "PN.OrderCriteriaNotMet",
    "display" : "Order Criteria Not Met",
    "definition" : "The criteria required for a standing order were not met."
  },
  {
    "code" : "PN.Refused",
    "display" : "Refused",
    "definition" : "The patient refused the assessment or intervention."
  },
  {
    "code" : "PN.SymptomNotPresent",
    "display" : "Symptom Not Present",
    "definition" : "The symptom was specifically assessed and denied by the patient."
  },
  {
    "code" : "PN.UnableToComplete",
    "display" : "Unable To Complete",
    "definition" : "The assessment or intervention could not be completed."
  },
  {
    "code" : "PN.Unresponsive",
    "display" : "Unresponsive",
    "definition" : "The patient was unresponsive and unable to provide information."
  }]
}

```
