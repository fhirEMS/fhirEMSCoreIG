# EMS WorkInjuryExposure VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS WorkInjuryExposure VS**

## ValueSet: EMS WorkInjuryExposure VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-work-injury-exposure | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSWorkInjuryExposureVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.139 | |

 
Type of crew work-related injury, death, or suspected exposure (eOther.06). 

 **References** 

* [EMS Crew Safety](StructureDefinition-ext-ems-crew-safety.md)

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
  "id" : "vs-ems-work-injury-exposure",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-work-injury-exposure",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.139"
  }],
  "version" : "0.2.0",
  "name" : "EMSWorkInjuryExposureVS",
  "title" : "EMS WorkInjuryExposure VS",
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
  "description" : "Type of crew work-related injury, death, or suspected exposure (eOther.06).",
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
        "code" : "4506001",
        "display" : "Death-Cardiac Arrest"
      },
      {
        "code" : "4506003",
        "display" : "Death-Injury Related"
      },
      {
        "code" : "4506005",
        "display" : "Death-Other"
      },
      {
        "code" : "4506007",
        "display" : "Exposure-Airborne Respiratory/Biological/Aerosolized Secretions"
      },
      {
        "code" : "4506009",
        "display" : "Exposure-Body Fluid Contact to Broken Skin"
      },
      {
        "code" : "4506011",
        "display" : "Exposure-Body Fluid Contact with Eye"
      },
      {
        "code" : "4506013",
        "display" : "Exposure-Body Fluid Contact with Intact Skin"
      },
      {
        "code" : "4506015",
        "display" : "Exposure-Body Fluid Contact with Mucosal Surface"
      },
      {
        "code" : "4506017",
        "display" : "Exposure-Needle Stick with Body Fluid Injection"
      },
      {
        "code" : "4506019",
        "display" : "Exposure-Needle Stick without Body Fluid Injection"
      },
      {
        "code" : "4506021",
        "display" : "Exposure-Toxin/Chemical/Hazmat"
      },
      {
        "code" : "4506023",
        "display" : "Injury-Lifting/Back/Musculoskeletal"
      },
      {
        "code" : "4506025",
        "display" : "Injury-Other"
      },
      {
        "code" : "4506027",
        "display" : "None"
      },
      {
        "code" : "4506029",
        "display" : "Other"
      },
      {
        "code" : "4506031",
        "display" : "Violence-Offensive, Intimidating, or Hateful Language"
      },
      {
        "code" : "4506033",
        "display" : "Violence-Physical Threat, or Threatening Behavior"
      },
      {
        "code" : "4506035",
        "display" : "Violence-Physical Attack or Attempt to Attack"
      },
      {
        "code" : "4506037",
        "display" : "Violence-Unwelcome Sexual Attention, Remarks, Jokes or Gestures"
      },
      {
        "code" : "4506039",
        "display" : "Violence-Unwanted Touching of a Sexual Nature"
      },
      {
        "code" : "4506041",
        "display" : "Struck by Vehicle Along Roadway"
      }]
    }]
  }
}

```
