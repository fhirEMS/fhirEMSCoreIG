# EMS Airway Failure Reasons VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Airway Failure Reasons VS**

## ValueSet: EMS Airway Failure Reasons VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-failure-reasons | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSAirwayFailureReasonsVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.15 | |

 
Reasons for failed airway management (eAirway.09). 

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
  "id" : "vs-ems-airway-failure-reasons",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-failure-reasons",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.15"
  }],
  "version" : "0.2.0",
  "name" : "EMSAirwayFailureReasonsVS",
  "title" : "EMS Airway Failure Reasons VS",
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
  "description" : "Reasons for failed airway management (eAirway.09).",
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
        "code" : "4009001",
        "display" : "Difficult Patient Airway Anatomy"
      },
      {
        "code" : "4009003",
        "display" : "ETI Attempted, but Arrived At Destination Facility Before Accomplished"
      },
      {
        "code" : "4009005",
        "display" : "Facial or Oral Trauma"
      },
      {
        "code" : "4009007",
        "display" : "Inability to Expose Vocal Cords"
      },
      {
        "code" : "4009009",
        "display" : "Inadequate Patient Relaxation/Presence of Protective Airway Reflexes"
      },
      {
        "code" : "4009011",
        "display" : "Jaw Clenched (Trismus)"
      },
      {
        "code" : "4009013",
        "display" : "Other"
      },
      {
        "code" : "4009015",
        "display" : "Poor Patient Access"
      },
      {
        "code" : "4009017",
        "display" : "Secretions/Blood/Vomit"
      },
      {
        "code" : "4009019",
        "display" : "Unable to Position or Access Patient"
      }]
    }]
  }
}

```
