# EMS ACN Vehicle Seat Location VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS ACN Vehicle Seat Location VS**

## ValueSet: EMS ACN Vehicle Seat Location VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-acn-seat-location | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSACNSeatLocationVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.1 | |

 
Automated Collision Notification (ACN) vehicle seat location of the patient (eInjury.26). 

 **References** 

* [EMS ACN Incident](StructureDefinition-ext-ems-acn-incident.md)

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
  "id" : "vs-ems-acn-seat-location",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-acn-seat-location",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.1"
  }],
  "version" : "0.2.0",
  "name" : "EMSACNSeatLocationVS",
  "title" : "EMS ACN Vehicle Seat Location VS",
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
  "description" : "Automated Collision Notification (ACN) vehicle seat location of the patient (eInjury.26).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-injury",
      "concept" : [{
        "code" : "2926001",
        "display" : "Driver Front Seat"
      },
      {
        "code" : "2926003",
        "display" : "Front Row Middle Seat"
      },
      {
        "code" : "2926005",
        "display" : "Passenger Front Seat"
      },
      {
        "code" : "2926007",
        "display" : "Second Row Left Seat"
      },
      {
        "code" : "2926009",
        "display" : "Second Row Middle Seat"
      },
      {
        "code" : "2926011",
        "display" : "Second Row Right Seat"
      },
      {
        "code" : "2926013",
        "display" : "Third Row Left Seat"
      },
      {
        "code" : "2926015",
        "display" : "Third Row Middle Seat"
      },
      {
        "code" : "2926017",
        "display" : "Third Row Right Seat"
      }]
    }]
  }
}

```
