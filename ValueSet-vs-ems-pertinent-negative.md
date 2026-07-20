# NEMSIS Pertinent Negative (PN) - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS Pertinent Negative (PN)**

## ValueSet: NEMSIS Pertinent Negative (PN) 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-pertinent-negative | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSPertinentNegativeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.97 | |

 
NEMSIS Pertinent Negative codes indicating a clinically significant documented absence. 

 **References** 

* [NEMSIS Pertinent Negative](StructureDefinition-ext-ems-pertinent-negative.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-ems-pertinent-negative",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-pertinent-negative",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.97"
  }],
  "version" : "0.2.0",
  "name" : "EMSPertinentNegativeVS",
  "title" : "NEMSIS Pertinent Negative (PN)",
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
  "description" : "NEMSIS Pertinent Negative codes indicating a clinically significant documented absence.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-pertinent-negative",
      "concept" : [{
        "code" : "PN.Approximate",
        "display" : "Approximate"
      },
      {
        "code" : "PN.ContraindicationNoted",
        "display" : "Contraindication Noted"
      },
      {
        "code" : "PN.DeniedByOrder",
        "display" : "Denied By Order"
      },
      {
        "code" : "PN.ExamFindingNotPresent",
        "display" : "Exam Finding Not Present"
      },
      {
        "code" : "PN.MedicationAllergy",
        "display" : "Medication Allergy"
      },
      {
        "code" : "PN.MedicationAlreadyTaken",
        "display" : "Medication Already Taken"
      },
      {
        "code" : "PN.NoKnownDrugAllergy",
        "display" : "No Known Drug Allergy"
      },
      {
        "code" : "PN.NoneReported",
        "display" : "None Reported"
      },
      {
        "code" : "PN.NotImmunized",
        "display" : "Not Immunized"
      },
      {
        "code" : "PN.OrderCriteriaNotMet",
        "display" : "Order Criteria Not Met"
      },
      {
        "code" : "PN.Refused",
        "display" : "Refused"
      },
      {
        "code" : "PN.SymptomNotPresent",
        "display" : "Symptom Not Present"
      },
      {
        "code" : "PN.UnableToComplete",
        "display" : "Unable To Complete"
      },
      {
        "code" : "PN.Unresponsive",
        "display" : "Unresponsive"
      }]
    }]
  }
}

```
