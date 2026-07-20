# Example EMS Practitioner — Paramedic - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Practitioner — Paramedic**

## Example Practitioner: Example EMS Practitioner — Paramedic

Profile: [EMS Practitioner](StructureDefinition-ems-practitioner.md)

**identifier**: Employee number/P-20145

**name**: Maria J Ramirez 

**gender**: Female

**birthDate**: 1988-04-15

### Qualifications

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Identifier** | **Code** | **Period** |
| * | `http://example.org/ems/cert-number`/NREMT-P-456789 | Paramedic | 2018-06-01 --> 2026-06-01 |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ex-ems-practitioner",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "EI"
      }]
    },
    "system" : "http://example.org/ems/personnel-id",
    "value" : "P-20145"
  }],
  "name" : [{
    "family" : "Ramirez",
    "given" : ["Maria", "J"]
  }],
  "gender" : "female",
  "birthDate" : "1988-04-15",
  "qualification" : [{
    "identifier" : [{
      "system" : "http://example.org/ems/cert-number",
      "value" : "NREMT-P-456789"
    }],
    "code" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-personnel-level",
        "code" : "9925007",
        "display" : "Paramedic"
      }]
    },
    "period" : {
      "start" : "2018-06-01",
      "end" : "2026-06-01"
    }
  }]
}

```
