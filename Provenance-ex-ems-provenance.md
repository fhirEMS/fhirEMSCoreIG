# Example EMS Provenance — Transfer of Care Signature - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Provenance — Transfer of Care Signature**

## Example Provenance: Example EMS Provenance — Transfer of Care Signature

Profile: [EMS Provenance — PCR Signature](StructureDefinition-ems-provenance.md)

Provenance for [Composition EMS Patient Care Report](Composition-ex-ems-composition.md)

Summary

| | |
| :--- | :--- |
| Recorded | 2026-03-14 15:08:00-0800 |

**Agents**

* **Type**: Author
  * **who**: [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)
  * **On Behalf Of**: [Organization Riverside County EMS Agency](Organization-ex-ems-organization-agency.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "ex-ems-provenance",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-provenance"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "signerType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-other",
          "code" : "4512003",
          "display" : "EMS Primary Care Provider (for this event)"
        }]
      }
    },
    {
      "url" : "signatureReason",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-other",
          "code" : "4513007",
          "display" : "Transfer of Patient Care"
        }]
      }
    },
    {
      "url" : "signatureStatus",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-other",
          "code" : "4515031",
          "display" : "Signed"
        }]
      }
    },
    {
      "url" : "signatureFileName",
      "valueString" : "signature-p1234.png"
    },
    {
      "url" : "signatureFileType",
      "valueString" : "image/png"
    },
    {
      "url" : "signerName",
      "valueHumanName" : {
        "family" : "Smith",
        "given" : ["John"]
      }
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-signature-context"
  }],
  "target" : [{
    "reference" : "Composition/ex-ems-composition"
  }],
  "recorded" : "2026-03-14T15:08:00-08:00",
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code" : "author"
      }]
    },
    "who" : {
      "reference" : "Practitioner/ex-ems-practitioner"
    },
    "onBehalfOf" : {
      "reference" : "Organization/ex-ems-organization-agency"
    }
  }],
  "signature" : [{
    "type" : [{
      "system" : "urn:iso-astm:E1762-95:2013",
      "code" : "1.2.840.10065.1.12.1.1",
      "display" : "Author's Signature"
    }],
    "when" : "2026-03-14T15:08:00-08:00",
    "who" : {
      "reference" : "Practitioner/ex-ems-practitioner"
    },
    "sigFormat" : "image/png",
    "data" : "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNkYPhfDwAChwGA60e6kgAAAABJRU5ErkJggg=="
  }]
}

```
