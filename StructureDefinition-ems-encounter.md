# EMS Encounter - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Encounter**

## Resource Profile: EMS Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSEncounter |

 
EMS-specific constraints on US Core Encounter representing a single EMS response/call. Covers NEMSIS eResponse (unit/agency, response mode, delays), eTimes (all 19 timestamps), eDispatch (dispatch complaint, EMD, priority), and eDisposition (unit, crew, transport, destination, level of care) sections. NEMSIS Version 3.5.1.251001CP2. 

**Usages:**

* Refer to this Profile: [EMS Patient Care Report (PCR)](StructureDefinition-ems-composition.md), [EMS Cardiac Arrest Condition](StructureDefinition-ems-condition-arrest.md), [EMS Injury Condition](StructureDefinition-ems-condition-injury.md), [EMS Condition — Past Medical History](StructureDefinition-ems-condition-problems.md)... Show 13 more, [EMS Condition](StructureDefinition-ems-condition.md), [EMS Document Reference](StructureDefinition-ems-documentreference.md), [EMS Medication Administration](StructureDefinition-ems-medicationadministration.md), [EMS Medication Statement — Home Medications](StructureDefinition-ems-medicationstatement.md), [EMS Airway Management Observation](StructureDefinition-ems-observation-airway.md), [EMS Blood Pressure Observation](StructureDefinition-ems-observation-bp.md), [EMS Physical Exam Observation](StructureDefinition-ems-observation-exam.md), [EMS Glasgow Coma Score (GCS) Panel](StructureDefinition-ems-observation-gcs.md), [EMS Lab and Imaging Observation](StructureDefinition-ems-observation-labs.md), [EMS Outcome Observation](StructureDefinition-ems-observation-outcome.md), [EMS Vital Signs Observation](StructureDefinition-ems-observation-vitalsigns.md), [EMS Procedure](StructureDefinition-ems-procedure.md) and [EMS Questionnaire Response — Custom Element Results](StructureDefinition-ems-questionnaireresponse.md)
* Examples for this Profile: [Encounter/ex-ems-encounter](Encounter-ex-ems-encounter.md)
* CapabilityStatements using this Profile: [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-encounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-encounter.csv), [Excel](StructureDefinition-ems-encounter.xlsx), [Schematron](StructureDefinition-ems-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-encounter",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter",
  "version" : "0.2.0",
  "name" : "EMSEncounter",
  "title" : "EMS Encounter",
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
  "description" : "EMS-specific constraints on US Core Encounter representing a single EMS response/call.\nCovers NEMSIS eResponse (unit/agency, response mode, delays), eTimes (all 19 timestamps),\neDispatch (dispatch complaint, EMD, priority), and eDisposition (unit, crew, transport,\ndestination, level of care) sections. NEMSIS Version 3.5.1.251001CP2.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.extension",
      "path" : "Encounter.extension",
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
      "id" : "Encounter.extension:responseType",
      "path" : "Encounter.extension",
      "sliceName" : "responseType",
      "short" : "eResponse.05 - Type of Service Requested",
      "comment" : "NEMSIS eResponse.05. Usage: Mandatory/National. Not nillable. No NV or PN.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:unitType",
      "path" : "Encounter.extension",
      "sliceName" : "unitType",
      "short" : "eResponse.07 - Unit Transport and Equipment Capability",
      "comment" : "NEMSIS eResponse.07. Usage: Mandatory/National. Not nillable. No NV or PN.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-unit-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:responseMode",
      "path" : "Encounter.extension",
      "sliceName" : "responseMode",
      "short" : "eResponse.23 - Response Mode to Scene",
      "comment" : "NEMSIS eResponse.23. Usage: Mandatory/National. Not nillable. No NV or PN.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-mode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:additionalResponseMode",
      "path" : "Encounter.extension",
      "sliceName" : "additionalResponseMode",
      "short" : "eResponse.24 - Additional Response Mode Descriptors",
      "comment" : "NEMSIS eResponse.24. Usage: Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-additional-response-mode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:responseDelays",
      "path" : "Encounter.extension",
      "sliceName" : "responseDelays",
      "short" : "eResponse.08–12 - Delay types (dispatch, response, scene, transport, turn-around)",
      "comment" : "NEMSIS eResponse.08–12. All Required/National. Each sub-element repeating (1..M). Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-delays"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:emsUnit",
      "path" : "Encounter.extension",
      "sliceName" : "emsUnit",
      "short" : "eResponse.13/14 - EMS Vehicle Unit Number and Call Sign",
      "comment" : "NEMSIS eResponse.13/14. Both Mandatory/National. Not nillable. No NV or PN.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-unit"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:emsTimes",
      "path" : "Encounter.extension",
      "sliceName" : "emsTimes",
      "short" : "eTimes.01–19 - Full set of EMS response timestamps",
      "comment" : "NEMSIS eTimes section. Most elements Required/National. See EMSTimes extension for individual element constraints.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-times"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:dispatchReason",
      "path" : "Encounter.extension",
      "sliceName" : "dispatchReason",
      "short" : "eDispatch.01 - Dispatch Complaint",
      "comment" : "NEMSIS eDispatch.01. Usage: Mandatory/National. Not nillable. No NV or PN.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-dispatch-reason"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:dispatchInfo",
      "path" : "Encounter.extension",
      "sliceName" : "dispatchInfo",
      "short" : "eDispatch.02–06 - EMD performed, determinant, dispatch center, priority, CAD record ID",
      "comment" : "NEMSIS eDispatch.02 (Required/National), eDispatch.03–06 (Optional). eDispatch.02 Nillable; NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-dispatch-info"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:dispositionCodes",
      "path" : "Encounter.extension",
      "sliceName" : "dispositionCodes",
      "short" : "eDisposition.19, 27–32 - Unit/patient/crew/transport disposition and level of care",
      "comment" : "NEMSIS eDisposition.27 (Mandatory), eDisposition.28–30, 32 (Required/National), eDisposition.19 (Required/National), eDisposition.31 (Optional).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-disposition-codes"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:transportDetails",
      "path" : "Encounter.extension",
      "sliceName" : "transportDetails",
      "short" : "eDisposition.16–18 - Transport method, mode, and additional mode descriptors",
      "comment" : "NEMSIS eDisposition.16–18. All Required/National. Nillable. NV: NotRecorded, NotApplicable.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-transport-details"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:destinationDetails",
      "path" : "Encounter.extension",
      "sliceName" : "destinationDetails",
      "short" : "eDisposition.20–26, 11 - Destination reason, type, facility, capability, alerts",
      "comment" : "NEMSIS eDisposition.20–24 Required/National; eDisposition.25 Required/National; eDisposition.11 Recommended; eDisposition.26 Optional.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-destination-details"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:protocolUsed",
      "path" : "Encounter.extension",
      "sliceName" : "protocolUsed",
      "short" : "eProtocols.01 - Protocols Used",
      "comment" : "NEMSIS eProtocols.01. Usage: Required/National. Repeating (0..M). Not nillable. No NV or PN.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-protocol-used"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:otherContext",
      "path" : "Encounter.extension",
      "sliceName" : "otherContext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-other-context"]
      }]
    },
    {
      "id" : "Encounter.extension:crewSafety",
      "path" : "Encounter.extension",
      "sliceName" : "crewSafety",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-crew-safety"]
      }]
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Encounter.identifier:incidentNumber",
      "path" : "Encounter.identifier",
      "sliceName" : "incidentNumber",
      "short" : "eResponse.03 - Incident Number",
      "comment" : "NEMSIS eResponse.03. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Agency-assigned incident identifier.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.identifier:incidentNumber.type",
      "path" : "Encounter.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "VN",
          "display" : "Visit number"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Encounter.identifier:incidentNumber.system",
      "path" : "Encounter.identifier.system",
      "comment" : "US Core requires identifier.system 1..1 MS."
    },
    {
      "id" : "Encounter.identifier:incidentNumber.value",
      "path" : "Encounter.identifier.value",
      "comment" : "US Core requires identifier.value 1..1 MS."
    },
    {
      "id" : "Encounter.identifier:responseNumber",
      "path" : "Encounter.identifier",
      "sliceName" : "responseNumber",
      "short" : "eResponse.04 - EMS Response Number",
      "comment" : "NEMSIS eResponse.04. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. PSAP or CAD-assigned response number.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.identifier:responseNumber.type",
      "path" : "Encounter.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "RI",
          "display" : "Resource identifier"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Encounter.identifier:responseNumber.system",
      "path" : "Encounter.identifier.system",
      "comment" : "US Core requires identifier.system 1..1 MS."
    },
    {
      "id" : "Encounter.identifier:responseNumber.value",
      "path" : "Encounter.identifier.value",
      "comment" : "US Core requires identifier.value 1..1 MS."
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "short" : "Encounter class — EMER for emergency responses, see eResponse.05 for full type"
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "short" : "High-level EMS encounter type classification"
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "short" : "The EMS patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }]
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "short" : "eCrew - EMS crew members responding",
      "comment" : "NEMSIS eCrew section. Crew member ID (eCrew.01), certification level (eCrew.02), and role (eCrew.03) documented via participant reference to EMSPractitioner with PractitionerRole."
    },
    {
      "id" : "Encounter.participant.individual",
      "path" : "Encounter.participant.individual",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner"]
      }]
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "short" : "eTimes.03 (start) to eTimes.12 (end)"
    },
    {
      "id" : "Encounter.period.start",
      "path" : "Encounter.period.start",
      "short" : "eTimes.03 - Unit Notified by Dispatch Date/Time",
      "comment" : "NEMSIS eTimes.03. Usage: Mandatory/National. Not nillable. No NV or PN. NDR-005: maps to Encounter.period.start.",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.period.end",
      "path" : "Encounter.period.end",
      "short" : "eTimes.12 - Destination Patient Transfer of Care Date/Time",
      "comment" : "NEMSIS eTimes.12. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. NDR-005: maps to Encounter.period.end.",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.reasonCode",
      "path" : "Encounter.reasonCode",
      "short" : "eSituation.09 - Primary Symptom",
      "comment" : "NEMSIS eSituation.09. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. PN: DeniesSymptom, UnableToComplete, Unresponsive. Coding should use SNOMED CT clinical finding codes."
    },
    {
      "id" : "Encounter.diagnosis",
      "path" : "Encounter.diagnosis",
      "short" : "eSituation.11 - Primary Provider's Impression of the Patient's Condition",
      "comment" : "NEMSIS eSituation.11. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Diagnosis using ICD-10-CM or SNOMED CT.",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.diagnosis.condition",
      "path" : "Encounter.diagnosis.condition",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition"]
      }]
    },
    {
      "id" : "Encounter.diagnosis.use",
      "path" : "Encounter.diagnosis.use",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization",
      "path" : "Encounter.hospitalization",
      "short" : "eDisposition - Destination and disposition information"
    },
    {
      "id" : "Encounter.hospitalization.destination",
      "path" : "Encounter.hospitalization.destination",
      "short" : "eDisposition.01/02 - Destination/Transferred To",
      "comment" : "NEMSIS eDisposition.01 (Name) and eDisposition.02 (Code). Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-destination"]
      }]
    },
    {
      "id" : "Encounter.hospitalization.dischargeDisposition",
      "path" : "Encounter.hospitalization.dischargeDisposition",
      "short" : "eDisposition.21 - Type of Destination",
      "comment" : "US Core uses 'preferred' binding strength for dischargeDisposition. EMS-specific destination types from EMSDestinationTypeVS (preferred). Implementations may also use UB-04 discharge disposition codes.",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-destination-type"
      }
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "status"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Encounter.location:scene",
      "path" : "Encounter.location",
      "sliceName" : "scene",
      "short" : "eScene - Scene location",
      "comment" : "Scene GPS, address, and description captured in EMSLocationScene. Status #active indicates active scene location.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location:scene.location",
      "path" : "Encounter.location.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-scene"]
      }]
    },
    {
      "id" : "Encounter.location:scene.status",
      "path" : "Encounter.location.status",
      "min" : 1,
      "patternCode" : "active"
    },
    {
      "id" : "Encounter.location:destination",
      "path" : "Encounter.location",
      "sliceName" : "destination",
      "short" : "eDisposition.01/02 - Destination facility",
      "comment" : "NEMSIS eDisposition.01 (Destination Name) and eDisposition.02 (Code). Status #completed indicates transport completed. Address details (eDisposition.03–07) on EMSLocationDestination.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location:destination.location",
      "path" : "Encounter.location.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-destination"]
      }]
    },
    {
      "id" : "Encounter.location:destination.status",
      "path" : "Encounter.location.status",
      "min" : 1,
      "patternCode" : "completed"
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "short" : "eResponse.01 - EMS Agency Number",
      "comment" : "NEMSIS eResponse.01. Usage: Mandatory/National. Not nillable. No NV or PN. NPI-2 preferred as identifier.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-organization"]
      }]
    }]
  }
}

```
