# Barriers to Patient Care - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Barriers to Patient Care**

## Extension: Barriers to Patient Care 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-patient-barrier | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSPatientBarrier |

NEMSIS eHistory.01 - Barriers to the assessment or care of the patient (e.g., language, hearing impairment, unconscious). Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable.

**Context of Use**

**Usage info**

**Usages:**

* Examples for this Extension: [Patient/ex-ems-patient](Patient-ex-ems-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-patient-barrier.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-patient-barrier.csv), [Excel](StructureDefinition-ext-ems-patient-barrier.xlsx), [Schematron](StructureDefinition-ext-ems-patient-barrier.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-patient-barrier",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-patient-barrier",
  "version" : "0.2.0",
  "name" : "EMSPatientBarrier",
  "title" : "Barriers to Patient Care",
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
  "description" : "NEMSIS eHistory.01 - Barriers to the assessment or care of the patient (e.g., language, hearing impairment, unconscious). Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable.",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Barriers to Patient Care",
      "definition" : "NEMSIS eHistory.01 - Barriers to the assessment or care of the patient (e.g., language, hearing impairment, unconscious). Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-patient-barrier"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-barrier-to-patient-care"
      }
    }]
  }
}

```
