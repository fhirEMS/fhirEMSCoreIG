# EMS Eye Assessment - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Eye Assessment**

## ValueSet: EMS Eye Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-eye | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamEyeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.57 | |

 
NEMSIS eExam.18 - Physical findings on eye assessment, including pupil size and reactivity. 

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
  "id" : "vs-ems-exam-eye",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-eye",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.57"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamEyeVS",
  "title" : "EMS Eye Assessment",
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
  "description" : "NEMSIS eExam.18 - Physical findings on eye assessment, including pupil size and reactivity.",
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
        "code" : "3518001",
        "display" : "1-mm"
      },
      {
        "code" : "3518003",
        "display" : "2-mm"
      },
      {
        "code" : "3518005",
        "display" : "3-mm"
      },
      {
        "code" : "3518007",
        "display" : "4-mm"
      },
      {
        "code" : "3518009",
        "display" : "5-mm"
      },
      {
        "code" : "3518011",
        "display" : "6-mm"
      },
      {
        "code" : "3518013",
        "display" : "7-mm"
      },
      {
        "code" : "3518015",
        "display" : "8-mm or >"
      },
      {
        "code" : "3518017",
        "display" : "Blind"
      },
      {
        "code" : "3518019",
        "display" : "Cataract Present"
      },
      {
        "code" : "3518021",
        "display" : "Clouded"
      },
      {
        "code" : "3518023",
        "display" : "Deformity"
      },
      {
        "code" : "3518025",
        "display" : "Dysconjugate Gaze"
      },
      {
        "code" : "3518027",
        "display" : "Foreign Body"
      },
      {
        "code" : "3518029",
        "display" : "Glaucoma Present"
      },
      {
        "code" : "3518031",
        "display" : "Hyphema"
      },
      {
        "code" : "3518033",
        "display" : "Jaundiced Sclera"
      },
      {
        "code" : "3518035",
        "display" : "Missing"
      },
      {
        "code" : "3518037",
        "display" : "Non-Reactive"
      },
      {
        "code" : "3518039",
        "display" : "Not Done"
      },
      {
        "code" : "3518041",
        "display" : "Non-Reactive Prosthetic"
      },
      {
        "code" : "3518043",
        "display" : "Nystagmus Noted"
      },
      {
        "code" : "3518045",
        "display" : "Open Globe"
      },
      {
        "code" : "3518047",
        "display" : "PERRL"
      },
      {
        "code" : "3518049",
        "display" : "Pupil-Irregular/Teardrop"
      },
      {
        "code" : "3518051",
        "display" : "Reactive"
      },
      {
        "code" : "3518053",
        "display" : "Sluggish"
      },
      {
        "code" : "3518055",
        "display" : "Swelling"
      },
      {
        "code" : "3518057",
        "display" : "Contusion"
      },
      {
        "code" : "3518059",
        "display" : "Puncture/Stab Wound"
      },
      {
        "code" : "3518061",
        "display" : "Dilated"
      },
      {
        "code" : "3518063",
        "display" : "Pin Point"
      }]
    }]
  }
}

```
