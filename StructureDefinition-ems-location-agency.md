# EMS Location — Agency Station - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Location — Agency Station**

## Resource Profile: EMS Location — Agency Station 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-agency | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSLocationAgency |

 
An EMS agency location — headquarters, station, or staging area (NEMSIS dLocation). One resource per agency location, managed by the EMSOrganization. 

**Usages:**

* Examples for this Profile: [Riverside County Fire Station 7](Location-ex-ems-location-agency.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-location-agency.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-location-agency.csv), [Excel](StructureDefinition-ems-location-agency.xlsx), [Schematron](StructureDefinition-ems-location-agency.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-location-agency",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-agency",
  "version" : "0.2.0",
  "name" : "EMSLocationAgency",
  "title" : "EMS Location — Agency Station",
  "status" : "active",
  "experimental" : false,
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
  "description" : "An EMS agency location — headquarters, station, or staging area (NEMSIS dLocation). One resource per agency location, managed by the EMSOrganization.",
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
      }
    },
    {
      "id" : "Location.extension:usng",
      "path" : "Location.extension",
      "sliceName" : "usng",
      "short" : "dLocation.05 - EMS Location US National Grid Coordinates",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-usng"]
      }]
    },
    {
      "id" : "Location.identifier",
      "path" : "Location.identifier",
      "short" : "dLocation.03 - EMS Location Number",
      "comment" : "NEMSIS dLocation.03. Agency-assigned station number.",
      "mustSupport" : true
    },
    {
      "id" : "Location.name",
      "path" : "Location.name",
      "short" : "dLocation.02 - EMS Location Name"
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "short" : "dLocation.01 - EMS Location Type",
      "comment" : "NEMSIS dLocation.01. Usage: Optional. Headquarters, station, or staging area.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-location-type"
      }
    },
    {
      "id" : "Location.telecom",
      "path" : "Location.telecom",
      "short" : "dLocation.12 - EMS Location Phone Number"
    },
    {
      "id" : "Location.address.line",
      "path" : "Location.address.line",
      "short" : "dLocation.06 - EMS Location Address"
    },
    {
      "id" : "Location.address.city",
      "path" : "Location.address.city",
      "short" : "dLocation.07 - EMS Location City",
      "comment" : "NEMSIS dLocation.07 (CityGnisCode) resolved to city name per NDR-003."
    },
    {
      "id" : "Location.address.district",
      "path" : "Location.address.district",
      "short" : "dLocation.10 - EMS Location County",
      "comment" : "NEMSIS dLocation.10. 5-digit ANSI/FIPS county code.",
      "mustSupport" : true
    },
    {
      "id" : "Location.address.state",
      "path" : "Location.address.state",
      "short" : "dLocation.08 - EMS Location State",
      "comment" : "NEMSIS dLocation.08 (ANSIStateCode) as 2-letter USPS abbreviation per NDR-004."
    },
    {
      "id" : "Location.address.postalCode",
      "path" : "Location.address.postalCode",
      "short" : "dLocation.09 - EMS Station or Location ZIP Code"
    },
    {
      "id" : "Location.address.country",
      "path" : "Location.address.country",
      "short" : "dLocation.11 - EMS Location Country",
      "mustSupport" : true
    },
    {
      "id" : "Location.position",
      "path" : "Location.position",
      "mustSupport" : true
    },
    {
      "id" : "Location.position.longitude",
      "path" : "Location.position.longitude",
      "comment" : "NEMSIS dLocation.04 (GPSLocation) split into decimal latitude/longitude.",
      "mustSupport" : true
    },
    {
      "id" : "Location.position.latitude",
      "path" : "Location.position.latitude",
      "mustSupport" : true
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-organization"]
      }]
    }]
  }
}

```
