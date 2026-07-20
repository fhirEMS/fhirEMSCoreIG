# EMS Hospital In-Patient Destination - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Hospital In-Patient Destination**

## ValueSet: EMS Hospital In-Patient Destination 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-hospital-destination | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSHospitalDestinationVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.75 | |

 
NEMSIS eDisposition.22 - The specific in-hospital unit or bed type the patient was delivered to. 

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
  "id" : "vs-ems-hospital-destination",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-hospital-destination",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.75"
  }],
  "version" : "0.2.0",
  "name" : "EMSHospitalDestinationVS",
  "title" : "EMS Hospital In-Patient Destination",
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
  "description" : "NEMSIS eDisposition.22 - The specific in-hospital unit or bed type the patient was delivered to.",
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
        "code" : "4222001",
        "display" : "Hospital-Burn"
      },
      {
        "code" : "4222003",
        "display" : "Hospital-Cath Lab"
      },
      {
        "code" : "4222005",
        "display" : "Hospital-CCU"
      },
      {
        "code" : "4222007",
        "display" : "Hospital-Endoscopy"
      },
      {
        "code" : "4222009",
        "display" : "Hospital-Hospice"
      },
      {
        "code" : "4222011",
        "display" : "Hospital-Hyperbaric Oxygen Treatment"
      },
      {
        "code" : "4222013",
        "display" : "Hospital-ICU"
      },
      {
        "code" : "4222015",
        "display" : "Hospital-Labor and Delivery"
      },
      {
        "code" : "4222017",
        "display" : "Hospital-Med/Surg"
      },
      {
        "code" : "4222019",
        "display" : "Hospital-Mental Health"
      },
      {
        "code" : "4222021",
        "display" : "Hospital-MICU"
      },
      {
        "code" : "4222023",
        "display" : "Hospital-NICU"
      },
      {
        "code" : "4222025",
        "display" : "Hospital-Nursery"
      },
      {
        "code" : "4222027",
        "display" : "Hospital-Peds (General)"
      },
      {
        "code" : "4222029",
        "display" : "Hospital-Peds ICU"
      },
      {
        "code" : "4222031",
        "display" : "Hospital-OR"
      },
      {
        "code" : "4222033",
        "display" : "Hospital-Orthopedic"
      },
      {
        "code" : "4222035",
        "display" : "Hospital-Other"
      },
      {
        "code" : "4222037",
        "display" : "Hospital-Out-Patient Bed"
      },
      {
        "code" : "4222039",
        "display" : "Hospital-Radiology Services - MRI"
      },
      {
        "code" : "4222041",
        "display" : "Hospital-Radiology Services - CT/PET"
      },
      {
        "code" : "4222043",
        "display" : "Hospital-Radiology Services - X-Ray"
      },
      {
        "code" : "4222045",
        "display" : "Hospital-Radiation"
      },
      {
        "code" : "4222047",
        "display" : "Hospital-Rehab"
      },
      {
        "code" : "4222049",
        "display" : "Hospital-SICU"
      },
      {
        "code" : "4222051",
        "display" : "Hospital-Oncology"
      },
      {
        "code" : "4222053",
        "display" : "Hospital-Outpatient Surgery"
      }]
    }]
  }
}

```
