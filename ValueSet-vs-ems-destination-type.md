# EMS Type of Destination - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Type of Destination**

## ValueSet: EMS Type of Destination 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-destination-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSDestinationTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.40 | |

 
NEMSIS eDisposition.21 - The type of destination the patient was transported to. 

 **References** 

* [EMS Encounter](StructureDefinition-ems-encounter.md)
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
  "id" : "vs-ems-destination-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-destination-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.40"
  }],
  "version" : "0.2.0",
  "name" : "EMSDestinationTypeVS",
  "title" : "EMS Type of Destination",
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
  "description" : "NEMSIS eDisposition.21 - The type of destination the patient was transported to.",
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
        "code" : "4221001",
        "display" : "Home"
      },
      {
        "code" : "4221003",
        "display" : "Hospital-Emergency Department"
      },
      {
        "code" : "4221005",
        "display" : "Hospital-Non-Emergency Department Bed"
      },
      {
        "code" : "4221007",
        "display" : "Clinic"
      },
      {
        "code" : "4221009",
        "display" : "Morgue/Mortuary"
      },
      {
        "code" : "4221013",
        "display" : "Other"
      },
      {
        "code" : "4221015",
        "display" : "Other EMS Responder (air)"
      },
      {
        "code" : "4221017",
        "display" : "Other EMS Responder (ground)"
      },
      {
        "code" : "4221019",
        "display" : "Police/Jail"
      },
      {
        "code" : "4221021",
        "display" : "Urgent Care"
      },
      {
        "code" : "4221023",
        "display" : "Freestanding Emergency Department"
      },
      {
        "code" : "4221025",
        "display" : "Dialysis Center"
      },
      {
        "code" : "4221027",
        "display" : "Diagnostic Services"
      },
      {
        "code" : "4221029",
        "display" : "Assisted Living Facility"
      },
      {
        "code" : "4221031",
        "display" : "Mental Health Facility"
      },
      {
        "code" : "4221033",
        "display" : "Nursing Home"
      },
      {
        "code" : "4221035",
        "display" : "Other Recurring Care Center"
      },
      {
        "code" : "4221037",
        "display" : "Physical Rehabilitation Facility"
      },
      {
        "code" : "4221039",
        "display" : "Drug and/or Alcohol Rehabilitation Facility"
      },
      {
        "code" : "4221041",
        "display" : "Skilled Nursing Facility"
      }]
    }]
  }
}

```
