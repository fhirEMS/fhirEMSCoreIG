# EMS Vascular Access Location - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Vascular Access Location**

## ValueSet: EMS Vascular Access Location 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-vascular-access-location | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSVascularAccessLocationVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.128 | |

 
NEMSIS eProcedures.13 - Anatomical site of vascular access (IV/IO line). 

 **References** 

* [EMS Procedure](StructureDefinition-ems-procedure.md)

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
  "id" : "vs-ems-vascular-access-location",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-vascular-access-location",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.128"
  }],
  "version" : "0.2.0",
  "name" : "EMSVascularAccessLocationVS",
  "title" : "EMS Vascular Access Location",
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
  "description" : "NEMSIS eProcedures.13 - Anatomical site of vascular access (IV/IO line).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications",
      "concept" : [{
        "code" : "3913001",
        "display" : "Antecubital-Left"
      },
      {
        "code" : "3913003",
        "display" : "Antecubital-Right"
      },
      {
        "code" : "3913005",
        "display" : "External Jugular-Left"
      },
      {
        "code" : "3913007",
        "display" : "External Jugular-Right"
      },
      {
        "code" : "3913009",
        "display" : "Femoral-Left IV"
      },
      {
        "code" : "3913011",
        "display" : "Femoral-Right IV"
      },
      {
        "code" : "3913013",
        "display" : "Foot-Right"
      },
      {
        "code" : "3913015",
        "display" : "Foot-Left"
      },
      {
        "code" : "3913017",
        "display" : "Forearm-Left"
      },
      {
        "code" : "3913019",
        "display" : "Forearm-Right"
      },
      {
        "code" : "3913021",
        "display" : "Hand-Left"
      },
      {
        "code" : "3913023",
        "display" : "Hand-Right"
      },
      {
        "code" : "3913025",
        "display" : "Internal Jugular-Left"
      },
      {
        "code" : "3913027",
        "display" : "Internal Jugular-Right"
      },
      {
        "code" : "3913029",
        "display" : "IO-Iliac Crest-Left"
      },
      {
        "code" : "3913031",
        "display" : "IO-Iliac Crest-Right"
      },
      {
        "code" : "3913033",
        "display" : "IO-Femoral-Left Distal"
      },
      {
        "code" : "3913035",
        "display" : "IO-Femoral-Right Distal"
      },
      {
        "code" : "3913037",
        "display" : "IO-Humeral-Left"
      },
      {
        "code" : "3913039",
        "display" : "IO-Humeral-Right"
      },
      {
        "code" : "3913041",
        "display" : "IO-Tibia-Left Distal"
      },
      {
        "code" : "3913043",
        "display" : "IO-Sternum"
      },
      {
        "code" : "3913045",
        "display" : "IO-Tibia-Right Distal"
      },
      {
        "code" : "3913047",
        "display" : "IO-Tibia-Left Proximal"
      },
      {
        "code" : "3913049",
        "display" : "IO-Tibia-Right Proximal"
      },
      {
        "code" : "3913051",
        "display" : "Lower Extremity-Left"
      },
      {
        "code" : "3913053",
        "display" : "Lower Extremity-Right"
      },
      {
        "code" : "3913055",
        "display" : "Other Peripheral"
      },
      {
        "code" : "3913057",
        "display" : "Other Central (PICC, Portacath, etc.)"
      },
      {
        "code" : "3913059",
        "display" : "Scalp"
      },
      {
        "code" : "3913061",
        "display" : "Subclavian-Left"
      },
      {
        "code" : "3913063",
        "display" : "Subclavian-Right"
      },
      {
        "code" : "3913065",
        "display" : "Umbilical"
      },
      {
        "code" : "3913067",
        "display" : "Venous Cutdown-Left Lower Extremity"
      },
      {
        "code" : "3913069",
        "display" : "Venous Cutdown-Right Lower Extremity"
      },
      {
        "code" : "3913071",
        "display" : "Upper Arm-Left"
      },
      {
        "code" : "3913073",
        "display" : "Upper Arm-Right"
      },
      {
        "code" : "3913075",
        "display" : "Radial-Left"
      },
      {
        "code" : "3913077",
        "display" : "Radial-Right"
      },
      {
        "code" : "3913079",
        "display" : "Wrist-Left"
      },
      {
        "code" : "3913081",
        "display" : "Wrist-Right"
      }]
    }]
  }
}

```
