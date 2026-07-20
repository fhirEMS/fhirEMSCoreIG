# EMS Stroke Scale Type - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Stroke Scale Type**

## ValueSet: EMS Stroke Scale Type 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-stroke-scale-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSStrokeScaleTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.117 | |

 
NEMSIS eVitals.30 - The prehospital stroke screening tool used. 

 **References** 

* [EMS Stroke Scale Context](StructureDefinition-ext-ems-stroke-scale-context.md)

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
  "id" : "vs-ems-stroke-scale-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-stroke-scale-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.117"
  }],
  "version" : "0.2.0",
  "name" : "EMSStrokeScaleTypeVS",
  "title" : "EMS Stroke Scale Type",
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
  "description" : "NEMSIS eVitals.30 - The prehospital stroke screening tool used.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-vitals",
      "concept" : [{
        "code" : "3330001",
        "display" : "Cincinnati Prehospital Stroke Scale (CPSS)"
      },
      {
        "code" : "3330004",
        "display" : "Los Angeles Prehospital Stroke Screen (LAPSS)"
      },
      {
        "code" : "3330005",
        "display" : "Massachusetts Stroke Scale (MSS)"
      },
      {
        "code" : "3330007",
        "display" : "Miami Emergency Neurologic Deficit Exam (MEND)"
      },
      {
        "code" : "3330009",
        "display" : "NIH Stroke Scale (NIHSS)"
      },
      {
        "code" : "3330011",
        "display" : "Other Stroke Scale Type"
      },
      {
        "code" : "3330013",
        "display" : "FAST"
      },
      {
        "code" : "3330015",
        "display" : "Boston Stroke Scale (BOSS)"
      },
      {
        "code" : "3330017",
        "display" : "Ontario Prehospital Stroke Scale (OPSS)"
      },
      {
        "code" : "3330019",
        "display" : "Melbourne Ambulance Stroke Screen (MASS)"
      },
      {
        "code" : "3330021",
        "display" : "Rapid Arterial oCclusion Evaluation (RACE)"
      },
      {
        "code" : "3330023",
        "display" : "Los Angeles Motor Score (LAMS)"
      },
      {
        "code" : "3330025",
        "display" : "Vision, Aphasia, Neglect (VAN)"
      },
      {
        "code" : "3330027",
        "display" : "FAST-ED"
      },
      {
        "code" : "3330029",
        "display" : "BEFAST"
      }]
    }]
  }
}

```
