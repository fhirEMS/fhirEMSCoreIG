# EMS Patient Estimated Age - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Patient Estimated Age**

## Extension: EMS Patient Estimated Age 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-patient-age | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSPatientAge |

Captures NEMSIS ePatient.15 (Age value) and ePatient.16 (Age Units) when the patient's date of birth (ePatient.17) is unknown. Both source elements are Required/National. When birthDate is known, derive age computationally at the time of the encounter; this extension is not needed in that case.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Patient](StructureDefinition-ems-patient.md)
* Examples for this Extension: [Patient/ex-ems-patient](Patient-ex-ems-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-patient-age.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-patient-age.csv), [Excel](StructureDefinition-ext-ems-patient-age.xlsx), [Schematron](StructureDefinition-ext-ems-patient-age.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-patient-age",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-patient-age",
  "version" : "0.2.0",
  "name" : "EMSPatientAge",
  "title" : "EMS Patient Estimated Age",
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
  "description" : "Captures NEMSIS ePatient.15 (Age value) and ePatient.16 (Age Units) when the\npatient's date of birth (ePatient.17) is unknown. Both source elements are\nRequired/National. When birthDate is known, derive age computationally at the\ntime of the encounter; this extension is not needed in that case.",
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
      "short" : "EMS Patient Estimated Age",
      "definition" : "Captures NEMSIS ePatient.15 (Age value) and ePatient.16 (Age Units) when the\npatient's date of birth (ePatient.17) is unknown. Both source elements are\nRequired/National. When birthDate is known, derive age computationally at the\ntime of the encounter; this extension is not needed in that case."
    },
    {
      "id" : "Extension.extension:value",
      "path" : "Extension.extension",
      "sliceName" : "value",
      "short" : "ePatient.15 - Age value",
      "comment" : "NEMSIS ePatient.15. Usage: Required/National/Nillable. NV: NotRecorded, NotApplicable. PN: Approximate (age is an estimate, not exact). DataType: Age (decimal).",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:value.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:value.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "value"
    },
    {
      "id" : "Extension.extension:value.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Extension.extension:unit",
      "path" : "Extension.extension",
      "sliceName" : "unit",
      "short" : "ePatient.16 - Age Units",
      "comment" : "NEMSIS ePatient.16. Usage: Required/National/Nillable. NV: NotRecorded, NotApplicable. No PN. Codes: Minutes (2516005), Hours (2516003), Days (2516001), Months (2516007), Years (2516009).",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:unit.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:unit.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "unit"
    },
    {
      "id" : "Extension.extension:unit.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-age-units"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-patient-age"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
