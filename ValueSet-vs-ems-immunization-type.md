# EMS Immunization Type VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Immunization Type VS**

## ValueSet: EMS Immunization Type VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-immunization-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSImmunizationTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.132 | |

 
The patient's immunization history type (eHistory.10). 

 **References** 

* [EMS History Context](StructureDefinition-ext-ems-history-context.md)

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
  "id" : "vs-ems-immunization-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-immunization-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.132"
  }],
  "version" : "0.2.0",
  "name" : "EMSImmunizationTypeVS",
  "title" : "EMS Immunization Type VS",
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
  "description" : "The patient's immunization history type (eHistory.10).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-history",
      "concept" : [{
        "code" : "9910001",
        "display" : "Anthrax"
      },
      {
        "code" : "9910003",
        "display" : "Cholera"
      },
      {
        "code" : "9910005",
        "display" : "DPT / TDaP (Diphtheria, Pertussis, Tetanus)"
      },
      {
        "code" : "9910007",
        "display" : "Hemophilus Influenza B"
      },
      {
        "code" : "9910009",
        "display" : "Hepatitis A"
      },
      {
        "code" : "9910011",
        "display" : "Hepatitis B"
      },
      {
        "code" : "9910013",
        "display" : "Human Papilloma Virus (HPV)"
      },
      {
        "code" : "9910015",
        "display" : "Influenza-H1N1"
      },
      {
        "code" : "9910017",
        "display" : "Influenza-Other"
      },
      {
        "code" : "9910019",
        "display" : "Influenza-Seasonal (In past 12 months)"
      },
      {
        "code" : "9910021",
        "display" : "Lyme Disease"
      },
      {
        "code" : "9910023",
        "display" : "Meningococcus"
      },
      {
        "code" : "9910025",
        "display" : "MMR (Measles, Mumps, Rubella)"
      },
      {
        "code" : "9910027",
        "display" : "Other-Not Listed"
      },
      {
        "code" : "9910029",
        "display" : "Plague"
      },
      {
        "code" : "9910031",
        "display" : "Pneumococcal (Pneumonia)"
      },
      {
        "code" : "9910033",
        "display" : "Polio"
      },
      {
        "code" : "9910035",
        "display" : "Rabies"
      },
      {
        "code" : "9910037",
        "display" : "Rotavirus"
      },
      {
        "code" : "9910039",
        "display" : "Shingles"
      },
      {
        "code" : "9910041",
        "display" : "Small Pox"
      },
      {
        "code" : "9910043",
        "display" : "Tetanus"
      },
      {
        "code" : "9910045",
        "display" : "Tuberculosis"
      },
      {
        "code" : "9910047",
        "display" : "Typhoid"
      },
      {
        "code" : "9910049",
        "display" : "Varicella (Chickenpox)"
      },
      {
        "code" : "9910051",
        "display" : "Yellow Fever"
      },
      {
        "code" : "9910053",
        "display" : "None"
      }]
    }]
  }
}

```
