# EMS AllergyIntolerance - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS AllergyIntolerance**

## Resource Profile: EMS AllergyIntolerance 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-allergyintolerance | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSAllergyIntolerance |

 
EMS allergy and intolerance record derived from US Core AllergyIntolerance. Represents NEMSIS eHistory.06 (Medication Allergies, Recommended) and eHistory.07 (Environmental/Food Allergies, Optional). NEMSIS Version 3.5.1.251001CP2. 
eHistory.06 (MedicationAllergies): substance from RxNorm. eHistory.07 (Environmental/Food Allergies): substance from SNOMED CT (NEMSIS stores SNOMED CT codes directly for eHistory.07). 
NV applies to eHistory.06: NotRecorded → dataAbsentReason#not-asked; NotApplicable → dataAbsentReason#not-applicable. PN applies to eHistory.06: ExamFindingNotPresent, UnableToComplete via ext-ems-pertinent-negative. 

**Usages:**

* Examples for this Profile: [AllergyIntolerance/ex-ems-allergyintolerance](AllergyIntolerance-ex-ems-allergyintolerance.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-allergyintolerance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-allergyintolerance.csv), [Excel](StructureDefinition-ems-allergyintolerance.xlsx), [Schematron](StructureDefinition-ems-allergyintolerance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-allergyintolerance",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-allergyintolerance",
  "version" : "0.2.0",
  "name" : "EMSAllergyIntolerance",
  "title" : "EMS AllergyIntolerance",
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
  "description" : "EMS allergy and intolerance record derived from US Core AllergyIntolerance.\nRepresents NEMSIS eHistory.06 (Medication Allergies, Recommended) and\neHistory.07 (Environmental/Food Allergies, Optional).\nNEMSIS Version 3.5.1.251001CP2.\n\neHistory.06 (MedicationAllergies): substance from RxNorm.\neHistory.07 (Environmental/Food Allergies): substance from SNOMED CT\n(NEMSIS stores SNOMED CT codes directly for eHistory.07).\n\nNV applies to eHistory.06: NotRecorded → dataAbsentReason#not-asked;\nNotApplicable → dataAbsentReason#not-applicable.\nPN applies to eHistory.06: ExamFindingNotPresent, UnableToComplete\nvia ext-ems-pertinent-negative.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AllergyIntolerance",
      "path" : "AllergyIntolerance"
    },
    {
      "id" : "AllergyIntolerance.clinicalStatus",
      "path" : "AllergyIntolerance.clinicalStatus",
      "comment" : "US Core requires required binding to allergyintolerance-clinical ValueSet. Use 'active' for current allergies; 'inactive' for historical allergies. Map NV.NotApplicable → omit (nillable element)."
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "comment" : "US Core requires required binding to allergyintolerance-verification ValueSet. Use 'confirmed' for documented allergies."
    },
    {
      "id" : "AllergyIntolerance.category",
      "path" : "AllergyIntolerance.category",
      "comment" : "Use 'medication' for eHistory.06 (Medication Allergies); use 'environment' or 'food' for eHistory.07 (Environmental/Food Allergies).",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "short" : "eHistory.06/.07 - Allergy Substance",
      "comment" : "NEMSIS eHistory.06: Medication Allergies (RxNorm). Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. PN: ExamFindingNotPresent, UnableToComplete. NEMSIS eHistory.07: Environmental/Food Allergies (SNOMED CT). Usage: Optional. Substance codes: RxNorm for medications, SNOMED CT for environmental/food. The category element distinguishes medication vs. environmental/food allergies."
    },
    {
      "id" : "AllergyIntolerance.patient",
      "path" : "AllergyIntolerance.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }]
    },
    {
      "id" : "AllergyIntolerance.recorder",
      "path" : "AllergyIntolerance.recorder",
      "short" : "EMS crew member documenting the allergy",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction",
      "path" : "AllergyIntolerance.reaction",
      "comment" : "US Core requires MS. Populate when allergy reaction details are available."
    },
    {
      "id" : "AllergyIntolerance.reaction.manifestation",
      "path" : "AllergyIntolerance.reaction.manifestation",
      "comment" : "US Core requires MS. Clinical symptoms/signs of the allergy reaction."
    }]
  }
}

```
