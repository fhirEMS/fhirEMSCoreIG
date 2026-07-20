# EMS RegistryCandidate VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS RegistryCandidate VS**

## ValueSet: EMS RegistryCandidate VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-registry-candidate | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSRegistryCandidateVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.137 | |

 
Potential system of care, specialty, or registry candidacy for the patient (eOther.02). 

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
  "id" : "vs-ems-registry-candidate",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-registry-candidate",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.137"
  }],
  "version" : "0.2.0",
  "name" : "EMSRegistryCandidateVS",
  "title" : "EMS RegistryCandidate VS",
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
  "description" : "Potential system of care, specialty, or registry candidacy for the patient (eOther.02).",
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
        "code" : "4502001",
        "display" : "Airway"
      },
      {
        "code" : "4502003",
        "display" : "Burn"
      },
      {
        "code" : "4502005",
        "display" : "Cardiac/MI"
      },
      {
        "code" : "4502007",
        "display" : "CVA/Stroke"
      },
      {
        "code" : "4502009",
        "display" : "Drowning"
      },
      {
        "code" : "4502011",
        "display" : "Other"
      },
      {
        "code" : "4502013",
        "display" : "Spinal Cord Injury"
      },
      {
        "code" : "4502015",
        "display" : "STEMI/Acute Cardiac"
      },
      {
        "code" : "4502017",
        "display" : "Trauma"
      },
      {
        "code" : "4502019",
        "display" : "Traumatic Brain Injury"
      }]
    }]
  }
}

```
