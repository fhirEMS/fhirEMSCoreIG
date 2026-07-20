# EMS Home Medication Dosage Units VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Home Medication Dosage Units VS**

## ValueSet: EMS Home Medication Dosage Units VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-history-med-dosage-units | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSHistoryMedDosageUnitsVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.133 | |

 
Units for the patient's current (home) medication dose (eHistory.14). Distinct from the eMedications.06 administered-dose units (3706xxx codes). 

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
  "id" : "vs-ems-history-med-dosage-units",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-history-med-dosage-units",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.133"
  }],
  "version" : "0.2.0",
  "name" : "EMSHistoryMedDosageUnitsVS",
  "title" : "EMS Home Medication Dosage Units VS",
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
  "description" : "Units for the patient's current (home) medication dose (eHistory.14). Distinct from the eMedications.06 administered-dose units (3706xxx codes).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-history",
      "concept" : [{
        "code" : "3114001",
        "display" : "Centimeters (cm)"
      },
      {
        "code" : "3114003",
        "display" : "Grams (gms)"
      },
      {
        "code" : "3114005",
        "display" : "Drops (gtts)"
      },
      {
        "code" : "3114007",
        "display" : "Inches (in)"
      },
      {
        "code" : "3114009",
        "display" : "International Units (IU)"
      },
      {
        "code" : "3114011",
        "display" : "Keep Vein Open (kvo)"
      },
      {
        "code" : "3114013",
        "display" : "Liters Per Minute (l/min [fluid])"
      },
      {
        "code" : "3114015",
        "display" : "Liters (l)"
      },
      {
        "code" : "3114017",
        "display" : "Liters Per Minute (LPM [gas])"
      },
      {
        "code" : "3114019",
        "display" : "Micrograms (mcg)"
      },
      {
        "code" : "3114021",
        "display" : "Micrograms per Kilogram per Minute (mcg/kg/min)"
      },
      {
        "code" : "3114023",
        "display" : "Micrograms per Minute (mcg/min)"
      },
      {
        "code" : "3114025",
        "display" : "Milliequivalents (mEq)"
      },
      {
        "code" : "3114027",
        "display" : "Metered Dose (MDI)"
      },
      {
        "code" : "3114029",
        "display" : "Milligrams (mg)"
      },
      {
        "code" : "3114031",
        "display" : "Milligrams per Kilogram (mg/kg)"
      },
      {
        "code" : "3114033",
        "display" : "Milligrams per Kilogram Per Minute (mg/kg/min)"
      },
      {
        "code" : "3114035",
        "display" : "Milligrams per Minute (mg/min)"
      },
      {
        "code" : "3114037",
        "display" : "Milliliters (ml)"
      },
      {
        "code" : "3114039",
        "display" : "Milliliters per Hour (ml/hr)"
      },
      {
        "code" : "3114041",
        "display" : "Other"
      },
      {
        "code" : "3114043",
        "display" : "Puffs"
      },
      {
        "code" : "3114045",
        "display" : "Units per Hour (units/hr)"
      },
      {
        "code" : "3114047",
        "display" : "Micrograms per Kilogram (mcg/kg)"
      },
      {
        "code" : "3114049",
        "display" : "Units"
      },
      {
        "code" : "3114051",
        "display" : "Units per Kilogram per Hour (units/kg/hr)"
      },
      {
        "code" : "3114053",
        "display" : "Units per Kilogram (units/kg)"
      }]
    }]
  }
}

```
