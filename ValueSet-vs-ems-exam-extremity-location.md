# EMS Extremity Assessment Finding Location - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Extremity Assessment Finding Location**

## ValueSet: EMS Extremity Assessment Finding Location 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-extremity-location | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExamExtremityLocationVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.56 | |

 
NEMSIS eExam.15 - Location qualifier for extremity assessment findings. 

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
  "id" : "vs-ems-exam-extremity-location",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-exam-extremity-location",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.56"
  }],
  "version" : "0.2.0",
  "name" : "EMSExamExtremityLocationVS",
  "title" : "EMS Extremity Assessment Finding Location",
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
  "description" : "NEMSIS eExam.15 - Location qualifier for extremity assessment findings.",
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
        "code" : "3515001",
        "display" : "Ankle-Left"
      },
      {
        "code" : "3515003",
        "display" : "Ankle-Right"
      },
      {
        "code" : "3515005",
        "display" : "Arm-Upper-Left"
      },
      {
        "code" : "3515007",
        "display" : "Arm-Upper-Right"
      },
      {
        "code" : "3515009",
        "display" : "Elbow-Left"
      },
      {
        "code" : "3515011",
        "display" : "Elbow-Right"
      },
      {
        "code" : "3515013",
        "display" : "Finger-2nd (Index)-Left"
      },
      {
        "code" : "3515015",
        "display" : "Finger-2nd (Index)-Right"
      },
      {
        "code" : "3515017",
        "display" : "Finger-3rd (Middle)-Left"
      },
      {
        "code" : "3515019",
        "display" : "Finger-3rd (Middle)-Right"
      },
      {
        "code" : "3515021",
        "display" : "Finger-4th (Ring)-Left"
      },
      {
        "code" : "3515023",
        "display" : "Finger-4th (Ring)-Right"
      },
      {
        "code" : "3515025",
        "display" : "Finger-5th (Smallest)-Left"
      },
      {
        "code" : "3515027",
        "display" : "Finger-5th (Smallest)-Right"
      },
      {
        "code" : "3515029",
        "display" : "Foot-Dorsal-Left"
      },
      {
        "code" : "3515031",
        "display" : "Foot-Dorsal-Right"
      },
      {
        "code" : "3515033",
        "display" : "Foot-Plantar-Left"
      },
      {
        "code" : "3515035",
        "display" : "Foot-Plantar-Right"
      },
      {
        "code" : "3515037",
        "display" : "Arm-Lower-Left"
      },
      {
        "code" : "3515039",
        "display" : "Arm-Lower-Right"
      },
      {
        "code" : "3515041",
        "display" : "Hand-Dorsal-Left"
      },
      {
        "code" : "3515043",
        "display" : "Hand-Dorsal-Right"
      },
      {
        "code" : "3515045",
        "display" : "Hand-Palm-Left"
      },
      {
        "code" : "3515047",
        "display" : "Hand-Palm-Right"
      },
      {
        "code" : "3515049",
        "display" : "Hip-Left"
      },
      {
        "code" : "3515051",
        "display" : "Hip-Right"
      },
      {
        "code" : "3515053",
        "display" : "Knee-Left"
      },
      {
        "code" : "3515055",
        "display" : "Knee-Right"
      },
      {
        "code" : "3515057",
        "display" : "Leg-Lower-Left"
      },
      {
        "code" : "3515059",
        "display" : "Leg-Lower-Right"
      },
      {
        "code" : "3515061",
        "display" : "Leg-Upper-Left"
      },
      {
        "code" : "3515063",
        "display" : "Leg-Upper-Right"
      },
      {
        "code" : "3515065",
        "display" : "Shoulder-Left"
      },
      {
        "code" : "3515067",
        "display" : "Shoulder-Right"
      },
      {
        "code" : "3515069",
        "display" : "Thumb-Left"
      },
      {
        "code" : "3515071",
        "display" : "Thumb-Right"
      },
      {
        "code" : "3515073",
        "display" : "Toe-1st (Big)-Left"
      },
      {
        "code" : "3515075",
        "display" : "Toe-1st (Big)-Right"
      },
      {
        "code" : "3515077",
        "display" : "Toe-2nd-Left"
      },
      {
        "code" : "3515079",
        "display" : "Toe-2nd-Right"
      },
      {
        "code" : "3515081",
        "display" : "Toe-3rd-Left"
      },
      {
        "code" : "3515083",
        "display" : "Toe-3rd-Right"
      },
      {
        "code" : "3515085",
        "display" : "Toe-4th-Left"
      },
      {
        "code" : "3515087",
        "display" : "Toe-4th-Right"
      },
      {
        "code" : "3515089",
        "display" : "Toe-5th (Smallest)-Left"
      },
      {
        "code" : "3515091",
        "display" : "Toe-5th (Smallest)-Right"
      },
      {
        "code" : "3515093",
        "display" : "Wrist-Left"
      },
      {
        "code" : "3515095",
        "display" : "Wrist-Right"
      },
      {
        "code" : "3515097",
        "display" : "Arm-Whole Arm and Hand-Left"
      },
      {
        "code" : "3515099",
        "display" : "Arm-Whole Arm and Hand-Right"
      },
      {
        "code" : "3515101",
        "display" : "Hand-Whole Hand-Left"
      },
      {
        "code" : "3515103",
        "display" : "Hand-Whole Hand-Right"
      },
      {
        "code" : "3515105",
        "display" : "Leg-Whole Leg-Left"
      },
      {
        "code" : "3515107",
        "display" : "Leg-Whole Leg-Right"
      },
      {
        "code" : "3515109",
        "display" : "Foot-Whole Foot-Left"
      },
      {
        "code" : "3515111",
        "display" : "Foot-Whole Foot-Right"
      }]
    }]
  }
}

```
