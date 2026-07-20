# EMS PractitionerRole - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS PractitionerRole**

## Resource Profile: EMS PractitionerRole 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitionerrole | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSPractitionerRole |

 
Represents an EMS crew member's role during a specific EMS response. Derived from US Core PractitionerRole. Maps to NEMSIS eCrew section (eCrew.01–03) combined with dPersonnel certification data (Version 3.5.1.251001CP2). One PractitionerRole resource per crew member per response. 

**Usages:**

* Refer to this Profile: [EMS Medication Administration](StructureDefinition-ems-medicationadministration.md)
* Examples for this Profile: [PractitionerRole/ex-ems-practitionerrole](PractitionerRole-ex-ems-practitionerrole.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-practitionerrole.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-practitionerrole.csv), [Excel](StructureDefinition-ems-practitionerrole.xlsx), [Schematron](StructureDefinition-ems-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-practitionerrole",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitionerrole",
  "version" : "0.2.0",
  "name" : "EMSPractitionerRole",
  "title" : "EMS PractitionerRole",
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
  "description" : "Represents an EMS crew member's role during a specific EMS response.\nDerived from US Core PractitionerRole. Maps to NEMSIS eCrew section\n(eCrew.01–03) combined with dPersonnel certification data (Version 3.5.1.251001CP2).\nOne PractitionerRole resource per crew member per response.",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.extension",
      "path" : "PractitionerRole.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "eCrew.02 - Crew Member Level",
      "comment" : "NEMSIS eCrew.02. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. The EMS certification/licensure level active during this response."
    },
    {
      "id" : "PractitionerRole.extension:certificationLevel",
      "path" : "PractitionerRole.extension",
      "sliceName" : "certificationLevel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-certification-level"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.identifier",
      "path" : "PractitionerRole.identifier",
      "short" : "eCrew.01 - Crew Member ID",
      "comment" : "NEMSIS eCrew.01. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. The unique identifier for this crew member during this response (may be agency-assigned or state-issued).",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "short" : "Reference to the EMS personnel record",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "short" : "The EMS agency this crew member responded for",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-organization"]
      }]
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "eCrew.03 - Crew Member Response Role",
      "comment" : "NEMSIS eCrew.03. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. The crew member's functional role during this response (e.g., Primary Patient Caregiver, Driver/Pilot).",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-crew-role"
      }
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "comment" : "US Core PractitionerRole requires specialty MS."
    },
    {
      "id" : "PractitionerRole.location",
      "path" : "PractitionerRole.location",
      "comment" : "US Core PractitionerRole requires location MS."
    },
    {
      "id" : "PractitionerRole.telecom",
      "path" : "PractitionerRole.telecom",
      "comment" : "US Core PractitionerRole requires telecom MS."
    },
    {
      "id" : "PractitionerRole.telecom.system",
      "path" : "PractitionerRole.telecom.system",
      "comment" : "US Core requires telecom.system 1..1 MS."
    },
    {
      "id" : "PractitionerRole.telecom.value",
      "path" : "PractitionerRole.telecom.value",
      "comment" : "US Core requires telecom.value 1..1 MS."
    },
    {
      "id" : "PractitionerRole.endpoint",
      "path" : "PractitionerRole.endpoint",
      "comment" : "US Core PractitionerRole requires endpoint MS."
    }]
  }
}

```
