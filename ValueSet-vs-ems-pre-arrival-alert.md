# EMS Destination Team Pre-Arrival Alert - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Destination Team Pre-Arrival Alert**

## ValueSet: EMS Destination Team Pre-Arrival Alert 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-pre-arrival-alert | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSPreArrivalAlertVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.98 | |

 
NEMSIS eDisposition.24 - Whether and what type of pre-arrival alert was given to the receiving facility. 

 **References** 

* [EMS Destination Details](StructureDefinition-ext-ems-destination-details.md)

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
  "id" : "vs-ems-pre-arrival-alert",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-pre-arrival-alert",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.98"
  }],
  "version" : "0.2.0",
  "name" : "EMSPreArrivalAlertVS",
  "title" : "EMS Destination Team Pre-Arrival Alert",
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
  "description" : "NEMSIS eDisposition.24 - Whether and what type of pre-arrival alert was given to the receiving facility.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
      "concept" : [{
        "code" : "4224001",
        "display" : "No"
      },
      {
        "code" : "4224003",
        "display" : "Yes-Adult Trauma"
      },
      {
        "code" : "4224005",
        "display" : "Yes-Cardiac Arrest"
      },
      {
        "code" : "4224007",
        "display" : "Yes-Obstetrics"
      },
      {
        "code" : "4224009",
        "display" : "Yes-Other"
      },
      {
        "code" : "4224011",
        "display" : "Yes-Pediatric Trauma"
      },
      {
        "code" : "4224013",
        "display" : "Yes-STEMI"
      },
      {
        "code" : "4224015",
        "display" : "Yes-Stroke"
      },
      {
        "code" : "4224017",
        "display" : "Yes-Trauma (General)"
      },
      {
        "code" : "4224019",
        "display" : "Yes-Sepsis"
      }]
    }]
  }
}

```
