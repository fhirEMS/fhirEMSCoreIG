# EMS Alternate Home Residence - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Alternate Home Residence**

## ValueSet: EMS Alternate Home Residence 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-alternate-residence | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSAlternateResidenceVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.18 | |

 
NEMSIS ePatient.22 - Codes describing a patient's alternate home residence situation when a standard home address is not applicable. 

 **References** 

* [Alternate Home Residence](StructureDefinition-ext-ems-alternate-residence.md)

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
  "id" : "vs-ems-alternate-residence",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-alternate-residence",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.18"
  }],
  "version" : "0.2.0",
  "name" : "EMSAlternateResidenceVS",
  "title" : "EMS Alternate Home Residence",
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
  "description" : "NEMSIS ePatient.22 - Codes describing a patient's alternate home residence situation when a standard home address is not applicable.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/nemsis-patient",
      "concept" : [{
        "code" : "2522001",
        "display" : "Homeless"
      },
      {
        "code" : "2522003",
        "display" : "Migrant Worker"
      },
      {
        "code" : "2522005",
        "display" : "Foreign Visitor"
      }]
    }]
  }
}

```
