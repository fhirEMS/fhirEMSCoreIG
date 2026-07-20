# EMS Scene Location - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Scene Location**

## Resource Profile: EMS Scene Location 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-scene | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSLocationScene |

 
Represents the physical location where an EMS incident occurred. Derived from US Core Location. Maps to NEMSIS eScene section (Version 3.5.1.251001CP2). Captures scene address, GPS coordinates, incident location type, and scene context (number of patients, MCI status). 

**Usages:**

* Refer to this Profile: [EMS Encounter](StructureDefinition-ems-encounter.md)
* Examples for this Profile: [Interstate 15 NB mm 58.4](Location-ex-ems-location-scene.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-location-scene.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-location-scene.csv), [Excel](StructureDefinition-ems-location-scene.xlsx), [Schematron](StructureDefinition-ems-location-scene.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-location-scene",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-scene",
  "version" : "0.2.0",
  "name" : "EMSLocationScene",
  "title" : "EMS Scene Location",
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
  "description" : "Represents the physical location where an EMS incident occurred.\nDerived from US Core Location. Maps to NEMSIS eScene section\n(Version 3.5.1.251001CP2). Captures scene address, GPS coordinates,\nincident location type, and scene context (number of patients, MCI status).",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location"
    },
    {
      "id" : "Location.extension",
      "path" : "Location.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "eScene.11 - Scene GPS Location",
      "comment" : "NEMSIS eScene.11. Usage: Optional. Decimal latitude and longitude of the scene."
    },
    {
      "id" : "Location.extension:sceneDetails",
      "path" : "Location.extension",
      "sliceName" : "sceneDetails",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-scene-details"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.extension:sceneGPS",
      "path" : "Location.extension",
      "sliceName" : "sceneGPS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-scene-gps"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.status",
      "path" : "Location.status",
      "comment" : "US Core Location requires status MS."
    },
    {
      "id" : "Location.name",
      "path" : "Location.name",
      "comment" : "US Core Location requires name MS."
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "short" : "eScene.09 - Incident Location Type",
      "comment" : "NEMSIS eScene.09. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. ICD-10-CM Y92 place-of-occurrence code describing where the incident happened (e.g., Y92.000 home, Y92.59 highway).",
      "mustSupport" : true
    },
    {
      "id" : "Location.telecom",
      "path" : "Location.telecom",
      "comment" : "US Core Location requires telecom MS."
    },
    {
      "id" : "Location.address.text",
      "path" : "Location.address.text",
      "short" : "eScene.14 - Mile Post or Major Roadway (when applicable)",
      "comment" : "NEMSIS eScene.14. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. Use for highway milepost or major roadway description when a street address is not applicable.",
      "mustSupport" : true
    },
    {
      "id" : "Location.address.line",
      "path" : "Location.address.line",
      "short" : "eScene.15/16 - Incident Street Address and Apt/Suite/Room",
      "comment" : "NEMSIS eScene.15 (Street Address, Recommended, NV) and eScene.16 (Apartment/Suite/Room, Recommended, NV). NDR-003 does not apply here (not GNIS code)."
    },
    {
      "id" : "Location.address.city",
      "path" : "Location.address.city",
      "short" : "eScene.17 - Incident City",
      "comment" : "NEMSIS eScene.17. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. NEMSIS stores CityGnisCode; convert to plain text city name per NDR-003."
    },
    {
      "id" : "Location.address.district",
      "path" : "Location.address.district",
      "short" : "eScene.21 - Incident County",
      "comment" : "NEMSIS eScene.21. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. NEMSIS stores ANSICountyCode (5-digit FIPS). Store as-is in district.",
      "mustSupport" : true
    },
    {
      "id" : "Location.address.state",
      "path" : "Location.address.state",
      "short" : "eScene.18 - Incident State",
      "comment" : "NEMSIS eScene.18. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. ANSIStateCode → 2-letter USPS abbreviation per NDR-004."
    },
    {
      "id" : "Location.address.postalCode",
      "path" : "Location.address.postalCode",
      "short" : "eScene.19 - Incident ZIP Code",
      "comment" : "NEMSIS eScene.19. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "comment" : "US Core Location requires managingOrganization MS. Reference to the EMS agency responsible for this scene response.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-organization"]
      }]
    }]
  }
}

```
