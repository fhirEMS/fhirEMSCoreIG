# EMS Occupant Safety Equipment VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Occupant Safety Equipment VS**

## ValueSet: EMS Occupant Safety Equipment VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-safety-equipment | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSSafetyEquipmentVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.111 | |

 
Occupant safety equipment in use by the patient at the time of the injury (eInjury.07). 

 **References** 

* [EMS Injury Context](StructureDefinition-ext-ems-injury-context.md)

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
  "id" : "vs-ems-safety-equipment",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-safety-equipment",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.111"
  }],
  "version" : "0.2.0",
  "name" : "EMSSafetyEquipmentVS",
  "title" : "EMS Occupant Safety Equipment VS",
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
  "description" : "Occupant safety equipment in use by the patient at the time of the injury (eInjury.07).",
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
        "code" : "2907001",
        "display" : "Child Booster Seat"
      },
      {
        "code" : "2907003",
        "display" : "Eye Protection"
      },
      {
        "code" : "2907005",
        "display" : "Helmet Worn"
      },
      {
        "code" : "2907007",
        "display" : "Infant Car Seat Forward Facing"
      },
      {
        "code" : "2907009",
        "display" : "Infant Car Seat Rear Facing"
      },
      {
        "code" : "2907015",
        "display" : "None"
      },
      {
        "code" : "2907017",
        "display" : "Other"
      },
      {
        "code" : "2907019",
        "display" : "Personal Floatation Device"
      },
      {
        "code" : "2907021",
        "display" : "Protective Clothing"
      },
      {
        "code" : "2907023",
        "display" : "Protective Non-Clothing Gear"
      },
      {
        "code" : "2907027",
        "display" : "Shoulder and Lap Belt Used"
      },
      {
        "code" : "2907029",
        "display" : "Lap Belt Only Used"
      },
      {
        "code" : "2907031",
        "display" : "Shoulder Belt Only Used"
      },
      {
        "code" : "2907033",
        "display" : "Unable to Determine"
      }]
    }]
  }
}

```
