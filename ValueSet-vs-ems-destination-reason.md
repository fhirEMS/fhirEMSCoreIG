# EMS Reason for Choosing Destination - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Reason for Choosing Destination**

## ValueSet: EMS Reason for Choosing Destination 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-destination-reason | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSDestinationReasonVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.39 | |

 
NEMSIS eDisposition.20 - The reason the destination was chosen. 

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
  "id" : "vs-ems-destination-reason",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-destination-reason",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.39"
  }],
  "version" : "0.2.0",
  "name" : "EMSDestinationReasonVS",
  "title" : "EMS Reason for Choosing Destination",
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
  "description" : "NEMSIS eDisposition.20 - The reason the destination was chosen.",
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
        "code" : "4220001",
        "display" : "Closest Facility"
      },
      {
        "code" : "4220003",
        "display" : "Diversion"
      },
      {
        "code" : "4220005",
        "display" : "Family Choice"
      },
      {
        "code" : "4220007",
        "display" : "Insurance Status/Requirement"
      },
      {
        "code" : "4220009",
        "display" : "Law Enforcement Choice"
      },
      {
        "code" : "4220011",
        "display" : "On-Line/On-Scene Medical Direction"
      },
      {
        "code" : "4220013",
        "display" : "Other"
      },
      {
        "code" : "4220015",
        "display" : "Patient's Choice"
      },
      {
        "code" : "4220017",
        "display" : "Patient's Physician's Choice"
      },
      {
        "code" : "4220019",
        "display" : "Protocol"
      },
      {
        "code" : "4220021",
        "display" : "Regional Specialty Center"
      }]
    }]
  }
}

```
