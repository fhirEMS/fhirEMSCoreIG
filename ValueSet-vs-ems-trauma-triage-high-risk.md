# EMS Trauma Triage High Risk VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Trauma Triage High Risk VS**

## ValueSet: EMS Trauma Triage High Risk VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-trauma-triage-high-risk | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSTraumaTriageHighRiskVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.123 | |

 
Trauma triage criteria indicating high risk for serious injury — CDC Field Triage Guideline red criteria (injury patterns and physiologic instability) (eInjury.03). 

 **References** 

* [EMS Injury Context](StructureDefinition-ext-ems-injury-context.md)

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
  "id" : "vs-ems-trauma-triage-high-risk",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-trauma-triage-high-risk",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.123"
  }],
  "version" : "0.2.0",
  "name" : "EMSTraumaTriageHighRiskVS",
  "title" : "EMS Trauma Triage High Risk VS",
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
  "description" : "Trauma triage criteria indicating high risk for serious injury — CDC Field Triage Guideline red criteria (injury patterns and physiologic instability) (eInjury.03).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-injury",
      "concept" : [{
        "code" : "2903001",
        "display" : "Amputation proximal to wrist or ankle"
      },
      {
        "code" : "2903003",
        "display" : "Crushed, degloved, mangled, or pulseless extremity"
      },
      {
        "code" : "2903005",
        "display" : "Chest wall instability, deformity, or suspected flail chest"
      },
      {
        "code" : "2903007",
        "display" : "Glasgow Coma Score <= 13 (DEPRECATED)"
      },
      {
        "code" : "2903009",
        "display" : "Skull deformity, suspected skull fracture"
      },
      {
        "code" : "2903011",
        "display" : "Paralysis (DEPRECATED)"
      },
      {
        "code" : "2903013",
        "display" : "Suspected pelvic fracture"
      },
      {
        "code" : "2903015",
        "display" : "Penetrating injuries to head, neck, torso, and proximal extremities"
      },
      {
        "code" : "2903017",
        "display" : "Respiratory Rate <10 or >29 breaths per minute (<20 in infants aged <1 year) or need for ventilatory support (DEPRECATED)"
      },
      {
        "code" : "2903019",
        "display" : "Systolic Blood Pressure <90 mmHg (DEPRECATED)"
      },
      {
        "code" : "2903021",
        "display" : "Suspected fracture of two or more proximal long bones"
      },
      {
        "code" : "2903023",
        "display" : "Active bleeding requiring a tourniquet or wound packing with continuous pressure"
      },
      {
        "code" : "2903025",
        "display" : "Age >= 10 years: HR > SBP"
      },
      {
        "code" : "2903027",
        "display" : "Age >= 65 years: SBP < 110 mmHg"
      },
      {
        "code" : "2903029",
        "display" : "Age 0-9 years: SBP < 70mm Hg + (2 x age in years)"
      },
      {
        "code" : "2903031",
        "display" : "Age 10-64 years: SBP < 90 mmHg"
      },
      {
        "code" : "2903033",
        "display" : "Respiratory distress or need for respiratory support"
      },
      {
        "code" : "2903035",
        "display" : "Room-air pulse oximetry < 90%"
      },
      {
        "code" : "2903037",
        "display" : "RR < 10 or > 29 breaths/min"
      },
      {
        "code" : "2903039",
        "display" : "Suspected spinal injury with new motor or sensory loss"
      },
      {
        "code" : "2903041",
        "display" : "Unable to follow commands (motor GCS < 6)"
      }]
    }]
  }
}

```
