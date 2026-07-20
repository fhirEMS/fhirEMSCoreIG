# Example EMS Composition — PCR Document - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Composition — PCR Document**

## Example Composition: Example EMS Composition — PCR Document

Profile: [EMS Patient Care Report (PCR)](StructureDefinition-ems-composition.md)

**identifier**: `http://example.org/ems/pcr`/PCR-2026-03-14-0042

**status**: Final

**type**: EMS patient care report - version 3 Document NEMSIS

**encounter**: [Encounter: extension = Emergency Response (Primary Response Area),Ground Transport (ALS Equipped),Emergent (Immediate Response),Lights and Sirens,,,Motor vehicle accident,,,,,,Injury-Head,Head,Transport by This EMS Unit (This Crew Only),,; identifier = Visit number: 2026-03-14-0042,Resource identifier: 2026-031400042-1; status = finished; class = emergency (ActCode#EMER); type = Emergency medical services; period = 2026-03-14 14:22:00-0800 --> 2026-03-14 15:08:00-0800](Encounter-ex-ems-encounter.md)

**date**: 2026-03-14 18:45:00-0800

**author**: 

* [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)
* [Organization Riverside County EMS Agency](Organization-ex-ems-organization-agency.md)

**title**: EMS Patient Care Report

### Attesters

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Mode** | **Time** | **Party** |
| * | Legal | 2026-03-14 19:30:00-0800 | [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md) |

**custodian**: [Organization Riverside County EMS Agency](Organization-ex-ems-organization-agency.md)



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "ex-ems-composition",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-composition"]
  },
  "identifier" : {
    "system" : "http://example.org/ems/pcr",
    "value" : "PCR-2026-03-14-0042"
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "67796-3",
      "display" : "EMS patient care report - version 3 Document NEMSIS"
    }]
  },
  "subject" : {
    "reference" : "Patient/ex-ems-patient"
  },
  "encounter" : {
    "reference" : "Encounter/ex-ems-encounter"
  },
  "date" : "2026-03-14T18:45:00-08:00",
  "author" : [{
    "reference" : "Practitioner/ex-ems-practitioner"
  },
  {
    "reference" : "Organization/ex-ems-organization-agency"
  }],
  "title" : "EMS Patient Care Report",
  "attester" : [{
    "mode" : "legal",
    "time" : "2026-03-14T19:30:00-08:00",
    "party" : {
      "reference" : "Practitioner/ex-ems-practitioner"
    }
  }],
  "custodian" : {
    "reference" : "Organization/ex-ems-organization-agency"
  },
  "section" : [{
    "code" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
        "code" : "section-eResponse",
        "display" : "EMS Response"
      }]
    },
    "entry" : [{
      "reference" : "Encounter/ex-ems-encounter"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
        "code" : "section-eTimes",
        "display" : "EMS Times"
      }]
    },
    "entry" : [{
      "reference" : "Encounter/ex-ems-encounter"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "29762-2",
        "display" : "Social history note"
      }]
    },
    "entry" : [{
      "reference" : "Patient/ex-ems-patient"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
        "code" : "section-eScene",
        "display" : "EMS Scene"
      }]
    },
    "entry" : [{
      "reference" : "Location/ex-ems-location-scene"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "55110-1",
        "display" : "Conclusions [Interpretation] Document"
      }]
    },
    "entry" : [{
      "reference" : "Condition/ex-ems-condition"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "18776-5",
        "display" : "Plan of care note"
      }]
    },
    "entry" : [{
      "reference" : "Location/ex-ems-location-destination"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8716-3",
        "display" : "Vital signs note"
      }]
    },
    "entry" : [{
      "reference" : "Observation/ex-ems-observation-bp"
    },
    {
      "reference" : "Observation/ex-ems-heart-rate"
    },
    {
      "reference" : "Observation/ex-ems-spo2"
    },
    {
      "reference" : "Observation/ex-ems-respiratory-rate"
    },
    {
      "reference" : "Observation/ex-ems-observation-gcs"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "29554-3",
        "display" : "Procedure Narrative"
      }]
    },
    "entry" : [{
      "reference" : "Procedure/ex-ems-procedure"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "29549-3",
        "display" : "Medication administered Narrative"
      }]
    },
    "entry" : [{
      "reference" : "MedicationAdministration/ex-ems-medicationadministration"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
        "code" : "section-eAirway",
        "display" : "EMS Airway Management"
      }]
    },
    "entry" : [{
      "reference" : "Observation/ex-ems-observation-airway"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
        "code" : "section-eArrest",
        "display" : "EMS Cardiac Arrest"
      }]
    },
    "entry" : [{
      "reference" : "Condition/ex-ems-condition-arrest"
    }]
  }]
}

```
