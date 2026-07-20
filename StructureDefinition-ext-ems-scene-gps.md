# EMS Scene GPS Location - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Scene GPS Location**

## Extension: EMS Scene GPS Location 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-scene-gps | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSSceneGPS |

NEMSIS eScene.11 - GPS coordinates of the EMS scene.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Scene Location](StructureDefinition-ems-location-scene.md)
* Examples for this Extension: [Interstate 15 NB mm 58.4](Location-ex-ems-location-scene.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-scene-gps.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-scene-gps.csv), [Excel](StructureDefinition-ext-ems-scene-gps.xlsx), [Schematron](StructureDefinition-ext-ems-scene-gps.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-scene-gps",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-scene-gps",
  "version" : "0.2.0",
  "name" : "EMSSceneGPS",
  "title" : "EMS Scene GPS Location",
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
  "description" : "NEMSIS eScene.11 - GPS coordinates of the EMS scene.",
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
    "expression" : "Location"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Scene GPS Location",
      "definition" : "NEMSIS eScene.11 - GPS coordinates of the EMS scene."
    },
    {
      "id" : "Extension.extension:latitude",
      "path" : "Extension.extension",
      "sliceName" : "latitude",
      "short" : "eScene.11 - Latitude",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:latitude.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:latitude.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "latitude"
    },
    {
      "id" : "Extension.extension:latitude.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Extension.extension:longitude",
      "path" : "Extension.extension",
      "sliceName" : "longitude",
      "short" : "eScene.11 - Longitude",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:longitude.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:longitude.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "longitude"
    },
    {
      "id" : "Extension.extension:longitude.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-scene-gps"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
