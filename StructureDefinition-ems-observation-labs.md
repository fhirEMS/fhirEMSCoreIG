# EMS Lab and Imaging Observation - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Lab and Imaging Observation**

## Resource Profile: EMS Lab and Imaging Observation 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-labs | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSObservationLabs |

 
Documents lab results and imaging study results obtained during an EMS response. Covers NEMSIS eLabs.01–08. All eLabs elements are Optional. Lab results (eLabs.03/04) are represented as individual Observations; imaging study results (eLabs.05/06) are represented similarly with appropriate LOINC codes. 

**Usages:**

* Examples for this Profile: [Observation/ex-ems-observation-labs](Observation-ex-ems-observation-labs.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-observation-labs.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-observation-labs.csv), [Excel](StructureDefinition-ems-observation-labs.xlsx), [Schematron](StructureDefinition-ems-observation-labs.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-observation-labs",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-labs",
  "version" : "0.2.0",
  "name" : "EMSObservationLabs",
  "title" : "EMS Lab and Imaging Observation",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Documents lab results and imaging study results obtained during an EMS response. Covers NEMSIS eLabs.01–08. All eLabs elements are Optional. Lab results (eLabs.03/04) are represented as individual Observations; imaging study results (eLabs.05/06) are represented similarly with appropriate LOINC codes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-clinical-result",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.extension:obtainedPrior",
      "path" : "Observation.extension",
      "sliceName" : "obtainedPrior",
      "short" : "eLabs.02 - Obtained Prior to this Unit's EMS Care",
      "comment" : "NEMSIS eLabs.02. Usage: Optional (Yes/No). Whether the lab or imaging study was obtained prior to this EMS unit's care.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-vital-obtained-prior"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Observation status (final | preliminary | amended)"
    },
    {
      "id" : "Observation.category:us-core",
      "path" : "Observation.category",
      "sliceName" : "us-core",
      "short" : "Category — 'laboratory' for lab results; 'imaging' for imaging studies",
      "comment" : "NEMSIS eLabs.03/04 use category 'laboratory'. NEMSIS eLabs.05/06 use category 'imaging'.",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/core/ValueSet/us-core-clinical-result-observation-category"
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "eLabs.03 - Lab Result Type / eLabs.05 - Imaging Study Type",
      "comment" : "NEMSIS eLabs.03 (lab result type, EMSLabResultTypeVS) or eLabs.05 (imaging study type, EMSImagingStudyTypeVS). LOINC codes are preferred where available for lab analytes. NEMSIS eLabs codes are acceptable when no LOINC equivalent exists."
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }]
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.effective[x]:effectiveDateTime",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
      "short" : "eLabs.01 - Date/Time Lab or Imaging Study Performed",
      "comment" : "NEMSIS eLabs.01. Usage: Optional. Date/Time the lab or imaging study was performed or resulted.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "eLabs.04 - Lab Result Value / eLabs.06 - Imaging Study Results",
      "comment" : "NEMSIS eLabs.04 (numeric lab result) → Quantity with UCUM units. NEMSIS eLabs.06 (imaging results text) → string. NEMSIS eLabs.08 (graphic binary) is not represented in FHIR Observation; use DocumentReference for binary data.",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "Quantity"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "CodeableConcept"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "eLabs.06 - Imaging Study Results (textual interpretation)",
      "comment" : "NEMSIS eLabs.06. Usage: Optional. Free-text imaging study result narrative when valueString is not sufficient.",
      "mustSupport" : true
    }]
  }
}

```
