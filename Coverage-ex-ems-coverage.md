# Example EMS Coverage — Medicare Part B - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Coverage — Medicare Part B**

## Example Coverage: Example EMS Coverage — Medicare Part B

Profile: [EMS Coverage (Insurance)](StructureDefinition-ems-coverage.md)

**EMS Payer Type**: Medicare Part B

**status**: Active

**subscriber**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**subscriberId**: 1EG4-TE5-MK72

**beneficiary**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**relationship**: Self

**payor**: Centers for Medicare & Medicaid Services (Identifier: [United States National Provider Identifier](http://terminology.hl7.org/5.5.0/NamingSystem-npi.html)/1234000002)

**order**: 1



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "ex-ems-coverage",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-coverage"]
  },
  "extension" : [{
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-payer-type",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payer-type",
        "code" : "MB",
        "display" : "Medicare Part B"
      }]
    }
  }],
  "status" : "active",
  "subscriber" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "subscriberId" : "1EG4-TE5-MK72",
  "beneficiary" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "relationship" : {
    "coding" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-payment",
      "code" : "2622001",
      "display" : "Self"
    }]
  },
  "payor" : [{
    "identifier" : {
      "system" : "http://hl7.org/fhir/sid/us-npi",
      "value" : "1234000002"
    },
    "display" : "Centers for Medicare & Medicaid Services"
  }],
  "order" : 1
}

```
