# EMS Scene Details - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Scene Details**

## Extension: EMS Scene Details 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-scene-details | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSSceneDetails |

Groups key NEMSIS eScene data elements that have no FHIR Location base equivalent: eScene.01 (First EMS Unit on Scene), eScene.06 (Number of Patients at Scene), eScene.07 (Mass Casualty Incident), eScene.08 (MCI Triage Classification), eScene.13 (Incident Facility or Location Name). All Required/National unless noted.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Scene Location](StructureDefinition-ems-location-scene.md)
* Examples for this Extension: [Interstate 15 NB mm 58.4](Location-ex-ems-location-scene.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-scene-details.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-scene-details.csv), [Excel](StructureDefinition-ext-ems-scene-details.xlsx), [Schematron](StructureDefinition-ext-ems-scene-details.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-scene-details",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-scene-details",
  "version" : "0.2.0",
  "name" : "EMSSceneDetails",
  "title" : "EMS Scene Details",
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
  "description" : "Groups key NEMSIS eScene data elements that have no FHIR Location base equivalent:\neScene.01 (First EMS Unit on Scene), eScene.06 (Number of Patients at Scene),\neScene.07 (Mass Casualty Incident), eScene.08 (MCI Triage Classification),\neScene.13 (Incident Facility or Location Name). All Required/National unless noted.",
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
    "expression" : "Location"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Scene Details",
      "definition" : "Groups key NEMSIS eScene data elements that have no FHIR Location base equivalent:\neScene.01 (First EMS Unit on Scene), eScene.06 (Number of Patients at Scene),\neScene.07 (Mass Casualty Incident), eScene.08 (MCI Triage Classification),\neScene.13 (Incident Facility or Location Name). All Required/National unless noted."
    },
    {
      "id" : "Extension.extension:firstUnitOnScene",
      "path" : "Extension.extension",
      "sliceName" : "firstUnitOnScene",
      "short" : "eScene.01 - First EMS Unit on Scene",
      "comment" : "NEMSIS eScene.01. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Whether this unit was the first EMS unit to arrive at the scene.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:firstUnitOnScene.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:firstUnitOnScene.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "firstUnitOnScene"
    },
    {
      "id" : "Extension.extension:firstUnitOnScene.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/yesnodontknow"
      }
    },
    {
      "id" : "Extension.extension:numberOfPatients",
      "path" : "Extension.extension",
      "sliceName" : "numberOfPatients",
      "short" : "eScene.06 - Number of Patients at Scene",
      "comment" : "NEMSIS eScene.06. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:numberOfPatients.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:numberOfPatients.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "numberOfPatients"
    },
    {
      "id" : "Extension.extension:numberOfPatients.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "positiveInt"
      }]
    },
    {
      "id" : "Extension.extension:massCasualtyIncident",
      "path" : "Extension.extension",
      "sliceName" : "massCasualtyIncident",
      "short" : "eScene.07 - Mass Casualty Incident",
      "comment" : "NEMSIS eScene.07. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Whether this event is classified as a Mass Casualty Incident.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:massCasualtyIncident.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:massCasualtyIncident.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "massCasualtyIncident"
    },
    {
      "id" : "Extension.extension:massCasualtyIncident.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/yesnodontknow"
      }
    },
    {
      "id" : "Extension.extension:mciTriageClass",
      "path" : "Extension.extension",
      "sliceName" : "mciTriageClass",
      "short" : "eScene.08 - Triage Classification for MCI Patient",
      "comment" : "NEMSIS eScene.08. Usage: Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable. Only populated when eScene.07 = Yes (MCI). START/JumpSTART triage color.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:mciTriageClass.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:mciTriageClass.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "mciTriageClass"
    },
    {
      "id" : "Extension.extension:mciTriageClass.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-mci-triage-class"
      }
    },
    {
      "id" : "Extension.extension:facilityName",
      "path" : "Extension.extension",
      "sliceName" : "facilityName",
      "short" : "eScene.13 - Incident Facility or Location Name",
      "comment" : "NEMSIS eScene.13. Usage: Optional. The name of a facility or named location where the incident occurred.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:facilityName.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:facilityName.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "facilityName"
    },
    {
      "id" : "Extension.extension:facilityName.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-scene-details"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
