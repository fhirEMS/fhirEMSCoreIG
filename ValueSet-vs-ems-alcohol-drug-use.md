# EMS Alcohol/Drug Use Indicators VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Alcohol/Drug Use Indicators VS**

## ValueSet: EMS Alcohol/Drug Use Indicators VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-alcohol-drug-use | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSAlcoholDrugUseVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.134 | |

 
Indicators of potential patient alcohol or drug use (eHistory.17). 

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
  "id" : "vs-ems-alcohol-drug-use",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-alcohol-drug-use",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.134"
  }],
  "version" : "0.2.0",
  "name" : "EMSAlcoholDrugUseVS",
  "title" : "EMS Alcohol/Drug Use Indicators VS",
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
  "description" : "Indicators of potential patient alcohol or drug use (eHistory.17).",
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
        "code" : "3117001",
        "display" : "Alcohol Containers/Paraphernalia at Scene"
      },
      {
        "code" : "3117003",
        "display" : "Drug Paraphernalia at Scene"
      },
      {
        "code" : "3117005",
        "display" : "Patient Admits to Alcohol Use"
      },
      {
        "code" : "3117007",
        "display" : "Patient Admits to Drug Use"
      },
      {
        "code" : "3117009",
        "display" : "Positive Level known from Law Enforcement or Hospital Record"
      },
      {
        "code" : "3117013",
        "display" : "Physical Exam Indicates Suspected Alcohol or Drug Use"
      },
      {
        "code" : "3117015",
        "display" : "Bystander/Family Reports Drug Use"
      },
      {
        "code" : "3117017",
        "display" : "Bystander/Family Reports Alcohol Use"
      }]
    }]
  }
}

```
