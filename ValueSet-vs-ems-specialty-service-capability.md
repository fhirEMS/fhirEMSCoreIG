# EMS SpecialtyServiceCapability VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS SpecialtyServiceCapability VS**

## ValueSet: EMS SpecialtyServiceCapability VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-specialty-service-capability | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSSpecialtyServiceCapabilityVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.150 | |

 
EMS agency specialty service capabilities (dConfiguration.11). 

 **References** 

* [EMS Agency Configuration](StructureDefinition-ext-ems-agency-configuration.md)

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
  "id" : "vs-ems-specialty-service-capability",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-specialty-service-capability",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.150"
  }],
  "version" : "0.2.0",
  "name" : "EMSSpecialtyServiceCapabilityVS",
  "title" : "EMS SpecialtyServiceCapability VS",
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
  "description" : "EMS agency specialty service capabilities (dConfiguration.11).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-demographics",
      "concept" : [{
        "code" : "1211001",
        "display" : "Air Rescue"
      },
      {
        "code" : "1211003",
        "display" : "CBRNE"
      },
      {
        "code" : "1211005",
        "display" : "Community Health Medicine"
      },
      {
        "code" : "1211007",
        "display" : "Disaster Medical Assistance Team (DMAT)"
      },
      {
        "code" : "1211009",
        "display" : "Disaster Mortuary (DMORT)"
      },
      {
        "code" : "1211011",
        "display" : "Dive Rescue"
      },
      {
        "code" : "1211013",
        "display" : "Farm Rescue"
      },
      {
        "code" : "1211015",
        "display" : "High Angle Rescue"
      },
      {
        "code" : "1211017",
        "display" : "Machinery Disentanglement"
      },
      {
        "code" : "1211019",
        "display" : "None"
      },
      {
        "code" : "1211021",
        "display" : "Ski / Snow Rescue"
      },
      {
        "code" : "1211023",
        "display" : "Tactical EMS"
      },
      {
        "code" : "1211025",
        "display" : "Trench / Confined Space Rescue"
      },
      {
        "code" : "1211027",
        "display" : "Urban Search and Rescue (USAR)"
      },
      {
        "code" : "1211029",
        "display" : "Vehicle Extrication"
      },
      {
        "code" : "1211031",
        "display" : "Veterinary Medical Assistance Team (VMAT)"
      },
      {
        "code" : "1211033",
        "display" : "Water or Ice Related Rescue (Incl Swift Water)"
      },
      {
        "code" : "1211035",
        "display" : "Wilderness Search and Rescue"
      }]
    }]
  }
}

```
