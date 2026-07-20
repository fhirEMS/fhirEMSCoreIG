# EMS Trauma Triage Moderate Risk VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Trauma Triage Moderate Risk VS**

## ValueSet: EMS Trauma Triage Moderate Risk VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-trauma-triage-moderate-risk | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSTraumaTriageModerateRiskVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.124 | |

 
Trauma triage criteria indicating moderate risk for serious injury — CDC Field Triage Guideline yellow criteria (mechanism of injury and EMS judgment) (eInjury.04). 

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
  "id" : "vs-ems-trauma-triage-moderate-risk",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-trauma-triage-moderate-risk",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.124"
  }],
  "version" : "0.2.0",
  "name" : "EMSTraumaTriageModerateRiskVS",
  "title" : "EMS Trauma Triage Moderate Risk VS",
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
  "description" : "Trauma triage criteria indicating moderate risk for serious injury — CDC Field Triage Guideline yellow criteria (mechanism of injury and EMS judgment) (eInjury.04).",
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
        "code" : "2904001",
        "display" : "Pedestrian/bicycle rider thrown, run over, or with significant impact"
      },
      {
        "code" : "2904003",
        "display" : "Fall Adults: > 20 ft. (one story is equal to 10 ft.) (DEPRECATED)"
      },
      {
        "code" : "2904005",
        "display" : "Fall Children: > 10 ft. or 2-3 times the height of the child (DEPRECATED)"
      },
      {
        "code" : "2904007",
        "display" : "Auto Crash: Death in passenger compartment"
      },
      {
        "code" : "2904009",
        "display" : "Auto Crash: Partial or complete ejection"
      },
      {
        "code" : "2904011",
        "display" : "Auto Crash: Significant intrusion (including roof): >12 inches occupant site; >18 inches any site; need for extrication"
      },
      {
        "code" : "2904013",
        "display" : "Auto Crash: Vehicle telemetry data consistent with severe injury"
      },
      {
        "code" : "2904015",
        "display" : "Motorcycle Crash > 20 MPH (DEPRECATED)"
      },
      {
        "code" : "2904017",
        "display" : "SBP < 110 for age > 65 (DEPRECATED)"
      },
      {
        "code" : "2904019",
        "display" : "Anticoagulant use"
      },
      {
        "code" : "2904021",
        "display" : "Pregnancy > 20 weeks"
      },
      {
        "code" : "2904023",
        "display" : "Other EMS judgment"
      },
      {
        "code" : "2904025",
        "display" : "Burn, without other trauma (DEPRECATED)"
      },
      {
        "code" : "2904027",
        "display" : "Burns in conjunction with trauma"
      },
      {
        "code" : "2904029",
        "display" : "Auto Crash: Child (age 0-9 years) unrestrained or in unsecured child safety seat"
      },
      {
        "code" : "2904031",
        "display" : "Fall from height > 10 feet (all ages)"
      },
      {
        "code" : "2904033",
        "display" : "Low-level falls in young children (age <= 5 years) or older adults (age >= 65 years) with significant head impact"
      },
      {
        "code" : "2904035",
        "display" : "Rider separated from transport vehicle with significant impact (eg, motorcycle, ATV, horse, etc.)"
      },
      {
        "code" : "2904037",
        "display" : "Special, high-resource healthcare needs"
      },
      {
        "code" : "2904039",
        "display" : "Suspicion of child abuse"
      }]
    }]
  }
}

```
