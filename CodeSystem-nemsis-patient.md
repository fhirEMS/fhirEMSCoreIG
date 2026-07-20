# NEMSIS ePatient Codes - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS ePatient Codes**

## CodeSystem: NEMSIS ePatient Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/nemsis-patient | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISPatientCodes |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.17 | |

 
Enumeration codes from the NEMSIS 3.5.1.251001CP2 ePatient section. Includes codes for Sex (ePatient.25), Age Units (ePatient.16), and Alternate Home Residence (ePatient.22). Race codes (ePatient.14) are mapped to OMB/CDC categories used in us-core-race. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSAgeUnitsVS](ValueSet-vs-ems-age-units.md)
* [EMSAlternateResidenceVS](ValueSet-vs-ems-alternate-residence.md)
* [EMSSexVS](ValueSet-vs-ems-sex.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nemsis-patient",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/nemsis-patient",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.17"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISPatientCodes",
  "title" : "NEMSIS ePatient Codes",
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
  "description" : "Enumeration codes from the NEMSIS 3.5.1.251001CP2 ePatient section.\nIncludes codes for Sex (ePatient.25), Age Units (ePatient.16),\nand Alternate Home Residence (ePatient.22).\nRace codes (ePatient.14) are mapped to OMB/CDC categories used in us-core-race.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "9919001",
    "display" : "Female",
    "definition" : "NEMSIS ePatient.25: Female sex as documented at the time of the EMS encounter."
  },
  {
    "code" : "9919003",
    "display" : "Male",
    "definition" : "NEMSIS ePatient.25: Male sex as documented at the time of the EMS encounter."
  },
  {
    "code" : "9919005",
    "display" : "Unknown",
    "definition" : "NEMSIS ePatient.25: Sex is unknown or unable to be determined."
  },
  {
    "code" : "2516001",
    "display" : "Days",
    "definition" : "NEMSIS ePatient.16: Patient age expressed in days."
  },
  {
    "code" : "2516003",
    "display" : "Hours",
    "definition" : "NEMSIS ePatient.16: Patient age expressed in hours."
  },
  {
    "code" : "2516005",
    "display" : "Minutes",
    "definition" : "NEMSIS ePatient.16: Patient age expressed in minutes."
  },
  {
    "code" : "2516007",
    "display" : "Months",
    "definition" : "NEMSIS ePatient.16: Patient age expressed in months."
  },
  {
    "code" : "2516009",
    "display" : "Years",
    "definition" : "NEMSIS ePatient.16: Patient age expressed in years."
  },
  {
    "code" : "2522001",
    "display" : "Homeless",
    "definition" : "NEMSIS ePatient.22: Patient's primary residence is a shelter, street, or other location without permanent housing."
  },
  {
    "code" : "2522003",
    "display" : "Migrant Worker",
    "definition" : "NEMSIS ePatient.22: Patient is a migrant worker without a fixed permanent address."
  },
  {
    "code" : "2522005",
    "display" : "Foreign Visitor",
    "definition" : "NEMSIS ePatient.22: Patient is a visitor from a foreign country without a US home address."
  }]
}

```
