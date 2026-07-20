# EMS Crew Safety - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Crew Safety**

## Extension: EMS Crew Safety 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-crew-safety | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSCrewSafety |

Per-crew-member safety documentation from NEMSIS eOther: PPE used (eOther.03), crew member ID (eOther.04), suspected work-related exposure/injury/death (eOther.05), and its type (eOther.06). Repeat the extension once per crew member.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Encounter](StructureDefinition-ems-encounter.md)
* Examples for this Extension: [Encounter/ex-ems-encounter](Encounter-ex-ems-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-crew-safety.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-crew-safety.csv), [Excel](StructureDefinition-ext-ems-crew-safety.xlsx), [Schematron](StructureDefinition-ext-ems-crew-safety.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-crew-safety",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-crew-safety",
  "version" : "0.2.0",
  "name" : "EMSCrewSafety",
  "title" : "EMS Crew Safety",
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
  "description" : "Per-crew-member safety documentation from NEMSIS eOther: PPE used (eOther.03), crew member ID (eOther.04), suspected work-related exposure/injury/death (eOther.05), and its type (eOther.06). Repeat the extension once per crew member.",
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
      "short" : "EMS Crew Safety",
      "definition" : "Per-crew-member safety documentation from NEMSIS eOther: PPE used (eOther.03), crew member ID (eOther.04), suspected work-related exposure/injury/death (eOther.05), and its type (eOther.06). Repeat the extension once per crew member."
    },
    {
      "id" : "Extension.extension:crewMemberId",
      "path" : "Extension.extension",
      "sliceName" : "crewMemberId",
      "short" : "eOther.04 - EMS Professional (Crew Member) ID",
      "comment" : "NEMSIS eOther.04. Usage: Optional. Correlates to eCrew.01.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:crewMemberId.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:crewMemberId.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "crewMemberId"
    },
    {
      "id" : "Extension.extension:crewMemberId.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:ppeUsed",
      "path" : "Extension.extension",
      "sliceName" : "ppeUsed",
      "short" : "eOther.03 - Personal Protective Equipment Used",
      "comment" : "NEMSIS eOther.03. Usage: Optional. Repeating (0..M). PPE worn by this crew member.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:ppeUsed.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ppeUsed.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ppeUsed"
    },
    {
      "id" : "Extension.extension:ppeUsed.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-crew-ppe"
      }
    },
    {
      "id" : "Extension.extension:workRelatedExposure",
      "path" : "Extension.extension",
      "sliceName" : "workRelatedExposure",
      "short" : "eOther.05 - Suspected EMS Work Related Exposure, Injury, or Death",
      "comment" : "NEMSIS eOther.05. Usage: Recommended. NEMSIS YesNoValues mapped to boolean.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:workRelatedExposure.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:workRelatedExposure.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "workRelatedExposure"
    },
    {
      "id" : "Extension.extension:workRelatedExposure.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:exposureType",
      "path" : "Extension.extension",
      "sliceName" : "exposureType",
      "short" : "eOther.06 - The Type of Work-Related Injury, Death or Suspected Exposure",
      "comment" : "NEMSIS eOther.06. Usage: Recommended. Repeating (0..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:exposureType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:exposureType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "exposureType"
    },
    {
      "id" : "Extension.extension:exposureType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-work-injury-exposure"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-crew-safety"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
