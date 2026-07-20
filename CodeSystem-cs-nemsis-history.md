# NEMSIS eHistory Code System - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS eHistory Code System**

## CodeSystem: NEMSIS eHistory Code System 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-history | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISHistory |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.18 | |

 
Enumeration codes from the NEMSIS 3.5.1 eHistory section covering advance directives, medical history source, immunization type, current medication dosage units and frequency, alcohol/drug use indicators, and pregnancy status. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSAdvanceDirectivesVS](ValueSet-vs-ems-advance-directives.md)
* [EMSAlcoholDrugUseVS](ValueSet-vs-ems-alcohol-drug-use.md)
* [EMSHistoryMedDosageUnitsVS](ValueSet-vs-ems-history-med-dosage-units.md)
* [EMSHistoryObtainedFromVS](ValueSet-vs-ems-history-obtained-from.md)
* [EMSImmunizationTypeVS](ValueSet-vs-ems-immunization-type.md)
* [EMSMedFrequencyVS](ValueSet-vs-ems-med-frequency.md)
* [EMSPregnancyVS](ValueSet-vs-ems-pregnancy.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-history",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-history",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.18"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISHistory",
  "title" : "NEMSIS eHistory Code System",
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
  "description" : "Enumeration codes from the NEMSIS 3.5.1 eHistory section covering advance directives, medical history source, immunization type, current medication dosage units and frequency, alcohol/drug use indicators, and pregnancy status.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 93,
  "concept" : [{
    "code" : "3105001",
    "display" : "Family/Guardian request DNR (but no documentation)"
  },
  {
    "code" : "3105003",
    "display" : "Living Will"
  },
  {
    "code" : "3105005",
    "display" : "None"
  },
  {
    "code" : "3105007",
    "display" : "Other"
  },
  {
    "code" : "3105009",
    "display" : "Other Healthcare Advanced Directive Form"
  },
  {
    "code" : "3105011",
    "display" : "State EMS DNR or Medical Order Form"
  },
  {
    "code" : "3109001",
    "display" : "Bystander/Other"
  },
  {
    "code" : "3109003",
    "display" : "Family"
  },
  {
    "code" : "3109005",
    "display" : "Health Care Personnel"
  },
  {
    "code" : "3109007",
    "display" : "Patient"
  },
  {
    "code" : "9910001",
    "display" : "Anthrax"
  },
  {
    "code" : "9910003",
    "display" : "Cholera"
  },
  {
    "code" : "9910005",
    "display" : "DPT / TDaP (Diphtheria, Pertussis, Tetanus)"
  },
  {
    "code" : "9910007",
    "display" : "Hemophilus Influenza B"
  },
  {
    "code" : "9910009",
    "display" : "Hepatitis A"
  },
  {
    "code" : "9910011",
    "display" : "Hepatitis B"
  },
  {
    "code" : "9910013",
    "display" : "Human Papilloma Virus (HPV)"
  },
  {
    "code" : "9910015",
    "display" : "Influenza-H1N1"
  },
  {
    "code" : "9910017",
    "display" : "Influenza-Other"
  },
  {
    "code" : "9910019",
    "display" : "Influenza-Seasonal (In past 12 months)"
  },
  {
    "code" : "9910021",
    "display" : "Lyme Disease"
  },
  {
    "code" : "9910023",
    "display" : "Meningococcus"
  },
  {
    "code" : "9910025",
    "display" : "MMR (Measles, Mumps, Rubella)"
  },
  {
    "code" : "9910027",
    "display" : "Other-Not Listed"
  },
  {
    "code" : "9910029",
    "display" : "Plague"
  },
  {
    "code" : "9910031",
    "display" : "Pneumococcal (Pneumonia)"
  },
  {
    "code" : "9910033",
    "display" : "Polio"
  },
  {
    "code" : "9910035",
    "display" : "Rabies"
  },
  {
    "code" : "9910037",
    "display" : "Rotavirus"
  },
  {
    "code" : "9910039",
    "display" : "Shingles"
  },
  {
    "code" : "9910041",
    "display" : "Small Pox"
  },
  {
    "code" : "9910043",
    "display" : "Tetanus"
  },
  {
    "code" : "9910045",
    "display" : "Tuberculosis"
  },
  {
    "code" : "9910047",
    "display" : "Typhoid"
  },
  {
    "code" : "9910049",
    "display" : "Varicella (Chickenpox)"
  },
  {
    "code" : "9910051",
    "display" : "Yellow Fever"
  },
  {
    "code" : "9910053",
    "display" : "None"
  },
  {
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
  },
  {
    "code" : "3117001",
    "display" : "Alcohol Containers/Paraphernalia at Scene"
  },
  {
    "code" : "3117003",
    "display" : "Drug Paraphernalia at Scene"
  },
  {
    "code" : "3117005",
    "display" : "Patient Admits to Alcohol Use"
  },
  {
    "code" : "3117007",
    "display" : "Patient Admits to Drug Use"
  },
  {
    "code" : "3117009",
    "display" : "Positive Level known from Law Enforcement or Hospital Record"
  },
  {
    "code" : "3117013",
    "display" : "Physical Exam Indicates Suspected Alcohol or Drug Use"
  },
  {
    "code" : "3117015",
    "display" : "Bystander/Family Reports Drug Use"
  },
  {
    "code" : "3117017",
    "display" : "Bystander/Family Reports Alcohol Use"
  },
  {
    "code" : "3118001",
    "display" : "No"
  },
  {
    "code" : "3118003",
    "display" : "Possible, Unconfirmed"
  },
  {
    "code" : "3118005",
    "display" : "Yes, Confirmed 12 to 20 Weeks"
  },
  {
    "code" : "3118007",
    "display" : "Yes, Confirmed Greater Than 20 Weeks"
  },
  {
    "code" : "3118009",
    "display" : "Yes, Confirmed Less Than 12 Weeks"
  },
  {
    "code" : "3118011",
    "display" : "Yes, Weeks Unknown"
  },
  {
    "code" : "3120001",
    "display" : "q1h (every hour)"
  },
  {
    "code" : "3120003",
    "display" : "q2h (every 2 hours)"
  },
  {
    "code" : "3120005",
    "display" : "q3h (every 3 hours)"
  },
  {
    "code" : "3120007",
    "display" : "q4h (every 4 hours)"
  },
  {
    "code" : "3120009",
    "display" : "qid (four times a day)"
  },
  {
    "code" : "3120011",
    "display" : "tid (three times a day)"
  },
  {
    "code" : "3120013",
    "display" : "ac (before meals)"
  },
  {
    "code" : "3120015",
    "display" : "pc (after meals)"
  },
  {
    "code" : "3120017",
    "display" : "bid (twice a day)"
  },
  {
    "code" : "3120019",
    "display" : "qd (every day)"
  },
  {
    "code" : "3120021",
    "display" : "qd-am (every day in the morning)"
  },
  {
    "code" : "3120023",
    "display" : "qd-pm (every day in the evening)"
  },
  {
    "code" : "3120025",
    "display" : "hs (at bedtime)"
  },
  {
    "code" : "3120027",
    "display" : "qod (every other day)"
  },
  {
    "code" : "3120029",
    "display" : "prn (as needed)"
  }]
}

```
