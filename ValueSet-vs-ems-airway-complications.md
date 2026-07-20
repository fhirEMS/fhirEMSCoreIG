# EMS Airway Complications VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Airway Complications VS**

## ValueSet: EMS Airway Complications VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-complications | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSAirwayComplicationsVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.11 | |

 
Complications encountered during airway management (eAirway.08). 

 **References** 

* [EMS Airway Management Context](StructureDefinition-ext-ems-airway-context.md)

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
  "id" : "vs-ems-airway-complications",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-complications",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.11"
  }],
  "version" : "0.2.0",
  "name" : "EMSAirwayComplicationsVS",
  "title" : "EMS Airway Complications VS",
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
  "description" : "Complications encountered during airway management (eAirway.08).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-airway",
      "concept" : [{
        "code" : "4008001",
        "display" : "Adverse Event from Facilitating Drugs"
      },
      {
        "code" : "4008003",
        "display" : "Bradycardia (<50)"
      },
      {
        "code" : "4008005",
        "display" : "Cardiac Arrest"
      },
      {
        "code" : "4008007",
        "display" : "Esophageal Intubation-Delayed Detection (After Tube Secured)"
      },
      {
        "code" : "4008009",
        "display" : "Esophageal Intubation-Detected in Emergency Department"
      },
      {
        "code" : "4008011",
        "display" : "Failed Intubation Effort"
      },
      {
        "code" : "4008013",
        "display" : "Injury or Trauma to Patient from Airway Management Effort"
      },
      {
        "code" : "4008015",
        "display" : "Other"
      },
      {
        "code" : "4008017",
        "display" : "Oxygen Desaturation (<90%)"
      },
      {
        "code" : "4008019",
        "display" : "Patient Vomiting/Aspiration"
      },
      {
        "code" : "4008021",
        "display" : "Tube Dislodged During Transport/Patient Care"
      },
      {
        "code" : "4008023",
        "display" : "Tube Was Not in Correct Position when EMS Crew/Team Assumed Care of the Patient"
      }]
    }]
  }
}

```
