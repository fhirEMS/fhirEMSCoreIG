# EMS Response Times - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Response Times**

## Extension: EMS Response Times 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-times | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSTimes |

Captures the full set of NEMSIS eTimes timestamps for a single EMS response.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Encounter](StructureDefinition-ems-encounter.md)
* Examples for this Extension: [Encounter/ex-ems-encounter](Encounter-ex-ems-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-times.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-times.csv), [Excel](StructureDefinition-ext-ems-times.xlsx), [Schematron](StructureDefinition-ext-ems-times.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-times",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-times",
  "version" : "0.2.0",
  "name" : "EMSTimes",
  "title" : "EMS Response Times",
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
  "description" : "Captures the full set of NEMSIS eTimes timestamps for a single EMS response.",
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
      "short" : "EMS Response Times",
      "definition" : "Captures the full set of NEMSIS eTimes timestamps for a single EMS response."
    },
    {
      "id" : "Extension.extension:psapCallTime",
      "path" : "Extension.extension",
      "sliceName" : "psapCallTime",
      "short" : "eTimes.01 - PSAP Call Date/Time",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:psapCallTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:psapCallTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "psapCallTime"
    },
    {
      "id" : "Extension.extension:psapCallTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:dispatchNotified",
      "path" : "Extension.extension",
      "sliceName" : "dispatchNotified",
      "short" : "eTimes.02 - Dispatch Notified Date/Time",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:dispatchNotified.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dispatchNotified.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dispatchNotified"
    },
    {
      "id" : "Extension.extension:dispatchNotified.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:unitNotified",
      "path" : "Extension.extension",
      "sliceName" : "unitNotified",
      "short" : "eTimes.03 - Unit Notified by Dispatch Date/Time",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:unitNotified.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:unitNotified.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "unitNotified"
    },
    {
      "id" : "Extension.extension:unitNotified.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:unitEnRoute",
      "path" : "Extension.extension",
      "sliceName" : "unitEnRoute",
      "short" : "eTimes.05 - Unit En Route Date/Time",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:unitEnRoute.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:unitEnRoute.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "unitEnRoute"
    },
    {
      "id" : "Extension.extension:unitEnRoute.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:unitArrivedScene",
      "path" : "Extension.extension",
      "sliceName" : "unitArrivedScene",
      "short" : "eTimes.06 - Unit Arrived on Scene Date/Time",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:unitArrivedScene.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:unitArrivedScene.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "unitArrivedScene"
    },
    {
      "id" : "Extension.extension:unitArrivedScene.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:arrivalAtPatient",
      "path" : "Extension.extension",
      "sliceName" : "arrivalAtPatient",
      "short" : "eTimes.07 - Arrived at Patient Date/Time",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:arrivalAtPatient.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:arrivalAtPatient.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "arrivalAtPatient"
    },
    {
      "id" : "Extension.extension:arrivalAtPatient.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:transferOfPatientCare",
      "path" : "Extension.extension",
      "sliceName" : "transferOfPatientCare",
      "short" : "eTimes.08 - Transfer of EMS Patient Care Date/Time",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:transferOfPatientCare.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:transferOfPatientCare.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "transferOfPatientCare"
    },
    {
      "id" : "Extension.extension:transferOfPatientCare.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:unitLeftScene",
      "path" : "Extension.extension",
      "sliceName" : "unitLeftScene",
      "short" : "eTimes.09 - Unit Left Scene Date/Time",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:unitLeftScene.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:unitLeftScene.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "unitLeftScene"
    },
    {
      "id" : "Extension.extension:unitLeftScene.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:patientArrivedDestination",
      "path" : "Extension.extension",
      "sliceName" : "patientArrivedDestination",
      "short" : "eTimes.11 - Patient Arrived at Destination Date/Time",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:patientArrivedDestination.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:patientArrivedDestination.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "patientArrivedDestination"
    },
    {
      "id" : "Extension.extension:patientArrivedDestination.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:destinationPatientTransferOfCare",
      "path" : "Extension.extension",
      "sliceName" : "destinationPatientTransferOfCare",
      "short" : "eTimes.12 - Destination Patient Transfer of Care Date/Time",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:destinationPatientTransferOfCare.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:destinationPatientTransferOfCare.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "destinationPatientTransferOfCare"
    },
    {
      "id" : "Extension.extension:destinationPatientTransferOfCare.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:unitBackInService",
      "path" : "Extension.extension",
      "sliceName" : "unitBackInService",
      "short" : "eTimes.13 - Unit Back in Service Date/Time",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:unitBackInService.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:unitBackInService.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "unitBackInService"
    },
    {
      "id" : "Extension.extension:unitBackInService.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:unitCancelledStaged",
      "path" : "Extension.extension",
      "sliceName" : "unitCancelledStaged",
      "short" : "eTimes.14 - Unit Cancelled/Staged Date/Time",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:unitCancelledStaged.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:unitCancelledStaged.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "unitCancelledStaged"
    },
    {
      "id" : "Extension.extension:unitCancelledStaged.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:unitBackAtBase",
      "path" : "Extension.extension",
      "sliceName" : "unitBackAtBase",
      "short" : "eTimes.15 - Unit Back at Home Location Date/Time",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:unitBackAtBase.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:unitBackAtBase.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "unitBackAtBase"
    },
    {
      "id" : "Extension.extension:unitBackAtBase.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-times"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
