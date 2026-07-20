# EMS CPR Type VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS CPR Type VS**

## ValueSet: EMS CPR Type VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-cpr-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSCPRTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.36 | |

 
Type of CPR care provided prior to EMS arrival (eArrest.09). 

 **References** 

* [EMS Cardiac Arrest Context](StructureDefinition-ext-ems-arrest-context.md)

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
  "id" : "vs-ems-cpr-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-cpr-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.36"
  }],
  "version" : "0.2.0",
  "name" : "EMSCPRTypeVS",
  "title" : "EMS CPR Type VS",
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
  "description" : "Type of CPR care provided prior to EMS arrival (eArrest.09).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
      "concept" : [{
        "code" : "3009001",
        "display" : "Compressions-Manual"
      },
      {
        "code" : "3009003",
        "display" : "Compressions-External Band Type Device"
      },
      {
        "code" : "3009005",
        "display" : "Compressions-External Plunger Type Device"
      },
      {
        "code" : "3009007",
        "display" : "Compressions-External Thumper Type Device"
      },
      {
        "code" : "3009009",
        "display" : "Compressions-Intermittent with Ventilation"
      },
      {
        "code" : "3009011",
        "display" : "Compressions-Other Device"
      },
      {
        "code" : "3009013",
        "display" : "Ventilation-Bag Valve Mask"
      },
      {
        "code" : "3009015",
        "display" : "Ventilation-Impedance Threshold Device"
      },
      {
        "code" : "3009017",
        "display" : "Ventilation-Mouth to Mouth"
      },
      {
        "code" : "3009019",
        "display" : "Ventilation-Pocket Mask"
      },
      {
        "code" : "3009023",
        "display" : "Ventilation-with OPA/NPA"
      },
      {
        "code" : "3009025",
        "display" : "Ventilation-Advanced Airway Device"
      },
      {
        "code" : "3009027",
        "display" : "Ventilation-Passive Ventilation with Oxygen"
      }]
    }]
  }
}

```
