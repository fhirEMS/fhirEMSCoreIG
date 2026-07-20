# NEMSIS Pertinent Negative - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS Pertinent Negative**

## Extension: NEMSIS Pertinent Negative 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-pertinent-negative | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSPertinentNegative |

Represents the NEMSIS 'Pertinent Negative' (PN) pattern for clinical data elements. Indicates a clinically significant absence (e.g., 'Denies Chest Pain').

**Context of Use**

**Usage info**

**Usages:**

* Examples for this Extension: [Observation/ex-ems-stroke-scale](Observation-ex-ems-stroke-scale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-pertinent-negative.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-pertinent-negative.csv), [Excel](StructureDefinition-ext-ems-pertinent-negative.xlsx), [Schematron](StructureDefinition-ext-ems-pertinent-negative.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-pertinent-negative",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-pertinent-negative",
  "version" : "0.2.0",
  "name" : "EMSPertinentNegative",
  "title" : "NEMSIS Pertinent Negative",
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
  "description" : "Represents the NEMSIS 'Pertinent Negative' (PN) pattern for clinical data elements.\nIndicates a clinically significant absence (e.g., 'Denies Chest Pain').",
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
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "NEMSIS Pertinent Negative",
      "definition" : "Represents the NEMSIS 'Pertinent Negative' (PN) pattern for clinical data elements.\nIndicates a clinically significant absence (e.g., 'Denies Chest Pain')."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-pertinent-negative"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-pertinent-negative"
      }
    }]
  }
}

```
