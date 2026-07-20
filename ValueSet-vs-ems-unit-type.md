# EMS Unit Type (ValueSet) - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Unit Type (ValueSet)**

## ValueSet: EMS Unit Type (ValueSet) 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-unit-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSUnitTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.127 | |

 
NEMSIS eResponse.07 - The type of EMS vehicle/unit. 

 **References** 

* [EMS Unit Type](StructureDefinition-ext-ems-unit-type.md)

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
  "id" : "vs-ems-unit-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-unit-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.127"
  }],
  "version" : "0.2.0",
  "name" : "EMSUnitTypeVS",
  "title" : "EMS Unit Type (ValueSet)",
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
  "description" : "NEMSIS eResponse.07 - The type of EMS vehicle/unit.",
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
        "code" : "2207011",
        "display" : "Air Transport-Helicopter"
      },
      {
        "code" : "2207013",
        "display" : "Air Transport-Fixed Wing"
      },
      {
        "code" : "2207015",
        "display" : "Ground Transport (ALS Equipped)"
      },
      {
        "code" : "2207017",
        "display" : "Ground Transport (BLS Equipped)"
      },
      {
        "code" : "2207019",
        "display" : "Ground Transport (Critical Care Equipped)"
      },
      {
        "code" : "2207021",
        "display" : "Non-Transport-Medical Treatment (ALS Equipped)"
      },
      {
        "code" : "2207023",
        "display" : "Non-Transport-Medical Treatment (BLS Equipped)"
      },
      {
        "code" : "2207025",
        "display" : "Wheel Chair Van/Ambulette"
      },
      {
        "code" : "2207027",
        "display" : "Non-Transport-No Medical Equipment"
      }]
    }]
  }
}

```
