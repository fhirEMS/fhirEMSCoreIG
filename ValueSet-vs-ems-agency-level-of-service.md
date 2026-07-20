# EMS Agency Level of Service - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Agency Level of Service**

## ValueSet: EMS Agency Level of Service 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-level-of-service | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSAgencyLevelOfServiceVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.6 | |

 
NEMSIS dAgency.11 - The highest level of care the EMS agency is licensed/certified to provide. 

 **References** 

* [EMS Agency Details](StructureDefinition-ext-ems-agency-details.md)

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
  "id" : "vs-ems-agency-level-of-service",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-level-of-service",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.6"
  }],
  "version" : "0.2.0",
  "name" : "EMSAgencyLevelOfServiceVS",
  "title" : "EMS Agency Level of Service",
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
  "description" : "NEMSIS dAgency.11 - The highest level of care the EMS agency is licensed/certified to provide.",
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
        "code" : "9917001",
        "display" : "Advanced Emergency Medical Technician (AEMT)"
      },
      {
        "code" : "9917002",
        "display" : "Emergency Medical Technician - Intermediate"
      },
      {
        "code" : "9917003",
        "display" : "Emergency Medical Responder (EMR)"
      },
      {
        "code" : "9917005",
        "display" : "Emergency Medical Technician (EMT)"
      },
      {
        "code" : "9917007",
        "display" : "Paramedic"
      },
      {
        "code" : "9917019",
        "display" : "Physician"
      },
      {
        "code" : "9917021",
        "display" : "Critical Care Paramedic"
      },
      {
        "code" : "9917023",
        "display" : "Community Paramedicine"
      },
      {
        "code" : "9917025",
        "display" : "Nurse Practitioner"
      },
      {
        "code" : "9917027",
        "display" : "Physician Assistant"
      },
      {
        "code" : "9917029",
        "display" : "Licensed Practical Nurse (LPN)"
      },
      {
        "code" : "9917031",
        "display" : "Registered Nurse"
      }]
    }]
  }
}

```
