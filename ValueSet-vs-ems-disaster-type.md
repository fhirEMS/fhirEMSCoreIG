# EMS DisasterType VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS DisasterType VS**

## ValueSet: EMS DisasterType VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-disaster-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSDisasterTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.140 | |

 
Natural, suspected, intentional, or unintentional disaster associated with the event (eOther.07). 

 **References** 

* [EMS Other Context](StructureDefinition-ext-ems-other-context.md)

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
  "id" : "vs-ems-disaster-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-disaster-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.140"
  }],
  "version" : "0.2.0",
  "name" : "EMSDisasterTypeVS",
  "title" : "EMS DisasterType VS",
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
  "description" : "Natural, suspected, intentional, or unintentional disaster associated with the event (eOther.07).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-other",
      "concept" : [{
        "code" : "4507001",
        "display" : "Biologic Agent"
      },
      {
        "code" : "4507003",
        "display" : "Building Failure"
      },
      {
        "code" : "4507005",
        "display" : "Chemical Agent"
      },
      {
        "code" : "4507007",
        "display" : "Explosive Device"
      },
      {
        "code" : "4507009",
        "display" : "Fire"
      },
      {
        "code" : "4507011",
        "display" : "Hostage Event"
      },
      {
        "code" : "4507013",
        "display" : "Mass Gathering"
      },
      {
        "code" : "4507015",
        "display" : "Mass Illness"
      },
      {
        "code" : "4507017",
        "display" : "Nuclear Agent"
      },
      {
        "code" : "4507019",
        "display" : "Radioactive Device"
      },
      {
        "code" : "4507021",
        "display" : "Secondary Destructive Device"
      },
      {
        "code" : "4507023",
        "display" : "Shooting/Sniper"
      },
      {
        "code" : "4507025",
        "display" : "Vehicular"
      },
      {
        "code" : "4507027",
        "display" : "Weather (Other)"
      },
      {
        "code" : "4507029",
        "display" : "Earthquake"
      },
      {
        "code" : "4507031",
        "display" : "Flood"
      },
      {
        "code" : "4507033",
        "display" : "Land Slide"
      },
      {
        "code" : "4507035",
        "display" : "Winter Storm"
      },
      {
        "code" : "4507037",
        "display" : "Tornado"
      },
      {
        "code" : "4507039",
        "display" : "Hurricane"
      }]
    }]
  }
}

```
