# EMS Medication Dosage Units - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Medication Dosage Units**

## ValueSet: EMS Medication Dosage Units 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medication-dosage-units | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSMedicationDosageUnitsVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.86 | |

 
NEMSIS eMedications.06 - Units of measurement for medication dosage. 

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
  "id" : "vs-ems-medication-dosage-units",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medication-dosage-units",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.86"
  }],
  "version" : "0.2.0",
  "name" : "EMSMedicationDosageUnitsVS",
  "title" : "EMS Medication Dosage Units",
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
  "description" : "NEMSIS eMedications.06 - Units of measurement for medication dosage.",
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
        "code" : "3706001",
        "display" : "Grams (gms)"
      },
      {
        "code" : "3706003",
        "display" : "Inches (in)"
      },
      {
        "code" : "3706005",
        "display" : "International Units (IU)"
      },
      {
        "code" : "3706007",
        "display" : "Keep Vein Open (kvo)"
      },
      {
        "code" : "3706009",
        "display" : "Liters (l)"
      },
      {
        "code" : "3706013",
        "display" : "Metered Dose (MDI)"
      },
      {
        "code" : "3706015",
        "display" : "Micrograms (mcg)"
      },
      {
        "code" : "3706017",
        "display" : "Micrograms per Kilogram per Minute (mcg/kg/min)"
      },
      {
        "code" : "3706019",
        "display" : "Milliequivalents (mEq)"
      },
      {
        "code" : "3706021",
        "display" : "Milligrams (mg)"
      },
      {
        "code" : "3706023",
        "display" : "Milligrams per Kilogram Per Minute (mg/kg/min)"
      },
      {
        "code" : "3706025",
        "display" : "Milliliters (ml)"
      },
      {
        "code" : "3706027",
        "display" : "Milliliters per Hour (ml/hr)"
      },
      {
        "code" : "3706029",
        "display" : "Other"
      },
      {
        "code" : "3706031",
        "display" : "Centimeters (cm)"
      },
      {
        "code" : "3706033",
        "display" : "Drops (gtts)"
      },
      {
        "code" : "3706035",
        "display" : "Liters Per Minute (LPM [gas])"
      },
      {
        "code" : "3706037",
        "display" : "Micrograms per Minute (mcg/min)"
      },
      {
        "code" : "3706039",
        "display" : "Milligrams per Kilogram (mg/kg)"
      },
      {
        "code" : "3706041",
        "display" : "Milligrams per Minute (mg/min)"
      },
      {
        "code" : "3706043",
        "display" : "Puffs"
      },
      {
        "code" : "3706045",
        "display" : "Units per Hour (units/hr)"
      },
      {
        "code" : "3706047",
        "display" : "Micrograms per Kilogram (mcg/kg)"
      },
      {
        "code" : "3706049",
        "display" : "Units"
      },
      {
        "code" : "3706051",
        "display" : "Units per Kilogram per Hour (units/kg/hr)"
      },
      {
        "code" : "3706053",
        "display" : "Units per Kilogram (units/kg)"
      },
      {
        "code" : "3706055",
        "display" : "Milligrams per Hour (mg/hr)"
      }]
    }]
  }
}

```
