# EMS MonitoringCapability VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS MonitoringCapability VS**

## ValueSet: EMS MonitoringCapability VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-monitoring-capability | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSMonitoringCapabilityVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.152 | |

 
Patient monitoring capabilities of the agency (dConfiguration.15). 

 **References** 

* [EMS Agency Configuration](StructureDefinition-ext-ems-agency-configuration.md)

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
  "id" : "vs-ems-monitoring-capability",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-monitoring-capability",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.152"
  }],
  "version" : "0.2.0",
  "name" : "EMSMonitoringCapabilityVS",
  "title" : "EMS MonitoringCapability VS",
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
  "description" : "Patient monitoring capabilities of the agency (dConfiguration.15).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-demographics",
      "concept" : [{
        "code" : "1215001",
        "display" : "Capnography-Numeric"
      },
      {
        "code" : "1215003",
        "display" : "Capnography-Waveform"
      },
      {
        "code" : "1215005",
        "display" : "ECG-12 Lead or Greater"
      },
      {
        "code" : "1215007",
        "display" : "ECG-Less than 12 Lead (Cardiac Monitor)"
      },
      {
        "code" : "1215009",
        "display" : "Oximetry-Carbon Monoxide"
      },
      {
        "code" : "1215011",
        "display" : "Oximetry-Oxygen"
      },
      {
        "code" : "1215013",
        "display" : "Pressure Measurement-Invasive (Arterial, CVP, Swan, etc.)"
      },
      {
        "code" : "1215015",
        "display" : "Pressure Measurement-Non-Invasive (Blood Pressure, etc.)"
      },
      {
        "code" : "1215017",
        "display" : "Ventilator-Transport"
      },
      {
        "code" : "1215019",
        "display" : "Vital Sign Monitoring"
      }]
    }]
  }
}

```
