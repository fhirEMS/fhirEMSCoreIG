# EMS Practitioner - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Practitioner**

## Resource Profile: EMS Practitioner 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSPractitioner |

 
EMS personnel demographics and licensure information derived from US Core Practitioner. Maps to NEMSIS dPersonnel section (Version 3.5.1.251001CP2). Captures name, state licensure, certification level, and demographic information. 

**Usages:**

* Refer to this Profile: [EMS AllergyIntolerance](StructureDefinition-ems-allergyintolerance.md), [EMS Ambulance Claim](StructureDefinition-ems-claim.md), [EMS Patient Care Report (PCR)](StructureDefinition-ems-composition.md), [EMS Cardiac Arrest Condition](StructureDefinition-ems-condition-arrest.md)... Show 10 more, [EMS Injury Condition](StructureDefinition-ems-condition-injury.md), [EMS Condition — Past Medical History](StructureDefinition-ems-condition-problems.md), [EMS Condition](StructureDefinition-ems-condition.md), [EMS Encounter](StructureDefinition-ems-encounter.md), [EMS Medication Administration](StructureDefinition-ems-medicationadministration.md), [EMS Airway Management Observation](StructureDefinition-ems-observation-airway.md), [EMS Lab and Imaging Observation](StructureDefinition-ems-observation-labs.md), [EMS Vital Signs Observation](StructureDefinition-ems-observation-vitalsigns.md), [EMS PractitionerRole](StructureDefinition-ems-practitionerrole.md) and [EMS Procedure](StructureDefinition-ems-procedure.md)
* Examples for this Profile: [Practitioner/ex-ems-practitioner](Practitioner-ex-ems-practitioner.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-practitioner.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-practitioner.csv), [Excel](StructureDefinition-ems-practitioner.xlsx), [Schematron](StructureDefinition-ems-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-practitioner",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner",
  "version" : "0.2.0",
  "name" : "EMSPractitioner",
  "title" : "EMS Practitioner",
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
  "description" : "EMS personnel demographics and licensure information derived from US Core Practitioner.\nMaps to NEMSIS dPersonnel section (Version 3.5.1.251001CP2). Captures name, state\nlicensure, certification level, and demographic information.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "short" : "dPersonnel.21 - EMS Personnel's Agency ID Number",
      "comment" : "NEMSIS dPersonnel.21. Usage: Optional. Use agency-assigned system URL. system 1..1, value 1..1 per US Core."
    },
    {
      "id" : "Practitioner.identifier.system",
      "path" : "Practitioner.identifier.system",
      "comment" : "US Core requires identifier.system 1..1 MS."
    },
    {
      "id" : "Practitioner.identifier.value",
      "path" : "Practitioner.identifier.value",
      "comment" : "US Core requires identifier.value 1..1 MS."
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "short" : "dPersonnel.01/02/03 - Personnel Name",
      "comment" : "NEMSIS dPersonnel.01 (Last Name), dPersonnel.02 (First Name), dPersonnel.03 (Middle Name/Initial). All Recommended. Nillable. NV: NotRecorded, NotApplicable."
    },
    {
      "id" : "Practitioner.name.family",
      "path" : "Practitioner.name.family",
      "short" : "dPersonnel.01 - EMS Personnel's Last Name",
      "comment" : "US Core Practitioner requires name.family 1..1 MS. NEMSIS dPersonnel.01."
    },
    {
      "id" : "Practitioner.name.given",
      "path" : "Practitioner.name.given",
      "short" : "dPersonnel.02/03 - First and Middle Name",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "comment" : "US Core Practitioner requires telecom MS."
    },
    {
      "id" : "Practitioner.telecom.system",
      "path" : "Practitioner.telecom.system",
      "comment" : "US Core requires telecom.system MS."
    },
    {
      "id" : "Practitioner.telecom.value",
      "path" : "Practitioner.telecom.value",
      "comment" : "US Core requires telecom.value MS."
    },
    {
      "id" : "Practitioner.address",
      "path" : "Practitioner.address",
      "comment" : "US Core Practitioner requires address MS."
    },
    {
      "id" : "Practitioner.gender",
      "path" : "Practitioner.gender",
      "short" : "dPersonnel.40 - EMS Personnel's Sex",
      "comment" : "NEMSIS dPersonnel.40. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. Maps to FHIR gender. Note: dPersonnel.12 (Gender) is DEPRECATED in NEMSIS 3.5.1; use dPersonnel.40.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.birthDate",
      "path" : "Practitioner.birthDate",
      "short" : "dPersonnel.11 - EMS Personnel's Date of Birth",
      "comment" : "NEMSIS dPersonnel.11. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification",
      "path" : "Practitioner.qualification",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "short" : "dPersonnel.22–24 - State EMS Certification/Licensure",
      "comment" : "NEMSIS dPersonnel.22 (State of Licensure), dPersonnel.23 (State Licensure ID Number), dPersonnel.24 (Certification Level). All Recommended. Nillable. NV: NotRecorded, NotApplicable.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:stateLicensure",
      "path" : "Practitioner.qualification",
      "sliceName" : "stateLicensure",
      "short" : "dPersonnel.22/23/24 - State EMS Certification",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:stateLicensure.identifier",
      "path" : "Practitioner.qualification.identifier",
      "short" : "dPersonnel.23 - State's Licensure ID Number",
      "comment" : "NEMSIS dPersonnel.23. The state-assigned EMS licensure identification number.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:stateLicensure.code",
      "path" : "Practitioner.qualification.code",
      "short" : "dPersonnel.24 - State EMS Certification Licensure Level",
      "comment" : "NEMSIS dPersonnel.24. Certification level code from EMSCertificationLevelVS.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-certification-level"
      }
    },
    {
      "id" : "Practitioner.qualification:stateLicensure.period",
      "path" : "Practitioner.qualification.period",
      "short" : "dPersonnel.25/27 - Certification dates",
      "comment" : "period.start = dPersonnel.25 (Current Certification Date, Optional). period.end = dPersonnel.27 (Expiration Date, Optional).",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:stateLicensure.issuer",
      "path" : "Practitioner.qualification.issuer",
      "short" : "dPersonnel.22 - State of Licensure",
      "comment" : "NEMSIS dPersonnel.22. Reference to the state licensing authority. display = 2-letter USPS state abbreviation per NDR-004.",
      "mustSupport" : true
    }]
  }
}

```
