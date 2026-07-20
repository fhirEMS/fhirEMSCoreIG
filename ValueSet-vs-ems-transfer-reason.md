# EMS Reason for Interfacility Transfer - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Reason for Interfacility Transfer**

## ValueSet: EMS Reason for Interfacility Transfer 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-transfer-reason | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSTransferReasonVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.118 | |

 
NEMSIS eSituation.20 - The clinical reason for an interfacility transfer or transport. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "vs-ems-transfer-reason",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-transfer-reason",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.118"
  }],
  "version" : "0.2.0",
  "name" : "EMSTransferReasonVS",
  "title" : "EMS Reason for Interfacility Transfer",
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
  "description" : "NEMSIS eSituation.20 - The clinical reason for an interfacility transfer or transport.",
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
        "code" : "2820001",
        "display" : "Cardiac Specialty"
      },
      {
        "code" : "2820003",
        "display" : "Convenience Transfer (Patient Request)"
      },
      {
        "code" : "2820005",
        "display" : "Diagnostic Testing"
      },
      {
        "code" : "2820007",
        "display" : "Dialysis"
      },
      {
        "code" : "2820009",
        "display" : "Drug and/or Alcohol Rehabilitation Care"
      },
      {
        "code" : "2820011",
        "display" : "Extended Care"
      },
      {
        "code" : "2820013",
        "display" : "Maternal/Neonatal"
      },
      {
        "code" : "2820015",
        "display" : "Medical Specialty Care (Other, Not Listed)"
      },
      {
        "code" : "2820017",
        "display" : "Neurological Specialty Care"
      },
      {
        "code" : "2820019",
        "display" : "Palliative/Hospice Care (Home or Facility)"
      },
      {
        "code" : "2820021",
        "display" : "Pediatric Specialty Care"
      },
      {
        "code" : "2820023",
        "display" : "Psychiatric/Behavioral Care"
      },
      {
        "code" : "2820025",
        "display" : "Physical Rehabilitation Care"
      },
      {
        "code" : "2820027",
        "display" : "Return to Home/Residence"
      },
      {
        "code" : "2820029",
        "display" : "Surgical Specialty Care (Other, Not Listed)"
      },
      {
        "code" : "2820031",
        "display" : "Trauma/Orthopedic Specialty Care"
      }]
    }]
  }
}

```
