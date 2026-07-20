# Example EMS AllergyIntolerance — Penicillin - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS AllergyIntolerance — Penicillin**

## Example AllergyIntolerance: Example EMS AllergyIntolerance — Penicillin

Profile: [EMS AllergyIntolerance](StructureDefinition-ems-allergyintolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Unconfirmed

**category**: Medication

**code**: penicillin G

**patient**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**recorder**: [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)

### Reactions

| | | |
| :--- | :--- | :--- |
| - | **Manifestation** | **Severity** |
| * | Eruption of skin | Mild |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "ex-ems-allergyintolerance",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-allergyintolerance"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "unconfirmed"
    }]
  },
  "category" : ["medication"],
  "code" : {
    "coding" : [{
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "7980",
      "display" : "penicillin G"
    }]
  },
  "patient" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "recorder" : {
    "reference" : "Practitioner/ex-ems-practitioner"
  },
  "reaction" : [{
    "manifestation" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "271807003",
        "display" : "Eruption of skin"
      }]
    }],
    "severity" : "mild"
  }]
}

```
