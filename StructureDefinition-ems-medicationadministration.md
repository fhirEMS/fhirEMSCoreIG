# EMS Medication Administration - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Medication Administration**

## Resource Profile: EMS Medication Administration 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-medicationadministration | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSMedicationAdministration |

 
EMS medication administration derived directly from FHIR R4 MedicationAdministration. No US Core profile exists for this resource (NDR-008). Represents the NEMSIS eMedications section (Version 3.5.1.251001CP2). 
NEMSIS eMedications records what was ACTUALLY administered in the field, not what was ordered. Always use MedicationAdministration, never MedicationRequest, for NEMSIS eMedications data. 
eMedications.03 uses RxNorm codes (direct pass-through from NEMSIS). Additional NEMSIS context (prior EMS care, response, complication, authorization, by-another-unit) is carried in EMSMedicationContext. 

**Usages:**

* Examples for this Profile: [MedicationAdministration/ex-ems-medicationadministration](MedicationAdministration-ex-ems-medicationadministration.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-medicationadministration.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-medicationadministration.csv), [Excel](StructureDefinition-ems-medicationadministration.xlsx), [Schematron](StructureDefinition-ems-medicationadministration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-medicationadministration",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-medicationadministration",
  "version" : "0.2.0",
  "name" : "EMSMedicationAdministration",
  "title" : "EMS Medication Administration",
  "status" : "draft",
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
  "description" : "EMS medication administration derived directly from FHIR R4\nMedicationAdministration. No US Core profile exists for this resource\n(NDR-008). Represents the NEMSIS eMedications section\n(Version 3.5.1.251001CP2).\n\nNEMSIS eMedications records what was ACTUALLY administered in the field,\nnot what was ordered. Always use MedicationAdministration, never\nMedicationRequest, for NEMSIS eMedications data.\n\neMedications.03 uses RxNorm codes (direct pass-through from NEMSIS).\nAdditional NEMSIS context (prior EMS care, response, complication,\nauthorization, by-another-unit) is carried in EMSMedicationContext.",
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
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationAdministration",
      "path" : "MedicationAdministration"
    },
    {
      "id" : "MedicationAdministration.extension",
      "path" : "MedicationAdministration.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "eMedications.02/07/08/11/13 - EMS Medication Context",
      "comment" : "Carries NEMSIS eMedications elements not representable in base FHIR MedicationAdministration: priorEMSCare (.02), response (.07), complication (.08), authorization (.11), byAnotherUnit (.13)."
    },
    {
      "id" : "MedicationAdministration.extension:medicationContext",
      "path" : "MedicationAdministration.extension",
      "sliceName" : "medicationContext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-medication-context"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.status",
      "path" : "MedicationAdministration.status",
      "comment" : "Use 'completed' for administered medications. Use 'not-done' for NV (NotRecorded → extend with dataAbsentReason pattern).",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]",
      "path" : "MedicationAdministration.medication[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x].coding",
      "path" : "MedicationAdministration.medication[x].coding",
      "comment" : "NEMSIS eMedications.03. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. PN: ExamFindingNotPresent, UnableToComplete. NEMSIS stores RxNorm codes directly — use system http://www.nlm.nih.gov/research/umls/rxnorm.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.subject",
      "path" : "MedicationAdministration.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.context",
      "path" : "MedicationAdministration.context",
      "short" : "The EMS encounter during which this medication was administered",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.effective[x]",
      "path" : "MedicationAdministration.effective[x]",
      "short" : "eMedications.01 - Date/Time Medication Administered",
      "comment" : "NEMSIS eMedications.01. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.performer",
      "path" : "MedicationAdministration.performer",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.performer.function",
      "path" : "MedicationAdministration.performer.function",
      "short" : "eMedications.10 - Role/Type of Person Administering Medication",
      "comment" : "NEMSIS eMedications.10. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-caregiver-level"
      }
    },
    {
      "id" : "MedicationAdministration.performer.actor",
      "path" : "MedicationAdministration.performer.actor",
      "short" : "eMedications.09 - Medication Crew (Healthcare Professionals) ID",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner",
        "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitionerrole"]
      }]
    },
    {
      "id" : "MedicationAdministration.dosage",
      "path" : "MedicationAdministration.dosage",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.route",
      "path" : "MedicationAdministration.dosage.route",
      "short" : "eMedications.04 - Medication Administered Route",
      "comment" : "NEMSIS eMedications.04. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. PN: ExamFindingNotPresent, UnableToComplete.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medication-route"
      }
    },
    {
      "id" : "MedicationAdministration.dosage.dose",
      "path" : "MedicationAdministration.dosage.dose",
      "short" : "eMedications.05 - Medication Dosage",
      "comment" : "NEMSIS eMedications.05 (numeric dose amount). Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.dose.unit",
      "path" : "MedicationAdministration.dosage.dose.unit",
      "comment" : "NEMSIS eMedications.06 - Medication Dosage Units. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Code from EMSMedicationDosageUnitsVS.",
      "mustSupport" : true
    }]
  }
}

```
