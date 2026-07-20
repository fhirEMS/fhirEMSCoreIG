# EMS Neurological Assessment - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Neurological Assessment**

## ValueSet: EMS Neurological Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-neurological | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamNeurologicalVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.67 | |

 
NEMSIS eExam.20 - Neurological assessment findings including strength, speech, coordination, and seizures. 

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
  "id" : "vs-ems-exam-neurological",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-neurological",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.67"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamNeurologicalVS",
  "title" : "EMS Neurological Assessment",
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
  "description" : "NEMSIS eExam.20 - Neurological assessment findings including strength, speech, coordination, and seizures.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-exam",
      "concept" : [{
        "code" : "3520001",
        "display" : "Aphagia"
      },
      {
        "code" : "3520003",
        "display" : "Aphasia"
      },
      {
        "code" : "3520005",
        "display" : "Cerebellar Function-Abnormal"
      },
      {
        "code" : "3520007",
        "display" : "Cerebellar Function-Normal"
      },
      {
        "code" : "3520009",
        "display" : "Decerebrate Posturing"
      },
      {
        "code" : "3520011",
        "display" : "Decorticate Posturing"
      },
      {
        "code" : "3520013",
        "display" : "Gait-Abnormal"
      },
      {
        "code" : "3520015",
        "display" : "Gait-Normal"
      },
      {
        "code" : "3520017",
        "display" : "Hemiplegia-Left"
      },
      {
        "code" : "3520019",
        "display" : "Hemiplegia-Right"
      },
      {
        "code" : "3520021",
        "display" : "Normal Baseline for Patient"
      },
      {
        "code" : "3520023",
        "display" : "Not Done"
      },
      {
        "code" : "3520026",
        "display" : "Status Seizure"
      },
      {
        "code" : "3520027",
        "display" : "Speech Normal"
      },
      {
        "code" : "3520029",
        "display" : "Speech Slurring"
      },
      {
        "code" : "3520031",
        "display" : "Strength-Asymmetric"
      },
      {
        "code" : "3520033",
        "display" : "Strength-Normal"
      },
      {
        "code" : "3520035",
        "display" : "Strength-Symmetric"
      },
      {
        "code" : "3520037",
        "display" : "Tremors"
      },
      {
        "code" : "3520039",
        "display" : "Weakness-Facial Droop-Left"
      },
      {
        "code" : "3520041",
        "display" : "Weakness-Facial Droop-Right"
      },
      {
        "code" : "3520043",
        "display" : "Weakness-Left Sided"
      },
      {
        "code" : "3520045",
        "display" : "Weakness-Right Sided"
      },
      {
        "code" : "3520051",
        "display" : "Arm Drift-Left"
      },
      {
        "code" : "3520053",
        "display" : "Arm Drift-Right"
      },
      {
        "code" : "3520055",
        "display" : "Other Seizures"
      }]
    }]
  }
}

```
