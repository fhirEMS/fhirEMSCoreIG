# EMS Vehicle Unit Identification - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Vehicle Unit Identification**

## Extension: EMS Vehicle Unit Identification 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-unit | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSUnit |

NEMSIS eResponse.13 (EMS Vehicle/Unit Number) and eResponse.14 (EMS Unit Call Sign). Both Mandatory/National.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Encounter](StructureDefinition-ems-encounter.md)
* Examples for this Extension: [Encounter/ex-ems-encounter](Encounter-ex-ems-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-unit.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-unit.csv), [Excel](StructureDefinition-ext-ems-unit.xlsx), [Schematron](StructureDefinition-ext-ems-unit.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-unit",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-unit",
  "version" : "0.2.0",
  "name" : "EMSUnit",
  "title" : "EMS Vehicle Unit Identification",
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
  "description" : "NEMSIS eResponse.13 (EMS Vehicle/Unit Number) and eResponse.14 (EMS Unit Call Sign). Both Mandatory/National.",
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
      "short" : "EMS Vehicle Unit Identification",
      "definition" : "NEMSIS eResponse.13 (EMS Vehicle/Unit Number) and eResponse.14 (EMS Unit Call Sign). Both Mandatory/National."
    },
    {
      "id" : "Extension.extension:unitNumber",
      "path" : "Extension.extension",
      "sliceName" : "unitNumber",
      "short" : "eResponse.13 - EMS Vehicle (Unit) Number",
      "comment" : "NEMSIS eResponse.13. Usage: Mandatory/National. Not nillable. No NV or PN. The agency-assigned vehicle identifier.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:unitNumber.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:unitNumber.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "unitNumber"
    },
    {
      "id" : "Extension.extension:unitNumber.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:callSign",
      "path" : "Extension.extension",
      "sliceName" : "callSign",
      "short" : "eResponse.14 - EMS Unit Call Sign",
      "comment" : "NEMSIS eResponse.14. Usage: Mandatory/National. Not nillable. No NV or PN. The radio call sign of the unit.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:callSign.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:callSign.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "callSign"
    },
    {
      "id" : "Extension.extension:callSign.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-unit"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
