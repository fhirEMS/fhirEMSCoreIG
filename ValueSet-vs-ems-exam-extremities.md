# EMS Extremities Assessment - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Extremities Assessment**

## ValueSet: EMS Extremities Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-extremities | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamExtremitiesVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.55 | |

 
NEMSIS eExam.16 - Physical findings on extremities assessment. 

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
  "id" : "vs-ems-exam-extremities",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-extremities",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.55"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamExtremitiesVS",
  "title" : "EMS Extremities Assessment",
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
  "description" : "NEMSIS eExam.16 - Physical findings on extremities assessment.",
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
        "code" : "3516001",
        "display" : "Abrasion"
      },
      {
        "code" : "3516003",
        "display" : "Amputation-Acute"
      },
      {
        "code" : "3516005",
        "display" : "Amputation-Previous"
      },
      {
        "code" : "3516007",
        "display" : "Avulsion"
      },
      {
        "code" : "3516009",
        "display" : "Bleeding Controlled"
      },
      {
        "code" : "3516011",
        "display" : "Bleeding Uncontrolled"
      },
      {
        "code" : "3516013",
        "display" : "Burn-Blistering"
      },
      {
        "code" : "3516015",
        "display" : "Burn-Charring"
      },
      {
        "code" : "3516017",
        "display" : "Burn-Redness"
      },
      {
        "code" : "3516019",
        "display" : "Burn-White/Waxy"
      },
      {
        "code" : "3516021",
        "display" : "Clubbing (of fingers)"
      },
      {
        "code" : "3516023",
        "display" : "Crush Injury"
      },
      {
        "code" : "3516025",
        "display" : "Deformity"
      },
      {
        "code" : "3516027",
        "display" : "Dislocation"
      },
      {
        "code" : "3516029",
        "display" : "Edema"
      },
      {
        "code" : "3516031",
        "display" : "Foreign Body"
      },
      {
        "code" : "3516033",
        "display" : "Fracture-Closed"
      },
      {
        "code" : "3516035",
        "display" : "Fracture-Open"
      },
      {
        "code" : "3516041",
        "display" : "Laceration"
      },
      {
        "code" : "3516043",
        "display" : "Motor Function-Abnormal/Weakness"
      },
      {
        "code" : "3516045",
        "display" : "Motor Function-Absent"
      },
      {
        "code" : "3516047",
        "display" : "Motor Function-Normal"
      },
      {
        "code" : "3516049",
        "display" : "Normal"
      },
      {
        "code" : "3516051",
        "display" : "Not Done"
      },
      {
        "code" : "3516053",
        "display" : "Pain"
      },
      {
        "code" : "3516055",
        "display" : "Paralysis"
      },
      {
        "code" : "3516057",
        "display" : "Pulse-Abnormal"
      },
      {
        "code" : "3516059",
        "display" : "Pulse-Absent"
      },
      {
        "code" : "3516061",
        "display" : "Pulse-Normal"
      },
      {
        "code" : "3516063",
        "display" : "Puncture/Stab Wound"
      },
      {
        "code" : "3516065",
        "display" : "Sensation-Abnormal"
      },
      {
        "code" : "3516067",
        "display" : "Sensation-Absent"
      },
      {
        "code" : "3516069",
        "display" : "Sensation-Normal"
      },
      {
        "code" : "3516075",
        "display" : "Tenderness"
      },
      {
        "code" : "3516077",
        "display" : "Gunshot Wound"
      },
      {
        "code" : "3516079",
        "display" : "Swelling"
      },
      {
        "code" : "3516081",
        "display" : "Contusion"
      },
      {
        "code" : "3516083",
        "display" : "Arm Drift"
      },
      {
        "code" : "3516085",
        "display" : "Cool/Cold to Touch"
      },
      {
        "code" : "3516087",
        "display" : "Cyanosis"
      },
      {
        "code" : "3516089",
        "display" : "Erythema/Flushing"
      },
      {
        "code" : "3516091",
        "display" : "Hot/Warm to Touch"
      },
      {
        "code" : "3516093",
        "display" : "Lividity"
      },
      {
        "code" : "3516095",
        "display" : "Mottled"
      },
      {
        "code" : "3516097",
        "display" : "Pale"
      }]
    }]
  }
}

```
