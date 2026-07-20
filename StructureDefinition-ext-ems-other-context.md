# EMS Other Context - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Other Context**

## Extension: EMS Other Context 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-other-context | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSOtherContext |

Encounter-level NEMSIS eOther data: review requested, potential system-of-care/registry candidacy, disaster type, and the crew member completing the report.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Encounter](StructureDefinition-ems-encounter.md)
* Examples for this Extension: [Encounter/ex-ems-encounter](Encounter-ex-ems-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-other-context.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-other-context.csv), [Excel](StructureDefinition-ext-ems-other-context.xlsx), [Schematron](StructureDefinition-ext-ems-other-context.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-other-context",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-other-context",
  "version" : "0.2.0",
  "name" : "EMSOtherContext",
  "title" : "EMS Other Context",
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
  "description" : "Encounter-level NEMSIS eOther data: review requested, potential system-of-care/registry candidacy, disaster type, and the crew member completing the report.",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Other Context",
      "definition" : "Encounter-level NEMSIS eOther data: review requested, potential system-of-care/registry candidacy, disaster type, and the crew member completing the report."
    },
    {
      "id" : "Extension.extension:reviewRequested",
      "path" : "Extension.extension",
      "sliceName" : "reviewRequested",
      "short" : "eOther.01 - Review Requested",
      "comment" : "NEMSIS eOther.01. Usage: Optional. NEMSIS YesNoValues mapped to boolean. Whether QA/QI review of this PCR is requested.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:reviewRequested.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:reviewRequested.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "reviewRequested"
    },
    {
      "id" : "Extension.extension:reviewRequested.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:registryCandidate",
      "path" : "Extension.extension",
      "sliceName" : "registryCandidate",
      "short" : "eOther.02 - Potential System of Care/Specialty/Registry Patient",
      "comment" : "NEMSIS eOther.02. Usage: Optional. Repeating (0..M). Nillable.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:registryCandidate.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:registryCandidate.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "registryCandidate"
    },
    {
      "id" : "Extension.extension:registryCandidate.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-registry-candidate"
      }
    },
    {
      "id" : "Extension.extension:disasterType",
      "path" : "Extension.extension",
      "sliceName" : "disasterType",
      "short" : "eOther.07 - Natural, Suspected, Intentional, or Unintentional Disaster",
      "comment" : "NEMSIS eOther.07. Usage: Optional. Repeating (0..M).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:disasterType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:disasterType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "disasterType"
    },
    {
      "id" : "Extension.extension:disasterType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-disaster-type"
      }
    },
    {
      "id" : "Extension.extension:crewCompletingReport",
      "path" : "Extension.extension",
      "sliceName" : "crewCompletingReport",
      "short" : "eOther.08 - Crew Member Completing this Report",
      "comment" : "NEMSIS eOther.08. Usage: Recommended. The crew member ID (correlates to eCrew.01). The completing crew member is also the Composition.author.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:crewCompletingReport.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:crewCompletingReport.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "crewCompletingReport"
    },
    {
      "id" : "Extension.extension:crewCompletingReport.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-other-context"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
