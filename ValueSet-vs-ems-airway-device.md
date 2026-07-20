# EMS Airway Device VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Airway Device VS**

## ValueSet: EMS Airway Device VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-device | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSAirwayDeviceVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.14 | |

 
Type of airway device being confirmed (eAirway.03). 

 **References** 

* [EMS Airway Management Context](StructureDefinition-ext-ems-airway-context.md)

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
  "id" : "vs-ems-airway-device",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-device",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.14"
  }],
  "version" : "0.2.0",
  "name" : "EMSAirwayDeviceVS",
  "title" : "EMS Airway Device VS",
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
  "description" : "Type of airway device being confirmed (eAirway.03).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-airway",
      "concept" : [{
        "code" : "4003001",
        "display" : "Cricothyrotomy Tube"
      },
      {
        "code" : "4003003",
        "display" : "Endotracheal Tube"
      },
      {
        "code" : "4003005",
        "display" : "Other-Invasive Airway"
      },
      {
        "code" : "4003007",
        "display" : "SAD-Combitube"
      },
      {
        "code" : "4003009",
        "display" : "SAD-King"
      },
      {
        "code" : "4003011",
        "display" : "SAD-LMA"
      },
      {
        "code" : "4003013",
        "display" : "SAD-Other"
      },
      {
        "code" : "4003015",
        "display" : "Tracheostomy Tube"
      }]
    }]
  }
}

```
