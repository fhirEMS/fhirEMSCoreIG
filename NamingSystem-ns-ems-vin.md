# EMS Vehicle Identification Number (VIN) Identifier System - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Vehicle Identification Number (VIN) Identifier System**

## NamingSystem: EMS Vehicle Identification Number (VIN) Identifier System 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/NamingSystem/ns-ems-vin | *Version*:0.2.0 |
| Active as of 2026-03-15 | *Computable Name*:EMSVehicleVIN |

 
Identifier system for the Vehicle Identification Number (VIN) as used in EMS vehicle (dVehicle.02) records within the fhirEMSCore Implementation Guide. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "ns-ems-vin",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhirems.github.io/fhirEMSCoreIG/NamingSystem/ns-ems-vin"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.2.0"
  }],
  "name" : "EMSVehicleVIN",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2026-03-15",
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
  "description" : "Identifier system for the Vehicle Identification Number (VIN) as used in EMS vehicle (dVehicle.02) records within the fhirEMSCore Implementation Guide.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://fhirems.github.io/fhirEMSCoreIG/identifier/vin",
    "preferred" : true
  }]
}

```
