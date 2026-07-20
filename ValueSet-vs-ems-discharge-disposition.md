# EMS Discharge Disposition VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Discharge Disposition VS**

## ValueSet: EMS Discharge Disposition VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-discharge-disposition | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSDischargeDispositionVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.41 | |

 
UB-04 patient discharge status codes used for ED disposition (eOutcome.01) and hospital disposition (eOutcome.02). 

 **References** 

* [EMS Outcome Observation](StructureDefinition-ems-observation-outcome.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "vs-ems-discharge-disposition",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-discharge-disposition",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.41"
  }],
  "version" : "0.2.0",
  "name" : "EMSDischargeDispositionVS",
  "title" : "EMS Discharge Disposition VS",
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
  "description" : "UB-04 patient discharge status codes used for ED disposition (eOutcome.01) and hospital disposition (eOutcome.02).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.nubc.org/CodeSystem/PatDischargeStatus",
      "concept" : [{
        "code" : "01",
        "display" : "Discharged to home or self care (routine discharge)"
      },
      {
        "code" : "02",
        "display" : "Discharged/transferred to another short term general hospital for inpatient care"
      },
      {
        "code" : "03",
        "display" : "Discharged/transferred to a skilled nursing facility (SNF)"
      },
      {
        "code" : "04",
        "display" : "Discharged/transferred to an intermediate care facility (ICF)"
      },
      {
        "code" : "05",
        "display" : "Discharged/transferred to another type of institution not defined elsewhere in this code list"
      },
      {
        "code" : "06",
        "display" : "Discharged/transferred to home under care of organized home health service organization"
      },
      {
        "code" : "07",
        "display" : "Left against medical advice or discontinued care"
      },
      {
        "code" : "09",
        "display" : "Admitted as an inpatient to this hospital"
      },
      {
        "code" : "20",
        "display" : "Deceased/Expired"
      },
      {
        "code" : "21",
        "display" : "Discharged/transferred to court/law enforcement"
      },
      {
        "code" : "30",
        "display" : "Still a patient or expected to return for outpatient services"
      },
      {
        "code" : "43",
        "display" : "Discharged/transferred to a Federal Health Care Facility"
      },
      {
        "code" : "50",
        "display" : "Discharged/transferred to Hospice - home"
      },
      {
        "code" : "51",
        "display" : "Discharged/transferred to Hospice - medical facility"
      },
      {
        "code" : "61",
        "display" : "Discharged/transferred within this institution to a hospital based Medicare approved swing bed"
      },
      {
        "code" : "62",
        "display" : "Discharged/transferred to a inpatient rehabilitation facility"
      },
      {
        "code" : "63",
        "display" : "Discharged/transferred to long term care hospitals"
      },
      {
        "code" : "64",
        "display" : "Discharged/transferred to a nursing facility certified under Medicaid but not certified under Medicare"
      },
      {
        "code" : "65",
        "display" : "Discharged/transferred to a psychiatric hospital or psychiatric distinct part unit of a hospital"
      },
      {
        "code" : "66",
        "display" : "Discharged/transferred to a Critical Access Hospital (CAH)"
      },
      {
        "code" : "70",
        "display" : "Discharged/transferred to another type of health care institution not defined elsewhere in the code list"
      }]
    }]
  }
}

```
