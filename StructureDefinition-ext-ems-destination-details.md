# EMS Destination Details - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Destination Details**

## Extension: EMS Destination Details 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-destination-details | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSDestinationDetails |

Groups NEMSIS destination-selection and pre-arrival alert elements for the receiving facility. All clinical destination elements are Required/National.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Encounter](StructureDefinition-ems-encounter.md)
* Examples for this Extension: [Encounter/ex-ems-encounter](Encounter-ex-ems-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-destination-details.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-destination-details.csv), [Excel](StructureDefinition-ext-ems-destination-details.xlsx), [Schematron](StructureDefinition-ext-ems-destination-details.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-destination-details",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-destination-details",
  "version" : "0.2.0",
  "name" : "EMSDestinationDetails",
  "title" : "EMS Destination Details",
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
  "description" : "Groups NEMSIS destination-selection and pre-arrival alert elements for the receiving facility. All clinical destination elements are Required/National.",
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
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Destination Details",
      "definition" : "Groups NEMSIS destination-selection and pre-arrival alert elements for the receiving facility. All clinical destination elements are Required/National."
    },
    {
      "id" : "Extension.extension:reasonForChoosingDestination",
      "path" : "Extension.extension",
      "sliceName" : "reasonForChoosingDestination",
      "short" : "eDisposition.20 - Reason for Choosing Destination",
      "comment" : "NEMSIS eDisposition.20. Usage: Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:reasonForChoosingDestination.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:reasonForChoosingDestination.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "reasonForChoosingDestination"
    },
    {
      "id" : "Extension.extension:reasonForChoosingDestination.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-destination-reason"
      }
    },
    {
      "id" : "Extension.extension:typeOfDestination",
      "path" : "Extension.extension",
      "sliceName" : "typeOfDestination",
      "short" : "eDisposition.21 - Type of Destination",
      "comment" : "NEMSIS eDisposition.21. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:typeOfDestination.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:typeOfDestination.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "typeOfDestination"
    },
    {
      "id" : "Extension.extension:typeOfDestination.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-destination-type"
      }
    },
    {
      "id" : "Extension.extension:hospitalInPatientDestination",
      "path" : "Extension.extension",
      "sliceName" : "hospitalInPatientDestination",
      "short" : "eDisposition.22 - Hospital In-Patient Destination",
      "comment" : "NEMSIS eDisposition.22. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. The specific in-hospital unit or bed type the patient was delivered to.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:hospitalInPatientDestination.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:hospitalInPatientDestination.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "hospitalInPatientDestination"
    },
    {
      "id" : "Extension.extension:hospitalInPatientDestination.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-hospital-destination"
      }
    },
    {
      "id" : "Extension.extension:hospitalCapability",
      "path" : "Extension.extension",
      "sliceName" : "hospitalCapability",
      "short" : "eDisposition.23 - Hospital Capability",
      "comment" : "NEMSIS eDisposition.23. Usage: Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable. Specialty capabilities of the receiving facility.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:hospitalCapability.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:hospitalCapability.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "hospitalCapability"
    },
    {
      "id" : "Extension.extension:hospitalCapability.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-hospital-capability"
      }
    },
    {
      "id" : "Extension.extension:preArrivalAlert",
      "path" : "Extension.extension",
      "sliceName" : "preArrivalAlert",
      "short" : "eDisposition.24 - Destination Team Pre-Arrival Alert or Activation",
      "comment" : "NEMSIS eDisposition.24. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Whether and what type of pre-arrival alert was given to the receiving facility.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:preArrivalAlert.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:preArrivalAlert.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "preArrivalAlert"
    },
    {
      "id" : "Extension.extension:preArrivalAlert.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-pre-arrival-alert"
      }
    },
    {
      "id" : "Extension.extension:preArrivalAlertDateTime",
      "path" : "Extension.extension",
      "sliceName" : "preArrivalAlertDateTime",
      "short" : "eDisposition.25 - Date/Time of Destination Pre-Arrival Alert or Activation",
      "comment" : "NEMSIS eDisposition.25. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:preArrivalAlertDateTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:preArrivalAlertDateTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "preArrivalAlertDateTime"
    },
    {
      "id" : "Extension.extension:preArrivalAlertDateTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:numberOfPatients",
      "path" : "Extension.extension",
      "sliceName" : "numberOfPatients",
      "short" : "eDisposition.11 - Number of Patients Transported in this EMS Unit",
      "comment" : "NEMSIS eDisposition.11. Usage: Recommended. Nillable. NV: NotReporting, NotRecorded, NotApplicable.",
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
      "id" : "Extension.extension:dispositionInstructions",
      "path" : "Extension.extension",
      "sliceName" : "dispositionInstructions",
      "short" : "eDisposition.26 - Disposition Instructions Provided",
      "comment" : "NEMSIS eDisposition.26. Usage: Optional. Repeating (0..M). Not nillable. No NV or PN.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:dispositionInstructions.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dispositionInstructions.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dispositionInstructions"
    },
    {
      "id" : "Extension.extension:dispositionInstructions.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-disposition-instructions"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-destination-details"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
