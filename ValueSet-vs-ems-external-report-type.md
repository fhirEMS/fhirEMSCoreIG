# EMS External Report Type VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS External Report Type VS**

## ValueSet: EMS External Report Type VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-external-report-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExternalReportTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.71 | |

 
Type of external report associated with the EMS event (eOutcome.03). 

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
  "id" : "vs-ems-external-report-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-external-report-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.71"
  }],
  "version" : "0.2.0",
  "name" : "EMSExternalReportTypeVS",
  "title" : "EMS External Report Type VS",
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
  "description" : "Type of external report associated with the EMS event (eOutcome.03).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
      "concept" : [{
        "code" : "4303001",
        "display" : "Disaster Tag"
      },
      {
        "code" : "4303003",
        "display" : "Fire Incident Report"
      },
      {
        "code" : "4303005",
        "display" : "Hospital-Receiving"
      },
      {
        "code" : "4303007",
        "display" : "Hospital-Transferring"
      },
      {
        "code" : "4303009",
        "display" : "Law Enforcement Report"
      },
      {
        "code" : "4303011",
        "display" : "Other"
      },
      {
        "code" : "4303013",
        "display" : "Other Registry"
      },
      {
        "code" : "4303015",
        "display" : "Other Report"
      },
      {
        "code" : "4303017",
        "display" : "Patient ID"
      },
      {
        "code" : "4303019",
        "display" : "Prior EMS Patient Care Report"
      },
      {
        "code" : "4303021",
        "display" : "STEMI Registry"
      },
      {
        "code" : "4303023",
        "display" : "Stroke Registry"
      },
      {
        "code" : "4303025",
        "display" : "Trauma Registry"
      }]
    }]
  }
}

```
