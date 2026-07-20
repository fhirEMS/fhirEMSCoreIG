# EMS Core Server Capability Statement - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Core Server Capability Statement**

## CapabilityStatement: EMS Core Server Capability Statement 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CapabilityStatement/CapabilityStatement-ems-core-server | *Version*:0.2.0 |
| Draft as of 2026-03-14 | *Computable Name*:EMSCoreServerCapabilityStatement |

 
Expected FHIR R4 server capabilities for an EMS Patient Care Report (PCR) data repository implementing the fhirEMSCore IG v0.1.0. 

 [Raw OpenAPI-Swagger Definition file](CapabilityStatement-ems-core-server.openapi.json) | [Download](CapabilityStatement-ems-core-server.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "CapabilityStatement-ems-core-server",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CapabilityStatement/CapabilityStatement-ems-core-server",
  "version" : "0.2.0",
  "name" : "EMSCoreServerCapabilityStatement",
  "title" : "EMS Core Server Capability Statement",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-14",
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
  "description" : "Expected FHIR R4 server capabilities for an EMS Patient Care Report (PCR) data repository implementing the fhirEMSCore IG v0.1.0.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml"],
  "implementationGuide" : ["https://fhirems.github.io/fhirEMSCoreIG/ImplementationGuide/fhirems.emscore",
  "http://hl7.org/fhir/us/core/ImplementationGuide/hl7.fhir.us.core"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "EMS PCR Server. Supports creation and retrieval of EMS Patient Care Report resources.",
    "resource" : [{
      "type" : "Composition",
      "supportedProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-composition"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "date",
        "type" : "date"
      }]
    },
    {
      "type" : "Patient",
      "supportedProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "token"
      },
      {
        "name" : "birthdate",
        "type" : "date"
      },
      {
        "name" : "name",
        "type" : "string"
      }]
    },
    {
      "type" : "Encounter",
      "supportedProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "identifier",
        "type" : "token"
      }]
    },
    {
      "type" : "Condition",
      "supportedProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition",
      "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition-arrest"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "encounter",
        "type" : "reference"
      }]
    },
    {
      "type" : "Observation",
      "supportedProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-vitalsigns",
      "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-bp",
      "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-gcs",
      "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-exam",
      "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-airway",
      "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-labs",
      "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-outcome"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "encounter",
        "type" : "reference"
      },
      {
        "name" : "category",
        "type" : "token"
      },
      {
        "name" : "code",
        "type" : "token"
      },
      {
        "name" : "date",
        "type" : "date"
      }]
    },
    {
      "type" : "Procedure",
      "supportedProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-procedure"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "encounter",
        "type" : "reference"
      }]
    },
    {
      "type" : "MedicationAdministration",
      "supportedProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-medicationadministration"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "context",
        "type" : "reference"
      }]
    },
    {
      "type" : "AllergyIntolerance",
      "supportedProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-allergyintolerance"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      }]
    },
    {
      "type" : "Location",
      "supportedProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-scene",
      "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-destination"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "name",
        "type" : "string"
      }]
    },
    {
      "type" : "Organization",
      "supportedProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-organization"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "token"
      }]
    },
    {
      "type" : "Practitioner",
      "supportedProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "token"
      },
      {
        "name" : "name",
        "type" : "string"
      }]
    },
    {
      "type" : "PractitionerRole",
      "supportedProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitionerrole"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "practitioner",
        "type" : "reference"
      }]
    },
    {
      "type" : "Device",
      "supportedProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-device-vehicle"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "token"
      },
      {
        "name" : "owner",
        "type" : "reference"
      }]
    }]
  }]
}

```
