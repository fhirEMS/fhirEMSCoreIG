# Example EMS Vital Sign — SpO2 - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Vital Sign — SpO2**

## Example Observation: Example EMS Vital Sign — SpO2

Profile: [EMS Vital Signs Observation](StructureDefinition-ems-observation-vitalsigns.md)

**EMS Vital Obtained Prior to EMS Care**: No

**status**: Final

**category**: Vital Signs

**code**: Oxygen saturation in Arterial blood by Pulse oximetry

**subject**: [Robert M Johnson Male, DoB: 1979-03-22 ( http://example.org/ems/patients#PAT-2026-0042)](Patient-ex-ems-patient.md)

**encounter**: [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md)

**effective**: 2026-03-14 14:37:00-0800

**performer**: [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)

**value**: 94 % (Details: UCUM code% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ex-ems-spo2",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-vitalsigns"]
  },
  "extension" : [{
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-vital-obtained-prior",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0136",
        "code" : "N",
        "display" : "No"
      }]
    }
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "59408-5",
      "display" : "Oxygen saturation in Arterial blood by Pulse oximetry"
    },
    {
      "system" : "http://loinc.org",
      "code" : "2708-6"
    }]
  },
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "encounter" : {
    "reference" : "Encounter/ex-ems-encounter"
  },
  "effectiveDateTime" : "2026-03-14T14:37:00-08:00",
  "performer" : [{
    "reference" : "Practitioner/ex-ems-practitioner"
  }],
  "valueQuantity" : {
    "value" : 94,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  }
}

```
