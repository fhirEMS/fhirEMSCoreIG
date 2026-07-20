# EMS Organization - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Organization**

## Resource Profile: EMS Organization 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-organization | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSOrganization |

 
EMS agency organizational information derived from US Core Organization. Maps to NEMSIS dAgency section (Version 3.5.1.251001CP2). Captures agency identifiers, name, state, organizational type, service type, and level of service. 

**Usages:**

* Refer to this Profile: [EMS Ambulance Claim](StructureDefinition-ems-claim.md), [EMS Patient Care Report (PCR)](StructureDefinition-ems-composition.md), [EMS Vehicle Device](StructureDefinition-ems-device-vehicle.md), [EMS Encounter](StructureDefinition-ems-encounter.md)... Show 3 more, [EMS Location — Agency Station](StructureDefinition-ems-location-agency.md), [EMS Scene Location](StructureDefinition-ems-location-scene.md) and [EMS PractitionerRole](StructureDefinition-ems-practitionerrole.md)
* Examples for this Profile: [Riverside County EMS Agency](Organization-ex-ems-organization-agency.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-organization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-organization.csv), [Excel](StructureDefinition-ems-organization.xlsx), [Schematron](StructureDefinition-ems-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-organization",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-organization",
  "version" : "0.2.0",
  "name" : "EMSOrganization",
  "title" : "EMS Organization",
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
  "description" : "EMS agency organizational information derived from US Core Organization.\nMaps to NEMSIS dAgency section (Version 3.5.1.251001CP2). Captures agency\nidentifiers, name, state, organizational type, service type, and level of service.",
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
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.extension",
      "path" : "Organization.extension",
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
      "id" : "Organization.extension:agencyDetails",
      "path" : "Organization.extension",
      "sliceName" : "agencyDetails",
      "short" : "dAgency.09–12 - Service type, level of service, org status",
      "comment" : "NEMSIS dAgency.09 (Primary Service Type, Mandatory), dAgency.10 (Other Service Types, Recommended), dAgency.11 (Level of Service, Mandatory), dAgency.12 (Organization Status, Mandatory).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-agency-details"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:medicalDirector",
      "path" : "Organization.extension",
      "sliceName" : "medicalDirector",
      "short" : "dContact.13–.16 - Agency medical director credentials",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-medical-director"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:agencyConfiguration",
      "path" : "Organization.extension",
      "sliceName" : "agencyConfiguration",
      "short" : "dConfiguration - State-configured capabilities (one repetition per state)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-agency-configuration"]
      }]
    },
    {
      "id" : "Organization.identifier:NPI",
      "path" : "Organization.identifier",
      "sliceName" : "NPI",
      "short" : "dAgency.25 - National Provider Identifier (NPI)",
      "comment" : "NEMSIS dAgency.25. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. System: http://hl7.org/fhir/sid/us-npi."
    },
    {
      "id" : "Organization.identifier:NPI.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "patternUri" : "http://hl7.org/fhir/sid/us-npi"
    },
    {
      "id" : "Organization.identifier:NPI.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "short" : "Agency active status (derived from dAgency.12 Organization Status)",
      "comment" : "Set to true for active agencies. Detailed volunteer/non-volunteer status captured in extension[agencyDetails].organizationStatus."
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "short" : "dAgency.13 - Organizational Type",
      "comment" : "NEMSIS dAgency.13. Usage: Mandatory/National. Not nillable. No NV or PN. Fire Department, Governmental Non-Fire, Hospital, Private, or Tribal.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-org-type"
      }
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "dAgency.03 - EMS Agency Name",
      "comment" : "NEMSIS dAgency.03. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable."
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "comment" : "US Core Organization requires telecom MS."
    },
    {
      "id" : "Organization.telecom.system",
      "path" : "Organization.telecom.system",
      "comment" : "US Core requires telecom.system MS."
    },
    {
      "id" : "Organization.telecom.value",
      "path" : "Organization.telecom.value",
      "comment" : "US Core requires telecom.value MS."
    },
    {
      "id" : "Organization.address.state",
      "path" : "Organization.address.state",
      "short" : "dAgency.04 - EMS Agency State",
      "comment" : "NEMSIS dAgency.04. Usage: Mandatory/National. Not nillable. ANSIStateCode → 2-letter USPS abbreviation per NDR-004."
    },
    {
      "id" : "Organization.contact",
      "path" : "Organization.contact",
      "short" : "dContact - Agency contact persons",
      "comment" : "One contact repetition per dContact ContactGroup.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.purpose",
      "path" : "Organization.contact.purpose",
      "short" : "dContact.01 - Agency Contact Type",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-contact-type"
      }
    },
    {
      "id" : "Organization.contact.name",
      "path" : "Organization.contact.name",
      "short" : "dContact.02/.03/.04 - Agency Contact Name",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.telecom",
      "path" : "Organization.contact.telecom",
      "short" : "dContact.10/.11/.12 - Phone, Email, Web Address",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address",
      "path" : "Organization.contact.address",
      "short" : "dContact.05–.09 - Agency Contact Address",
      "comment" : "City (dContact.06, GNIS→name per NDR-003), state (dContact.07, ANSI→USPS per NDR-004).",
      "mustSupport" : true
    }]
  }
}

```
