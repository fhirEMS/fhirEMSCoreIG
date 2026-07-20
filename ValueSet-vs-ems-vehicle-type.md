# EMS Vehicle Type - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Vehicle Type**

## ValueSet: EMS Vehicle Type 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-vehicle-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSVehicleTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.129 | |

 
NEMSIS dVehicle.04 - The type of EMS vehicle. 

 **References** 

* [EMS Vehicle Device](StructureDefinition-ems-device-vehicle.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-ems-vehicle-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-vehicle-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.129"
  }],
  "version" : "0.2.0",
  "name" : "EMSVehicleTypeVS",
  "title" : "EMS Vehicle Type",
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
  "description" : "NEMSIS dVehicle.04 - The type of EMS vehicle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
      "concept" : [{
        "code" : "1404001",
        "display" : "Ambulance"
      },
      {
        "code" : "1404003",
        "display" : "ATV"
      },
      {
        "code" : "1404005",
        "display" : "Bicycle"
      },
      {
        "code" : "1404007",
        "display" : "Fire Apparatus"
      },
      {
        "code" : "1404009",
        "display" : "Fixed Wing"
      },
      {
        "code" : "1404011",
        "display" : "Motorcycle"
      },
      {
        "code" : "1404013",
        "display" : "Other"
      },
      {
        "code" : "1404015",
        "display" : "Personal Vehicle"
      },
      {
        "code" : "1404017",
        "display" : "Quick Response Vehicle (Non-Transport Vehicle other than Fire Apparatus)"
      },
      {
        "code" : "1404019",
        "display" : "Rescue"
      },
      {
        "code" : "1404021",
        "display" : "Rotor Craft"
      },
      {
        "code" : "1404023",
        "display" : "Snow Vehicle"
      },
      {
        "code" : "1404025",
        "display" : "Watercraft"
      }]
    }]
  }
}

```
