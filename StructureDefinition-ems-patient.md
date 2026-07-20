# EMS Patient - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Patient**

## Resource Profile: EMS Patient 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSPatient |

 
Constraints on US Core Patient for the NEMSIS 3.5.1.251001CP2 ePatient section (25 elements). Adds three EMS-specific extensions: census tract (ePatient.11), alternate home residence (ePatient.22), and estimated age (ePatient.15/16) for use when date of birth is unknown. See the EMS Patient mapping page for the full NEMSIS element → FHIR cross-reference. 

**Usages:**

* Refer to this Profile: [EMS AllergyIntolerance](StructureDefinition-ems-allergyintolerance.md), [EMS Ambulance Claim](StructureDefinition-ems-claim.md), [EMS Patient Care Report (PCR)](StructureDefinition-ems-composition.md), [EMS Cardiac Arrest Condition](StructureDefinition-ems-condition-arrest.md)... Show 17 more, [EMS Injury Condition](StructureDefinition-ems-condition-injury.md), [EMS Condition — Past Medical History](StructureDefinition-ems-condition-problems.md), [EMS Condition](StructureDefinition-ems-condition.md), [EMS Coverage (Insurance)](StructureDefinition-ems-coverage.md), [EMS Document Reference](StructureDefinition-ems-documentreference.md), [EMS Encounter](StructureDefinition-ems-encounter.md), [EMS Medication Administration](StructureDefinition-ems-medicationadministration.md), [EMS Medication Statement — Home Medications](StructureDefinition-ems-medicationstatement.md), [EMS Airway Management Observation](StructureDefinition-ems-observation-airway.md), [EMS Blood Pressure Observation](StructureDefinition-ems-observation-bp.md), [EMS Physical Exam Observation](StructureDefinition-ems-observation-exam.md), [EMS Glasgow Coma Score (GCS) Panel](StructureDefinition-ems-observation-gcs.md), [EMS Lab and Imaging Observation](StructureDefinition-ems-observation-labs.md), [EMS Outcome Observation](StructureDefinition-ems-observation-outcome.md), [EMS Vital Signs Observation](StructureDefinition-ems-observation-vitalsigns.md), [EMS Procedure](StructureDefinition-ems-procedure.md) and [EMS Questionnaire Response — Custom Element Results](StructureDefinition-ems-questionnaireresponse.md)
* Examples for this Profile: [Patient/ex-ems-patient](Patient-ex-ems-patient.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-patient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-patient.csv), [Excel](StructureDefinition-ems-patient.xlsx), [Schematron](StructureDefinition-ems-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-patient",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient",
  "version" : "0.2.0",
  "name" : "EMSPatient",
  "title" : "EMS Patient",
  "status" : "draft",
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
  "description" : "Constraints on US Core Patient for the NEMSIS 3.5.1.251001CP2 ePatient section\n(25 elements). Adds three EMS-specific extensions: census tract (ePatient.11),\nalternate home residence (ePatient.22), and estimated age (ePatient.15/16) for\nuse when date of birth is unknown. See the EMS Patient mapping page for the\nfull NEMSIS element → FHIR cross-reference.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension:race",
      "path" : "Patient.extension",
      "sliceName" : "race",
      "short" : "ePatient.14 - Race",
      "comment" : "NEMSIS ePatient.14. Usage: Required/National. Repeating (1..M). Nillable.\nNV: NotRecorded, NotApplicable. PN: UnableToComplete, Unresponsive, Refused.\n\nNEMSIS code → OMB/CDC race (urn:oid:2.16.840.1.113883.6.238):\n  2514001 American Indian or Alaska Native    → #1002-5\n  2514003 Asian                               → #2028-9\n  2514005 Black or African American           → #2054-5\n  2514009 Native Hawaiian or Pacific Islander → #2076-8\n  2514011 White                               → #2106-3\n  2514013 Middle Eastern or North African     → #2131-1 (Other Race)\n  2514007 Hispanic or Latino                  → use extension[us-core-ethnicity]",
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:ethnicity",
      "path" : "Patient.extension",
      "sliceName" : "ethnicity",
      "short" : "ePatient.14 - Ethnicity (Hispanic or Latino)",
      "comment" : "NEMSIS ePatient.14 code 2514007. When present, populate with urn:oid:2.16.840.1.113883.6.238#2135-2 (Hispanic or Latino).",
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:birthsex",
      "path" : "Patient.extension",
      "sliceName" : "birthsex",
      "short" : "ePatient.25 - Sex (us-core-birthsex)",
      "comment" : "NEMSIS ePatient.25 → us-core-birthsex. Female(9919001)→F, Male(9919003)→M, Unknown(9919005)→UNK.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:censusTract",
      "path" : "Patient.extension",
      "sliceName" : "censusTract",
      "short" : "ePatient.11 - Patient Home Census Tract",
      "comment" : "NEMSIS ePatient.11. Usage: Optional. US Census Bureau census tract string for the patient's home address. No NV or PN.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-census-tract"]
      }]
    },
    {
      "id" : "Patient.extension:estimatedAge",
      "path" : "Patient.extension",
      "sliceName" : "estimatedAge",
      "short" : "ePatient.15/16 - Patient Age and Age Units",
      "comment" : "NEMSIS ePatient.15 (Age value) and ePatient.16 (Age Units). Both Required/National.\nPopulate this extension only when birthDate (ePatient.17) is unknown or unavailable.\nWhen birthDate is known, derive age computationally at the time of the encounter.\nSee EMSPatientAge extension definition for NV/PN details on each sub-element.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-patient-age"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:alternateResidence",
      "path" : "Patient.extension",
      "sliceName" : "alternateResidence",
      "short" : "ePatient.22 - Alternate Home Residence",
      "comment" : "NEMSIS ePatient.22. Usage: Recommended/Nillable. NV: NotRecorded, NotApplicable. Codes: Homeless (2522001), Migrant Worker (2522003), Foreign Visitor (2522005). Use when a standard home ZIP code is not applicable.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-alternate-residence"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "short" : "ePatient.02/03/04/23 - Patient name",
      "comment" : "Last (ePatient.02, Recommended), First (ePatient.03, Recommended), Middle (ePatient.04, Optional), Suffix (ePatient.23, Optional). NV/PN apply to ePatient.02 and ePatient.03 only."
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "short" : "ePatient.02 - Last Name",
      "comment" : "NEMSIS ePatient.02. Usage: Recommended/Nillable. NV: NotReporting, NotRecorded, NotApplicable. PN: UnableToComplete, Refused."
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "short" : "ePatient.03/04 - First Name (given[0]) / Middle Initial or Name (given[1])",
      "comment" : "NEMSIS ePatient.03 (given[0], Recommended/Nillable) and ePatient.04 (given[1], Optional). NV: NotReporting, NotRecorded, NotApplicable (ePatient.03 only). PN: UnableToComplete, Refused (ePatient.03 only)."
    },
    {
      "id" : "Patient.name.suffix",
      "path" : "Patient.name.suffix",
      "short" : "ePatient.23 - Name Suffix",
      "comment" : "NEMSIS ePatient.23. Usage: Optional. No NV or PN. Examples: Jr., Sr., II, III.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "short" : "ePatient.18/19 - Phone Number and Email Address",
      "comment" : "ePatient.18: phone, 0..M, nillable, PN: UnableToComplete — telecom.system = 'phone'. ePatient.19: email, 0..M, not nillable, no NV/PN — telecom.system = 'email'.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom.system",
      "path" : "Patient.telecom.system",
      "comment" : "US Core requires telecom.system 1..1 with required binding. Use 'phone' for ePatient.18, 'email' for ePatient.19.",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/contact-point-system"
      }
    },
    {
      "id" : "Patient.telecom.value",
      "path" : "Patient.telecom.value",
      "comment" : "US Core requires telecom.value 1..1."
    },
    {
      "id" : "Patient.telecom.use",
      "path" : "Patient.telecom.use",
      "comment" : "US Core requires required binding on telecom.use."
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "ePatient.25 - Sex",
      "comment" : "NEMSIS ePatient.25. Usage: Required/National/Nillable.\nNV: NotReporting, NotRecorded, NotApplicable. PN: UnableToComplete, Refused.\n\nNEMSIS code → FHIR AdministrativeGender:\n  9919001 Female  → #female\n  9919003 Male    → #male\n  9919005 Unknown → #unknown\n\nePatient.13 (Gender) is DEPRECATED in NEMSIS 3.5.1.251001CP2.\nDo not populate ePatient.13. Use ePatient.25 exclusively."
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "ePatient.17 - Date of Birth",
      "comment" : "NEMSIS ePatient.17. Usage: Recommended/Nillable.\nNV: NotReporting, NotRecorded, NotApplicable. PN: UnableToComplete, Refused.\n\nWhen birthDate is known: derive ePatient.15 (Age) and ePatient.16 (Age Units)\ncomputationally at the time of the encounter.\nWhen birthDate is unknown: populate extension[estimatedAge] with the\nNEMSIS-reported age value (ePatient.15) and age units (ePatient.16)."
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "short" : "ePatient.05–10 - Patient home address",
      "comment" : "ePatient.05 line, ePatient.06 city, ePatient.07 county, ePatient.08 state, ePatient.09 ZIP, ePatient.10 country."
    },
    {
      "id" : "Patient.address.line",
      "path" : "Patient.address.line",
      "short" : "ePatient.05 - Patient's Home Address",
      "comment" : "NEMSIS ePatient.05. Usage: Optional/Nillable. PN: UnableToComplete. No NV."
    },
    {
      "id" : "Patient.address.city",
      "path" : "Patient.address.city",
      "short" : "ePatient.06 - Patient's Home City",
      "comment" : "NEMSIS ePatient.06. Usage: Optional/Nillable. DataType: CityGnisCode — convert GNIS numeric code to plain text city name (NDR-003). PN: UnableToComplete. No NV."
    },
    {
      "id" : "Patient.address.district",
      "path" : "Patient.address.district",
      "short" : "ePatient.07 - Patient's Home County",
      "comment" : "NEMSIS ePatient.07. Usage: Required/National/Nillable. DataType: ANSICountyCode (5-digit FIPS string). NV: NotRecorded, NotApplicable. No PN.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.state",
      "path" : "Patient.address.state",
      "short" : "ePatient.08 - Patient's Home State",
      "comment" : "NEMSIS ePatient.08. Usage: Required/National/Nillable. DataType: ANSIStateCode — convert 2-digit ANSI numeric to 2-letter USPS abbreviation (NDR-004). NV: NotRecorded, NotApplicable. No PN. US Core extensible binding to us-core-usps-state ValueSet.",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state"
      }
    },
    {
      "id" : "Patient.address.postalCode",
      "path" : "Patient.address.postalCode",
      "short" : "ePatient.09 - Patient's Home ZIP Code",
      "comment" : "NEMSIS ePatient.09. Usage: Required/National/Nillable. NV: NotRecorded, NotApplicable. No PN. 5-digit or ZIP+4 format."
    },
    {
      "id" : "Patient.address.country",
      "path" : "Patient.address.country",
      "short" : "ePatient.10 - Patient's Country of Residence",
      "comment" : "NEMSIS ePatient.10. Usage: Optional. DataType: ANSICountryCode. Use ISO 3166-1 alpha-2 (e.g., 'US'). No NV or PN.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.communication",
      "path" : "Patient.communication",
      "short" : "ePatient.24 - Patient's Preferred Language(s)",
      "comment" : "NEMSIS ePatient.24. Usage: Optional. Repeating (0..M). Not nillable. No NV or PN. NEMSIS uses ISO 639-2/B 3-letter codes (e.g., 'eng', 'spa') — map to BCP-47 for FHIR (e.g., 'en', 'es').",
      "mustSupport" : true
    },
    {
      "id" : "Patient.communication.language",
      "path" : "Patient.communication.language",
      "comment" : "US Core requires extensible binding to simple-language ValueSet. Map NEMSIS ISO 639-2/B 3-letter codes to BCP-47 (e.g., 'eng' → 'en', 'spa' → 'es')."
    }]
  }
}

```
