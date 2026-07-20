# Example EMS Document Reference — 12-Lead ECG - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Document Reference — 12-Lead ECG**

## Example DocumentReference: Example EMS Document Reference — 12-Lead ECG

Profile: [EMS Document Reference](StructureDefinition-ems-documentreference.md)

**EMS External Document Type**: ECG/Lab Results

**status**: Current

**type**: EKG study

**category**: Clinical Note

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**date**: 2026-03-14 14:45:00-0800

**author**: [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)

**custodian**: [Organization Riverside County EMS Agency](Organization-ex-ems-organization-agency.md)

> **content**

### Attachments

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** | **Creation** |
| * | application/pdf | [http://example.org/ems/attachments/12-lead-ecg-2026-03-14.pdf](http://example.org/ems/attachments/12-lead-ecg-2026-03-14.pdf) | 12-lead-ecg-2026-03-14.pdf | 2026-03-14 14:38:00-0800 |


### Contexts

| | |
| :--- | :--- |
| - | **Encounter** |
| * | [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "ex-ems-documentreference",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-documentreference"]
  },
  "extension" : [{
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-document-type",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-other",
        "code" : "4509009",
        "display" : "ECG/Lab Results"
      }]
    }
  }],
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11524-6",
      "display" : "EKG study"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category",
      "code" : "clinical-note"
    }]
  }],
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "date" : "2026-03-14T14:45:00-08:00",
  "author" : [{
    "reference" : "Practitioner/ex-ems-practitioner"
  }],
  "custodian" : {
    "reference" : "Organization/ex-ems-organization-agency"
  },
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "http://example.org/ems/attachments/12-lead-ecg-2026-03-14.pdf",
      "title" : "12-lead-ecg-2026-03-14.pdf",
      "creation" : "2026-03-14T14:38:00-08:00"
    }
  }],
  "context" : {
    "encounter" : [{
      "reference" : "Encounter/ex-ems-encounter"
    }]
  }
}

```
