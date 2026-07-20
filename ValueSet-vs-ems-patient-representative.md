# EMS PatientRepresentative VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS PatientRepresentative VS**

## ValueSet: EMS PatientRepresentative VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-patient-representative | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSPatientRepresentativeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.144 | |

 
The relationship of the patient representative who signed (eOther.14). 

 **References** 

* [EMS Signature Context](StructureDefinition-ext-ems-signature-context.md)

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
  "id" : "vs-ems-patient-representative",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-patient-representative",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.144"
  }],
  "version" : "0.2.0",
  "name" : "EMSPatientRepresentativeVS",
  "title" : "EMS PatientRepresentative VS",
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
  "description" : "The relationship of the patient representative who signed (eOther.14).",
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
        "code" : "4514001",
        "display" : "Aunt"
      },
      {
        "code" : "4514003",
        "display" : "Brother"
      },
      {
        "code" : "4514005",
        "display" : "Daughter"
      },
      {
        "code" : "4514007",
        "display" : "Discharge Planner"
      },
      {
        "code" : "4514009",
        "display" : "Domestic Partner"
      },
      {
        "code" : "4514011",
        "display" : "Father"
      },
      {
        "code" : "4514013",
        "display" : "Friend"
      },
      {
        "code" : "4514015",
        "display" : "Grandfather"
      },
      {
        "code" : "4514017",
        "display" : "Grandmother"
      },
      {
        "code" : "4514019",
        "display" : "Guardian"
      },
      {
        "code" : "4514021",
        "display" : "Husband"
      },
      {
        "code" : "4514023",
        "display" : "Law Enforcement"
      },
      {
        "code" : "4514025",
        "display" : "MD/DO"
      },
      {
        "code" : "4514027",
        "display" : "Mother"
      },
      {
        "code" : "4514029",
        "display" : "Nurse (RN)"
      },
      {
        "code" : "4514031",
        "display" : "Nurse Practitioner (NP)"
      },
      {
        "code" : "4514033",
        "display" : "Other Care Provider (Home health, hospice, etc.)"
      },
      {
        "code" : "4514035",
        "display" : "Other"
      },
      {
        "code" : "4514037",
        "display" : "Physician's Assistant (PA)"
      },
      {
        "code" : "4514039",
        "display" : "Power of Attorney"
      },
      {
        "code" : "4514041",
        "display" : "Other Relative"
      },
      {
        "code" : "4514043",
        "display" : "Self"
      },
      {
        "code" : "4514045",
        "display" : "Sister"
      },
      {
        "code" : "4514047",
        "display" : "Son"
      },
      {
        "code" : "4514049",
        "display" : "Uncle"
      },
      {
        "code" : "4514051",
        "display" : "Wife"
      }]
    }]
  }
}

```
