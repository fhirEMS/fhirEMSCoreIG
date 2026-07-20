# EMS Vehicle Device - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Vehicle Device**

## Resource Profile: EMS Vehicle Device 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-device-vehicle | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSDeviceVehicle |

 
EMS vehicle/unit Device derived directly from FHIR R4 Device. No US Core profile exists for Device. Represents NEMSIS dVehicle section (Version 3.5.1.251001CP2) — agency-level demographics about the EMS vehicle/unit. 
dVehicle elements that are Optional or Recommended are represented as MS only when Recommended per NEMSIS. 

**Usages:**

* Examples for this Profile: [Device/ex-ems-device-vehicle](Device-ex-ems-device-vehicle.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-device-vehicle.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-device-vehicle.csv), [Excel](StructureDefinition-ems-device-vehicle.xlsx), [Schematron](StructureDefinition-ems-device-vehicle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-device-vehicle",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-device-vehicle",
  "version" : "0.2.0",
  "name" : "EMSDeviceVehicle",
  "title" : "EMS Vehicle Device",
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
  "description" : "EMS vehicle/unit Device derived directly from FHIR R4 Device.\nNo US Core profile exists for Device. Represents NEMSIS dVehicle\nsection (Version 3.5.1.251001CP2) — agency-level demographics\nabout the EMS vehicle/unit.\n\ndVehicle elements that are Optional or Recommended are represented\nas MS only when Recommended per NEMSIS.",
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
  },
  {
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.identifier",
      "path" : "Device.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "use"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Device.identifier:unitNumber",
      "path" : "Device.identifier",
      "sliceName" : "unitNumber",
      "short" : "dVehicle.01 - Unit/Vehicle Number",
      "comment" : "NEMSIS dVehicle.01. Usage: Recommended. Agency-assigned vehicle number.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.identifier:unitNumber.use",
      "path" : "Device.identifier.use",
      "min" : 1,
      "patternCode" : "official"
    },
    {
      "id" : "Device.identifier:unitNumber.type.coding.system",
      "path" : "Device.identifier.type.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Device.identifier:unitNumber.type.coding.code",
      "path" : "Device.identifier.type.coding.code",
      "patternCode" : "VN"
    },
    {
      "id" : "Device.identifier:vin",
      "path" : "Device.identifier",
      "sliceName" : "vin",
      "short" : "dVehicle.02 - Vehicle Identification Number (VIN)",
      "comment" : "NEMSIS dVehicle.02. Usage: Optional. 17-character vehicle identification number.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.identifier:vin.use",
      "path" : "Device.identifier.use",
      "min" : 1,
      "patternCode" : "secondary"
    },
    {
      "id" : "Device.identifier:vin.system",
      "path" : "Device.identifier.system",
      "patternUri" : "https://fhirems.github.io/fhirEMSCoreIG/identifier/vin"
    },
    {
      "id" : "Device.identifier:callSign",
      "path" : "Device.identifier",
      "sliceName" : "callSign",
      "short" : "dVehicle.03 - EMS Unit Call Sign",
      "comment" : "NEMSIS dVehicle.03. Usage: Optional. Radio call sign for the unit.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.identifier:callSign.use",
      "path" : "Device.identifier.use",
      "min" : 1,
      "patternCode" : "usual"
    },
    {
      "id" : "Device.status",
      "path" : "Device.status",
      "comment" : "Use 'active' for vehicles currently in service.",
      "mustSupport" : true
    },
    {
      "id" : "Device.manufactureDate",
      "path" : "Device.manufactureDate",
      "short" : "dVehicle.10 - Vehicle Model Year",
      "comment" : "NEMSIS dVehicle.10. Usage: Recommended. Set to the first day of the model year (e.g., 2020-01-01).",
      "mustSupport" : true
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "short" : "dVehicle.04 - Vehicle Type",
      "comment" : "NEMSIS dVehicle.04. Usage: Recommended. The type of EMS vehicle.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-vehicle-type"
      }
    },
    {
      "id" : "Device.owner",
      "path" : "Device.owner",
      "short" : "EMS agency that owns/operates this vehicle",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-organization"]
      }],
      "mustSupport" : true
    }]
  }
}

```
