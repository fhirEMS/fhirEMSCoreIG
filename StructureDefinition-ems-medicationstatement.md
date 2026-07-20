# EMS Medication Statement — Home Medications - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Medication Statement — Home Medications**

## Resource Profile: EMS Medication Statement — Home Medications 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-medicationstatement | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSMedicationStatement |

 
Documents a medication the patient reports currently taking (eHistory.12 Current Medications), with dose (eHistory.13/.14), route (eHistory.15), and frequency (eHistory.20). Distinct from EMSMedicationAdministration, which records medications administered during the EMS encounter. One resource per reported medication. 

**Usages:**

* Examples for this Profile: [MedicationStatement/ex-ems-medicationstatement](MedicationStatement-ex-ems-medicationstatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-medicationstatement.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-medicationstatement.csv), [Excel](StructureDefinition-ems-medicationstatement.xlsx), [Schematron](StructureDefinition-ems-medicationstatement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-medicationstatement",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-medicationstatement",
  "version" : "0.2.0",
  "name" : "EMSMedicationStatement",
  "title" : "EMS Medication Statement — Home Medications",
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
  "description" : "Documents a medication the patient reports currently taking (eHistory.12 Current Medications), with dose (eHistory.13/.14), route (eHistory.15), and frequency (eHistory.20). Distinct from EMSMedicationAdministration, which records medications administered during the EMS encounter. One resource per reported medication.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationStatement",
      "path" : "MedicationStatement"
    },
    {
      "id" : "MedicationStatement.status",
      "path" : "MedicationStatement.status",
      "short" : "active for current medications",
      "comment" : "Home medications reported during an EMS encounter are 'active'. Use 'unknown' with dataAbsentReason patterns when the medication list could not be obtained.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]",
      "path" : "MedicationStatement.medication[x]",
      "short" : "eHistory.12 - Current Medications (RxNorm)",
      "comment" : "NEMSIS eHistory.12. Usage: Recommended. Nillable. NV: NotRecorded. PN: DeniesMedications, Refused, UnableToComplete, MedicationAllergy, None. NEMSIS stores RxNorm codes directly — use system http://www.nlm.nih.gov/research/umls/rxnorm.",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.subject",
      "path" : "MedicationStatement.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.context",
      "path" : "MedicationStatement.context",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dateAsserted",
      "path" : "MedicationStatement.dateAsserted",
      "comment" : "Date the medication history was recorded by EMS.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.informationSource",
      "path" : "MedicationStatement.informationSource",
      "short" : "Who reported the medication (patient, family, etc.)",
      "comment" : "Aligns with eHistory.09 (Medical History Obtained From). Reference the Patient or RelatedPerson who provided the medication history.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage",
      "path" : "MedicationStatement.dosage",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing",
      "path" : "MedicationStatement.dosage.timing",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.code",
      "path" : "MedicationStatement.dosage.timing.code",
      "short" : "eHistory.20 - Current Medication Frequency",
      "comment" : "NEMSIS eHistory.20. Usage: Optional. NEMSIS frequency abbreviation codes (3120xxx); structured Timing.repeat may be populated in addition.",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-med-frequency"
      }
    },
    {
      "id" : "MedicationStatement.dosage.route",
      "path" : "MedicationStatement.dosage.route",
      "short" : "eHistory.15 - Current Medication Administration Route",
      "comment" : "NEMSIS eHistory.15. Usage: Optional. Same 9927xxx route codes as eMedications.04 (cs-nemsis-medications).",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medication-route"
      }
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate",
      "path" : "MedicationStatement.dosage.doseAndRate",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x]",
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
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseQuantity",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x]",
      "sliceName" : "doseQuantity",
      "short" : "eHistory.13/.14 - Current Medication Dose and Dosage Unit",
      "comment" : "NEMSIS eHistory.13 (dose value) and eHistory.14 (dosage unit, 3114xxx codes). Prefer UCUM units (system http://unitsofmeasure.org) when a UCUM equivalent exists; otherwise use the NEMSIS unit code from vs-ems-history-med-dosage-units with system cs-nemsis-history.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }],
      "mustSupport" : true
    }]
  }
}

```
