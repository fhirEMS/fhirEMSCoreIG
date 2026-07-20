# EMS ACN Incident - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS ACN Incident**

## Extension: EMS ACN Incident 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-acn-incident | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSACNIncident |

Automated Collision Notification (ACN) telematics data for NEMSIS eInjury.11–.29: providing company, incident identifiers, date/time, GPS location, vehicle description, impact and delta velocity data, rollover, seat location, seatbelt use, and airbag deployment reported by the vehicle telematics system.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Injury Condition](StructureDefinition-ems-condition-injury.md)
* Examples for this Extension: [Condition/ex-ems-condition-injury](Condition-ex-ems-condition-injury.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-acn-incident.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-acn-incident.csv), [Excel](StructureDefinition-ext-ems-acn-incident.xlsx), [Schematron](StructureDefinition-ext-ems-acn-incident.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-acn-incident",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-acn-incident",
  "version" : "0.2.0",
  "name" : "EMSACNIncident",
  "title" : "EMS ACN Incident",
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
  "description" : "Automated Collision Notification (ACN) telematics data for NEMSIS eInjury.11–.29: providing company, incident identifiers, date/time, GPS location, vehicle description, impact and delta velocity data, rollover, seat location, seatbelt use, and airbag deployment reported by the vehicle telematics system.",
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
    "expression" : "Condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS ACN Incident",
      "definition" : "Automated Collision Notification (ACN) telematics data for NEMSIS eInjury.11–.29: providing company, incident identifiers, date/time, GPS location, vehicle description, impact and delta velocity data, rollover, seat location, seatbelt use, and airbag deployment reported by the vehicle telematics system."
    },
    {
      "id" : "Extension.extension:company",
      "path" : "Extension.extension",
      "sliceName" : "company",
      "short" : "eInjury.11 - ACN System/Company Providing ACN Data",
      "comment" : "NEMSIS eInjury.11. Usage: Optional. Name of the telematics company providing the ACN data.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:company.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:company.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "company"
    },
    {
      "id" : "Extension.extension:company.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:incidentId",
      "path" : "Extension.extension",
      "sliceName" : "incidentId",
      "short" : "eInjury.12 - ACN Incident ID",
      "comment" : "NEMSIS eInjury.12. Usage: Optional. Unique incident identifier assigned by the ACN provider.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:incidentId.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:incidentId.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "incidentId"
    },
    {
      "id" : "Extension.extension:incidentId.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:callbackPhone",
      "path" : "Extension.extension",
      "sliceName" : "callbackPhone",
      "short" : "eInjury.13 - ACN Call Back Phone Number",
      "comment" : "NEMSIS eInjury.13. Usage: Optional. Phone number for contacting the ACN provider or vehicle occupants. Repeating (0..M).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:callbackPhone.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:callbackPhone.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "callbackPhone"
    },
    {
      "id" : "Extension.extension:callbackPhone.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "Extension.extension:incidentDateTime",
      "path" : "Extension.extension",
      "sliceName" : "incidentDateTime",
      "short" : "eInjury.14 - Date/Time of ACN Incident",
      "comment" : "NEMSIS eInjury.14. Usage: Optional. Date/time of the collision as reported by the telematics system.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:incidentDateTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:incidentDateTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "incidentDateTime"
    },
    {
      "id" : "Extension.extension:incidentDateTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:incidentLocation",
      "path" : "Extension.extension",
      "sliceName" : "incidentLocation",
      "short" : "eInjury.15 - ACN Incident Location (GPS)",
      "comment" : "NEMSIS eInjury.15. Usage: Optional. GPS coordinates reported by the telematics system in NEMSIS GPSLocation format: 'latitude,longitude' in signed decimal degrees.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:incidentLocation.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:incidentLocation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "incidentLocation"
    },
    {
      "id" : "Extension.extension:incidentLocation.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:vehicleBodyType",
      "path" : "Extension.extension",
      "sliceName" : "vehicleBodyType",
      "short" : "eInjury.16 - ACN Incident Vehicle Body Type",
      "comment" : "NEMSIS eInjury.16. Usage: Optional.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:vehicleBodyType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:vehicleBodyType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "vehicleBodyType"
    },
    {
      "id" : "Extension.extension:vehicleBodyType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:vehicleManufacturer",
      "path" : "Extension.extension",
      "sliceName" : "vehicleManufacturer",
      "short" : "eInjury.17 - ACN Incident Vehicle Manufacturer",
      "comment" : "NEMSIS eInjury.17. Usage: Optional.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:vehicleManufacturer.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:vehicleManufacturer.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "vehicleManufacturer"
    },
    {
      "id" : "Extension.extension:vehicleManufacturer.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:vehicleMake",
      "path" : "Extension.extension",
      "sliceName" : "vehicleMake",
      "short" : "eInjury.18 - ACN Incident Vehicle Make",
      "comment" : "NEMSIS eInjury.18. Usage: Optional.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:vehicleMake.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:vehicleMake.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "vehicleMake"
    },
    {
      "id" : "Extension.extension:vehicleMake.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:vehicleModel",
      "path" : "Extension.extension",
      "sliceName" : "vehicleModel",
      "short" : "eInjury.19 - ACN Incident Vehicle Model",
      "comment" : "NEMSIS eInjury.19. Usage: Optional.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:vehicleModel.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:vehicleModel.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "vehicleModel"
    },
    {
      "id" : "Extension.extension:vehicleModel.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:vehicleModelYear",
      "path" : "Extension.extension",
      "sliceName" : "vehicleModelYear",
      "short" : "eInjury.20 - ACN Incident Vehicle Model Year",
      "comment" : "NEMSIS eInjury.20. Usage: Optional. Year-precision date (e.g., 2024).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:vehicleModelYear.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:vehicleModelYear.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "vehicleModelYear"
    },
    {
      "id" : "Extension.extension:vehicleModelYear.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:multipleImpacts",
      "path" : "Extension.extension",
      "sliceName" : "multipleImpacts",
      "short" : "eInjury.21 - ACN Incident Multiple Impacts",
      "comment" : "NEMSIS eInjury.21. Usage: Optional. NEMSIS YesNoValues (9923001 No / 9923003 Yes) mapped to boolean.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:multipleImpacts.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:multipleImpacts.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "multipleImpacts"
    },
    {
      "id" : "Extension.extension:multipleImpacts.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:deltaVelocity",
      "path" : "Extension.extension",
      "sliceName" : "deltaVelocity",
      "short" : "eInjury.22 - ACN Incident Delta Velocity",
      "comment" : "NEMSIS eInjury.22. Usage: Optional. Change in velocity at impact reported by vehicle telemetry; NEMSIS VelocityUnit attribute determines MPH (UCUM [mi_i]/h) or KPH (km/h). Repeating (0..M) — one repetition per impact.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:deltaVelocity.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:deltaVelocity.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "deltaVelocity"
    },
    {
      "id" : "Extension.extension:deltaVelocity.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.extension:deltaVelocity.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:highProbabilityOfInjury",
      "path" : "Extension.extension",
      "sliceName" : "highProbabilityOfInjury",
      "short" : "eInjury.23 - ACN High Probability of Injury",
      "comment" : "NEMSIS eInjury.23. Usage: Optional. Telemetry-predicted high probability of severe injury. NEMSIS YesNoValues mapped to boolean.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:highProbabilityOfInjury.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:highProbabilityOfInjury.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "highProbabilityOfInjury"
    },
    {
      "id" : "Extension.extension:highProbabilityOfInjury.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:pdof",
      "path" : "Extension.extension",
      "sliceName" : "pdof",
      "short" : "eInjury.24 - ACN Incident PDOF",
      "comment" : "NEMSIS eInjury.24. Usage: Optional. Principal Direction of Force to nearest clock reading: integer 1–12 (12 = frontal collision, 3 = passenger/right side).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:pdof.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:pdof.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "pdof"
    },
    {
      "id" : "Extension.extension:pdof.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:rollover",
      "path" : "Extension.extension",
      "sliceName" : "rollover",
      "short" : "eInjury.25 - ACN Incident Rollover",
      "comment" : "NEMSIS eInjury.25. Usage: Optional. ACNYesNoType (Y/N) mapped to boolean.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:rollover.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:rollover.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "rollover"
    },
    {
      "id" : "Extension.extension:rollover.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:seatLocation",
      "path" : "Extension.extension",
      "sliceName" : "seatLocation",
      "short" : "eInjury.26 - ACN Vehicle Seat Location",
      "comment" : "NEMSIS eInjury.26. Usage: Optional. Patient seat location reported by vehicle telemetry.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:seatLocation.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:seatLocation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "seatLocation"
    },
    {
      "id" : "Extension.extension:seatLocation.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-acn-seat-location"
      }
    },
    {
      "id" : "Extension.extension:seatOccupied",
      "path" : "Extension.extension",
      "sliceName" : "seatOccupied",
      "short" : "eInjury.27 - Seat Occupied",
      "comment" : "NEMSIS eInjury.27. Usage: Optional. ACNYesNoType (Y/N) mapped to boolean.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:seatOccupied.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:seatOccupied.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "seatOccupied"
    },
    {
      "id" : "Extension.extension:seatOccupied.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:seatbeltUse",
      "path" : "Extension.extension",
      "sliceName" : "seatbeltUse",
      "short" : "eInjury.28 - ACN Incident Seatbelt Use",
      "comment" : "NEMSIS eInjury.28. Usage: Optional. ACNYesNoType (Y/N) mapped to boolean.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:seatbeltUse.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:seatbeltUse.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "seatbeltUse"
    },
    {
      "id" : "Extension.extension:seatbeltUse.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:airbagDeployed",
      "path" : "Extension.extension",
      "sliceName" : "airbagDeployed",
      "short" : "eInjury.29 - ACN Incident Airbag Deployed",
      "comment" : "NEMSIS eInjury.29. Usage: Optional. ACNYesNoType (Y/N) mapped to boolean.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:airbagDeployed.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:airbagDeployed.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "airbagDeployed"
    },
    {
      "id" : "Extension.extension:airbagDeployed.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-acn-incident"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
