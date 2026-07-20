# EMS Certification Level (ValueSet) - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Certification Level (ValueSet)**

## ValueSet: EMS Certification Level (ValueSet) 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-certification-level | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSCertificationLevelVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.32 | |

 
NEMSIS eCrew.02 - The certification/licensure level of the EMS crew member. 

 **References** 

* [EMS Practitioner](StructureDefinition-ems-practitioner.md)
* [EMS Agency Configuration](StructureDefinition-ext-ems-agency-configuration.md)
* [EMS Certification Level](StructureDefinition-ext-ems-certification-level.md)

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
  "id" : "vs-ems-certification-level",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-certification-level",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.32"
  }],
  "version" : "0.2.0",
  "name" : "EMSCertificationLevelVS",
  "title" : "EMS Certification Level (ValueSet)",
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
  "description" : "NEMSIS eCrew.02 - The certification/licensure level of the EMS crew member.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-personnel-level",
      "concept" : [{
        "code" : "9925001",
        "display" : "Advanced Emergency Medical Technician (AEMT)"
      },
      {
        "code" : "9925002",
        "display" : "Emergency Medical Technician - Intermediate"
      },
      {
        "code" : "9925003",
        "display" : "Emergency Medical Responder (EMR)"
      },
      {
        "code" : "9925005",
        "display" : "Emergency Medical Technician (EMT)"
      },
      {
        "code" : "9925007",
        "display" : "Paramedic"
      },
      {
        "code" : "9925023",
        "display" : "Other Healthcare Professional"
      },
      {
        "code" : "9925025",
        "display" : "Other Non-Healthcare Professional"
      },
      {
        "code" : "9925027",
        "display" : "Physician"
      },
      {
        "code" : "9925029",
        "display" : "Respiratory Therapist"
      },
      {
        "code" : "9925031",
        "display" : "Student"
      },
      {
        "code" : "9925033",
        "display" : "Critical Care Paramedic"
      },
      {
        "code" : "9925035",
        "display" : "Community Paramedicine"
      },
      {
        "code" : "9925037",
        "display" : "Nurse Practitioner"
      },
      {
        "code" : "9925039",
        "display" : "Physician Assistant"
      },
      {
        "code" : "9925041",
        "display" : "Licensed Practical Nurse (LPN)"
      },
      {
        "code" : "9925043",
        "display" : "Registered Nurse"
      }]
    }]
  }
}

```
