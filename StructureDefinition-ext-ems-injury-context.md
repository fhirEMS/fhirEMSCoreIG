# EMS Injury Context - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Injury Context**

## Extension: EMS Injury Context 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-injury-context | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSInjuryContext |

Contextual data for NEMSIS eInjury not directly representable in FHIR Condition: mechanism of injury, CDC trauma triage criteria (high and moderate risk), vehicle impact area, patient location in vehicle, occupant safety equipment, airbag deployment, height of fall, and OSHA personal protective equipment.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Injury Condition](StructureDefinition-ems-condition-injury.md)
* Examples for this Extension: [Condition/ex-ems-condition-injury](Condition-ex-ems-condition-injury.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-injury-context.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-injury-context.csv), [Excel](StructureDefinition-ext-ems-injury-context.xlsx), [Schematron](StructureDefinition-ext-ems-injury-context.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-injury-context",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-injury-context",
  "version" : "0.2.0",
  "name" : "EMSInjuryContext",
  "title" : "EMS Injury Context",
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
  "description" : "Contextual data for NEMSIS eInjury not directly representable in FHIR Condition: mechanism of injury, CDC trauma triage criteria (high and moderate risk), vehicle impact area, patient location in vehicle, occupant safety equipment, airbag deployment, height of fall, and OSHA personal protective equipment.",
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
    "expression" : "Condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Injury Context",
      "definition" : "Contextual data for NEMSIS eInjury not directly representable in FHIR Condition: mechanism of injury, CDC trauma triage criteria (high and moderate risk), vehicle impact area, patient location in vehicle, occupant safety equipment, airbag deployment, height of fall, and OSHA personal protective equipment."
    },
    {
      "id" : "Extension.extension:mechanismOfInjury",
      "path" : "Extension.extension",
      "sliceName" : "mechanismOfInjury",
      "short" : "eInjury.02 - Mechanism of Injury",
      "comment" : "NEMSIS eInjury.02. Usage: Recommended. Nillable. NV: NotRecorded. Repeating (0..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:mechanismOfInjury.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:mechanismOfInjury.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "mechanismOfInjury"
    },
    {
      "id" : "Extension.extension:mechanismOfInjury.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-mechanism-of-injury"
      }
    },
    {
      "id" : "Extension.extension:traumaTriageHighRisk",
      "path" : "Extension.extension",
      "sliceName" : "traumaTriageHighRisk",
      "short" : "eInjury.03 - Trauma Triage Criteria (High Risk for Serious Injury)",
      "comment" : "NEMSIS eInjury.03. Usage: Required/National. Nillable. NV: NotRecorded. PN: ExamFindingNotPresent. CDC Field Triage Guideline red criteria. Repeating (1..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:traumaTriageHighRisk.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:traumaTriageHighRisk.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "traumaTriageHighRisk"
    },
    {
      "id" : "Extension.extension:traumaTriageHighRisk.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-trauma-triage-high-risk"
      }
    },
    {
      "id" : "Extension.extension:traumaTriageModerateRisk",
      "path" : "Extension.extension",
      "sliceName" : "traumaTriageModerateRisk",
      "short" : "eInjury.04 - Trauma Triage Criteria (Moderate Risk for Serious Injury)",
      "comment" : "NEMSIS eInjury.04. Usage: Required/National. Nillable. NV: NotRecorded. PN: ExamFindingNotPresent. CDC Field Triage Guideline yellow criteria. Repeating (1..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:traumaTriageModerateRisk.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:traumaTriageModerateRisk.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "traumaTriageModerateRisk"
    },
    {
      "id" : "Extension.extension:traumaTriageModerateRisk.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-trauma-triage-moderate-risk"
      }
    },
    {
      "id" : "Extension.extension:vehicleImpactArea",
      "path" : "Extension.extension",
      "sliceName" : "vehicleImpactArea",
      "short" : "eInjury.05 - Main Area of the Vehicle Impacted by the Collision",
      "comment" : "NEMSIS eInjury.05. Usage: Optional (State). 12-point clock diagram: 12 = front of vehicle, 3 = passenger (right) side, 6 = rear. Integer 1–12.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:vehicleImpactArea.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:vehicleImpactArea.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "vehicleImpactArea"
    },
    {
      "id" : "Extension.extension:vehicleImpactArea.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:patientVehicleLocation",
      "path" : "Extension.extension",
      "sliceName" : "patientVehicleLocation",
      "short" : "eInjury.06 - Location of Patient in Vehicle",
      "comment" : "NEMSIS eInjury.06. Usage: Optional. Seat row location of the patient at the time of the crash.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:patientVehicleLocation.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:patientVehicleLocation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "patientVehicleLocation"
    },
    {
      "id" : "Extension.extension:patientVehicleLocation.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-seat-row-location"
      }
    },
    {
      "id" : "Extension.extension:safetyEquipment",
      "path" : "Extension.extension",
      "sliceName" : "safetyEquipment",
      "short" : "eInjury.07 - Use of Occupant Safety Equipment",
      "comment" : "NEMSIS eInjury.07. Usage: Recommended. Nillable. NV: NotRecorded. Repeating (0..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:safetyEquipment.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:safetyEquipment.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "safetyEquipment"
    },
    {
      "id" : "Extension.extension:safetyEquipment.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-safety-equipment"
      }
    },
    {
      "id" : "Extension.extension:airbagDeployment",
      "path" : "Extension.extension",
      "sliceName" : "airbagDeployment",
      "short" : "eInjury.08 - Airbag Deployment",
      "comment" : "NEMSIS eInjury.08. Usage: Optional. Repeating (0..M).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:airbagDeployment.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:airbagDeployment.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "airbagDeployment"
    },
    {
      "id" : "Extension.extension:airbagDeployment.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airbag-deployment"
      }
    },
    {
      "id" : "Extension.extension:heightOfFall",
      "path" : "Extension.extension",
      "sliceName" : "heightOfFall",
      "short" : "eInjury.09 - Height of Fall (feet)",
      "comment" : "NEMSIS eInjury.09. Usage: Optional (State). Distance in feet the patient fell, measured from the lowest point of the patient to the ground. Classify same-level falls as 0 feet. UCUM unit [ft_i].",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:heightOfFall.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:heightOfFall.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "heightOfFall"
    },
    {
      "id" : "Extension.extension:heightOfFall.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.extension:heightOfFall.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:heightOfFall.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "fixedCode" : "[ft_i]"
    },
    {
      "id" : "Extension.extension:oshaPPE",
      "path" : "Extension.extension",
      "sliceName" : "oshaPPE",
      "short" : "eInjury.10 - OSHA Personal Protective Equipment Used",
      "comment" : "NEMSIS eInjury.10. Usage: Optional. PPE in use by the patient at the time of a work-related injury. Repeating (0..M).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:oshaPPE.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:oshaPPE.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "oshaPPE"
    },
    {
      "id" : "Extension.extension:oshaPPE.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-osha-ppe"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-injury-context"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
