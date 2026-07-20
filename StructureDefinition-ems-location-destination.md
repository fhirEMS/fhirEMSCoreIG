# EMS Destination Location - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Destination Location**

## Resource Profile: EMS Destination Location 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-destination | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSLocationDestination |

 
Represents the facility or location to which the patient was transported. Derived from US Core Location. Maps to NEMSIS eDisposition address elements eDisposition.01–10 (Version 3.5.1.251001CP2). Destination type, capability, and pre-arrival alert are captured in the EMSDestinationDetails extension on the parent EMSEncounter. 

**Usages:**

* Refer to this Profile: [EMS Encounter](StructureDefinition-ems-encounter.md)
* Examples for this Profile: [Riverside University Health System Medical Center](Location-ex-ems-location-destination.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-location-destination.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-location-destination.csv), [Excel](StructureDefinition-ems-location-destination.xlsx), [Schematron](StructureDefinition-ems-location-destination.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-location-destination",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-destination",
  "version" : "0.2.0",
  "name" : "EMSLocationDestination",
  "title" : "EMS Destination Location",
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
  "description" : "Represents the facility or location to which the patient was transported.\nDerived from US Core Location. Maps to NEMSIS eDisposition address elements\neDisposition.01–10 (Version 3.5.1.251001CP2). Destination type, capability,\nand pre-arrival alert are captured in the EMSDestinationDetails extension on\nthe parent EMSEncounter.",
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
      "id" : "Location.identifier",
      "path" : "Location.identifier",
      "short" : "eDisposition.02 - Destination/Transferred To, Code",
      "comment" : "NEMSIS eDisposition.02. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. Facility code (e.g., FIPS, state registry ID) for the destination.",
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
      "short" : "eDisposition.01 - Destination/Transferred To, Name",
      "comment" : "NEMSIS eDisposition.01. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. The name of the receiving facility."
    },
    {
      "id" : "Location.telecom",
      "path" : "Location.telecom",
      "comment" : "US Core Location requires telecom MS."
    },
    {
      "id" : "Location.address.line",
      "path" : "Location.address.line",
      "short" : "eDisposition.03 - Destination Street Address",
      "comment" : "NEMSIS eDisposition.03. Usage: Optional."
    },
    {
      "id" : "Location.address.city",
      "path" : "Location.address.city",
      "short" : "eDisposition.04 - Destination City",
      "comment" : "NEMSIS eDisposition.04. Usage: Optional. Plain text city name."
    },
    {
      "id" : "Location.address.district",
      "path" : "Location.address.district",
      "short" : "eDisposition.06 - Destination County",
      "comment" : "NEMSIS eDisposition.06. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. 5-digit FIPS county code.",
      "mustSupport" : true
    },
    {
      "id" : "Location.address.state",
      "path" : "Location.address.state",
      "short" : "eDisposition.05 - Destination State",
      "comment" : "NEMSIS eDisposition.05. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. ANSIStateCode → 2-letter USPS abbreviation per NDR-004."
    },
    {
      "id" : "Location.address.postalCode",
      "path" : "Location.address.postalCode",
      "short" : "eDisposition.07 - Destination ZIP Code",
      "comment" : "NEMSIS eDisposition.07. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."
    },
    {
      "id" : "Location.position",
      "path" : "Location.position",
      "mustSupport" : true
    },
    {
      "id" : "Location.position.longitude",
      "path" : "Location.position.longitude",
      "short" : "eDisposition.09 - Destination GPS Longitude",
      "comment" : "NEMSIS eDisposition.09. Usage: Optional. Decimal degrees longitude.",
      "mustSupport" : true
    },
    {
      "id" : "Location.position.latitude",
      "path" : "Location.position.latitude",
      "short" : "eDisposition.09 - Destination GPS Latitude",
      "comment" : "NEMSIS eDisposition.09. Usage: Optional. Decimal degrees latitude.",
      "mustSupport" : true
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "comment" : "US Core Location requires managingOrganization MS."
    }]
  }
}

```
