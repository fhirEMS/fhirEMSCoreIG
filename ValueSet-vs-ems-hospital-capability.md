# EMS Hospital Capability - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Hospital Capability**

## ValueSet: EMS Hospital Capability 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-hospital-capability | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSHospitalCapabilityVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.74 | |

 
NEMSIS eDisposition.23 - Specialty capabilities of the receiving facility. 

 **References** 

* [EMS Destination Details](StructureDefinition-ext-ems-destination-details.md)

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
  "id" : "vs-ems-hospital-capability",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-hospital-capability",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.74"
  }],
  "version" : "0.2.0",
  "name" : "EMSHospitalCapabilityVS",
  "title" : "EMS Hospital Capability",
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
  "description" : "NEMSIS eDisposition.23 - Specialty capabilities of the receiving facility.",
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
        "code" : "9908001",
        "display" : "Behavioral Health"
      },
      {
        "code" : "9908003",
        "display" : "Burn Center"
      },
      {
        "code" : "9908005",
        "display" : "Critical Access Hospital"
      },
      {
        "code" : "9908007",
        "display" : "Hospital (General)"
      },
      {
        "code" : "9908009",
        "display" : "Neonatal Center"
      },
      {
        "code" : "9908011",
        "display" : "Pediatric Center"
      },
      {
        "code" : "9908019",
        "display" : "Rehab Center"
      },
      {
        "code" : "9908021",
        "display" : "Trauma Center Level 1"
      },
      {
        "code" : "9908023",
        "display" : "Trauma Center Level 2"
      },
      {
        "code" : "9908025",
        "display" : "Trauma Center Level 3"
      },
      {
        "code" : "9908027",
        "display" : "Trauma Center Level 4"
      },
      {
        "code" : "9908029",
        "display" : "Trauma Center Level 5"
      },
      {
        "code" : "9908031",
        "display" : "Cardiac-STEMI/PCI Capable"
      },
      {
        "code" : "9908033",
        "display" : "Cardiac-STEMI/PCI Capable (24/7)"
      },
      {
        "code" : "9908035",
        "display" : "Cardiac-STEMI/Non-PCI Capable"
      },
      {
        "code" : "9908037",
        "display" : "Stroke-Acute Stroke Ready Hospital (ASRH)"
      },
      {
        "code" : "9908039",
        "display" : "Stroke-Primary Stroke Center (PSC)"
      },
      {
        "code" : "9908041",
        "display" : "Stroke-Thrombectomy-Capable Stroke Center (TSC)"
      },
      {
        "code" : "9908043",
        "display" : "Stroke-Comprehensive Stroke Center (CSC)"
      },
      {
        "code" : "9908045",
        "display" : "Cancer Center"
      },
      {
        "code" : "9908047",
        "display" : "Labor and Delivery"
      }]
    }]
  }
}

```
