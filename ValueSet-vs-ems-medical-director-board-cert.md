# EMS MedicalDirectorBoardCert VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS MedicalDirectorBoardCert VS**

## ValueSet: EMS MedicalDirectorBoardCert VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medical-director-board-cert | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSMedicalDirectorBoardCertVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.148 | |

 
The agency medical director board certification type (dContact.14). 

 **References** 

* [EMS Agency Medical Director](StructureDefinition-ext-ems-medical-director.md)

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
  "id" : "vs-ems-medical-director-board-cert",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medical-director-board-cert",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.148"
  }],
  "version" : "0.2.0",
  "name" : "EMSMedicalDirectorBoardCertVS",
  "title" : "EMS MedicalDirectorBoardCert VS",
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
  "description" : "The agency medical director board certification type (dContact.14).",
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
        "code" : "1114001",
        "display" : "Allergy and Immunology"
      },
      {
        "code" : "1114003",
        "display" : "Anesthesiology"
      },
      {
        "code" : "1114005",
        "display" : "Colon and Rectal Surgery"
      },
      {
        "code" : "1114007",
        "display" : "Dermatology"
      },
      {
        "code" : "1114009",
        "display" : "Emergency Medicine"
      },
      {
        "code" : "1114011",
        "display" : "Family Medicine"
      },
      {
        "code" : "1114013",
        "display" : "Internal Medicine"
      },
      {
        "code" : "1114015",
        "display" : "Neurological Surgery"
      },
      {
        "code" : "1114017",
        "display" : "Neurology"
      },
      {
        "code" : "1114019",
        "display" : "None (Not Board Certified)"
      },
      {
        "code" : "1114021",
        "display" : "Obstetrics and Gynecology"
      },
      {
        "code" : "1114023",
        "display" : "Ophthalmology"
      },
      {
        "code" : "1114025",
        "display" : "Orthopedic Surgery"
      },
      {
        "code" : "1114027",
        "display" : "Otolaryngology"
      },
      {
        "code" : "1114029",
        "display" : "Pediatrics"
      },
      {
        "code" : "1114031",
        "display" : "Physical Medicine and Rehabilitation"
      },
      {
        "code" : "1114033",
        "display" : "Plastic Surgery"
      },
      {
        "code" : "1114035",
        "display" : "Psychiatry"
      },
      {
        "code" : "1114037",
        "display" : "Surgery"
      },
      {
        "code" : "1114039",
        "display" : "Thoracic Surgery"
      },
      {
        "code" : "1114041",
        "display" : "Urology"
      },
      {
        "code" : "1114043",
        "display" : "Vascular Surgery"
      }]
    }]
  }
}

```
