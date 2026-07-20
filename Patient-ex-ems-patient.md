# Example EMS Patient — MVA Victim - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Patient — MVA Victim**

## Example Patient: Example EMS Patient — MVA Victim

Profile: [EMS Patient](StructureDefinition-ems-patient.md)

Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)

-------

| | |
| :--- | :--- |
| Marital Status: |  |
| Contact Detail | 1425 Oak Grove Rd Moreno Valley CA 92553 US |
| Next-of-Kin: | * Susan Johnson 
* ph: 951-555-0147
 |
| [Barriers to Patient Care](StructureDefinition-ext-ems-patient-barrier.md) | None Noted |
| [Patient Home Census Tract](StructureDefinition-ext-ems-census-tract.md) | 06065042518 |
| [US Core Birth Sex Extension](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-birthsex.html) | M |
| EMS Patient Estimated Age: | * value: 47
* unit: Years
 |
| US Core Race Extension: | * ombCategory: [CDC Race and Ethnicity: 2106-3](http://terminology.hl7.org/5.5.0/CodeSystem-CDCREC.html#CDCREC-2106-3) (White)
* text: White
 |
| [Alternate Home Residence](StructureDefinition-ext-ems-alternate-residence.md) | Homeless |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ex-ems-patient",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "ombCategory",
      "valueCoding" : {
        "system" : "urn:oid:2.16.840.1.113883.6.238",
        "code" : "2106-3",
        "display" : "White"
      }
    },
    {
      "url" : "text",
      "valueString" : "White"
    }],
    "url" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
  },
  {
    "url" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex",
    "valueCode" : "M"
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-census-tract",
    "valueString" : "06065042518"
  },
  {
    "extension" : [{
      "url" : "value",
      "valueDecimal" : 47
    },
    {
      "url" : "unit",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/nemsis-patient",
          "code" : "2516009",
          "display" : "Years"
        }]
      }
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-patient-age"
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-alternate-residence",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/nemsis-patient",
        "code" : "2522001",
        "display" : "Homeless"
      }]
    }
  },
  {
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-patient-barrier",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
        "code" : "3101009",
        "display" : "None Noted"
      }]
    }
  }],
  "identifier" : [{
    "system" : "http://example.org/ems/patients",
    "value" : "PAT-2026-0042"
  }],
  "name" : [{
    "family" : "Johnson",
    "given" : ["Robert", "M"]
  }],
  "gender" : "male",
  "birthDate" : "1979-03-22",
  "address" : [{
    "line" : ["1425 Oak Grove Rd"],
    "city" : "Moreno Valley",
    "state" : "CA",
    "postalCode" : "92553",
    "country" : "US"
  }],
  "maritalStatus" : {
    "extension" : [{
      "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-not-value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-not-values",
          "code" : "NV.NotRecorded",
          "display" : "Not Recorded"
        }]
      }
    }]
  },
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
        "code" : "N"
      }]
    }],
    "name" : {
      "family" : "Johnson",
      "given" : ["Susan"]
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "951-555-0147"
    }]
  }]
}

```
