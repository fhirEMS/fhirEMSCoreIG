# EMS Chief Complaint Anatomic Location (ValueSet) - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Chief Complaint Anatomic Location (ValueSet)**

## ValueSet: EMS Chief Complaint Anatomic Location (ValueSet) 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-incident-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSIncidentTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.77 | |

 
NEMSIS eSituation.07 - The anatomic location of the patient's chief complaint. 

 **References** 

* [EMS Chief Complaint Anatomic Location](StructureDefinition-ext-ems-incident-type.md)

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
  "id" : "vs-ems-incident-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-incident-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.77"
  }],
  "version" : "0.2.0",
  "name" : "EMSIncidentTypeVS",
  "title" : "EMS Chief Complaint Anatomic Location (ValueSet)",
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
  "description" : "NEMSIS eSituation.07 - The anatomic location of the patient's chief complaint.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-situation",
      "concept" : [{
        "code" : "2807001",
        "display" : "Abdomen"
      },
      {
        "code" : "2807003",
        "display" : "Back"
      },
      {
        "code" : "2807005",
        "display" : "Chest"
      },
      {
        "code" : "2807007",
        "display" : "Extremity-Lower"
      },
      {
        "code" : "2807009",
        "display" : "Extremity-Upper"
      },
      {
        "code" : "2807011",
        "display" : "General/Global"
      },
      {
        "code" : "2807013",
        "display" : "Genitalia"
      },
      {
        "code" : "2807015",
        "display" : "Head"
      },
      {
        "code" : "2807017",
        "display" : "Neck"
      }]
    }]
  }
}

```
