# EMS Vital Obtained Prior to EMS Care - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Vital Obtained Prior to EMS Care**

## Extension: EMS Vital Obtained Prior to EMS Care 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-vital-obtained-prior | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSVitalObtainedPrior |

NEMSIS eVitals.02 - Whether this vital sign set was obtained by another provider prior to this EMS unit's care. Required/National. Nillable. NV: NotRecorded, NotApplicable.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Blood Pressure Observation](StructureDefinition-ems-observation-bp.md), [EMS Glasgow Coma Score (GCS) Panel](StructureDefinition-ems-observation-gcs.md), [EMS Lab and Imaging Observation](StructureDefinition-ems-observation-labs.md) and [EMS Vital Signs Observation](StructureDefinition-ems-observation-vitalsigns.md)
* Examples for this Extension: [Observation/ex-ems-heart-rate](Observation-ex-ems-heart-rate.md), [Observation/ex-ems-observation-bp](Observation-ex-ems-observation-bp.md), [Observation/ex-ems-observation-gcs](Observation-ex-ems-observation-gcs.md), [Observation/ex-ems-observation-labs](Observation-ex-ems-observation-labs.md)... Show 2 more, [Observation/ex-ems-respiratory-rate](Observation-ex-ems-respiratory-rate.md) and [Observation/ex-ems-spo2](Observation-ex-ems-spo2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-vital-obtained-prior.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-vital-obtained-prior.csv), [Excel](StructureDefinition-ext-ems-vital-obtained-prior.xlsx), [Schematron](StructureDefinition-ext-ems-vital-obtained-prior.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-vital-obtained-prior",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-vital-obtained-prior",
  "version" : "0.2.0",
  "name" : "EMSVitalObtainedPrior",
  "title" : "EMS Vital Obtained Prior to EMS Care",
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
  "description" : "NEMSIS eVitals.02 - Whether this vital sign set was obtained by another provider prior to this EMS unit's care. Required/National. Nillable. NV: NotRecorded, NotApplicable.",
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
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Vital Obtained Prior to EMS Care",
      "definition" : "NEMSIS eVitals.02 - Whether this vital sign set was obtained by another provider prior to this EMS unit's care. Required/National. Nillable. NV: NotRecorded, NotApplicable."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-vital-obtained-prior"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/yesnodontknow"
      }
    }]
  }
}

```
