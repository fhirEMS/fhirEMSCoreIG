# EMS Airway Management Observation - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Airway Management Observation**

## Resource Profile: EMS Airway Management Observation 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-airway | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSObservationAirway |

 
Documents an airway management event during an EMS response. NEMSIS eAirway covers advanced airway device placement, confirmation, complications, and failure reasons. eAirway.01–11 are captured primarily through ext-ems-airway-context. The observation code identifies the airway procedure type (SNOMED). The crew member (eAirway.07) is captured via performer. 

**Usages:**

* Examples for this Profile: [Observation/ex-ems-observation-airway](Observation-ex-ems-observation-airway.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-observation-airway.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-observation-airway.csv), [Excel](StructureDefinition-ems-observation-airway.xlsx), [Schematron](StructureDefinition-ems-observation-airway.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-observation-airway",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-airway",
  "version" : "0.2.0",
  "name" : "EMSObservationAirway",
  "title" : "EMS Airway Management Observation",
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
  "description" : "Documents an airway management event during an EMS response. NEMSIS eAirway covers advanced airway device placement, confirmation, complications, and failure reasons. eAirway.01–11 are captured primarily through ext-ems-airway-context. The observation code identifies the airway procedure type (SNOMED). The crew member (eAirway.07) is captured via performer.",
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
      "id" : "Observation.extension:airwayContext",
      "path" : "Observation.extension",
      "sliceName" : "airwayContext",
      "short" : "eAirway — Airway management details (NEMSIS eAirway.01–11)",
      "comment" : "Complex extension containing all NEMSIS eAirway contextual elements.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-airway-context"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Observation status — final",
      "patternCode" : "final"
    },
    {
      "id" : "Observation.category:us-core",
      "path" : "Observation.category",
      "sliceName" : "us-core",
      "comment" : "US Core requires category 1..*. Airway management events use 'procedure' category.",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "procedure",
          "display" : "Procedure"
        }]
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "eAirway — Airway management (SNOMED 182682004)",
      "comment" : "NEMSIS eAirway. Overarching SNOMED code for the airway management event. Specific device or procedure details in extension[airwayContext].",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "182682004",
          "display" : "Emergency laryngeal intubation"
        }]
      }
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
      "short" : "eAirway.02 - Date/Time Airway Device Placement Confirmed",
      "comment" : "NEMSIS eAirway.02. Usage: Recommended. NV: NotRecorded. Also available in extension[airwayContext].confirmedDateTime.",
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
      "short" : "eAirway.07 - EMS Crew Member ID",
      "comment" : "NEMSIS eAirway.07. Usage: Recommended. NV: NotRecorded. Reference to the practitioner who performed the airway management.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "comment" : "US Core requires value[x] MS; must not be prohibited (0..0 violates conformance). For airway management, detail is in extension[airwayContext]. Leave absent and populate dataAbsentReason when no scalar result applies."
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "comment" : "Use dataAbsentReason when value[x] is not populated for airway management observations."
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:tubeDepth",
      "path" : "Observation.component",
      "sliceName" : "tubeDepth",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tubeDepth.code",
      "path" : "Observation.component.code",
      "short" : "eAirway.05 - Tube Depth (LOINC 19841-6)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "19841-6"
        }]
      }
    },
    {
      "id" : "Observation.component:tubeDepth.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:tubeDepth.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:tubeDepth.value[x].code",
      "path" : "Observation.component.value[x].code",
      "short" : "eAirway.05 - Tube depth in centimeters",
      "comment" : "NEMSIS eAirway.05. Usage: Optional. Endotracheal tube depth measured at the lip in centimeters.",
      "patternCode" : "cm"
    }]
  }
}

```
