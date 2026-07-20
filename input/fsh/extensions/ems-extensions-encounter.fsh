// ============================================================
// fhirEMSCore Encounter Extensions
// NEMSIS 3.5.1.251001CP2 — eResponse, eDispatch, eDisposition
// All Context: Encounter
// ============================================================

// ── Extension: EMS Response Mode ─────────────────────────────
// NEMSIS: eResponse.23 - Response Mode to Scene (Mandatory/National)
Extension: EMSResponseMode
Id: ext-ems-response-mode
Title: "EMS Response Mode to Scene"
Description: "NEMSIS eResponse.23 - The response mode (emergent vs non-emergent) used by the EMS unit en route to the scene."
Context: Encounter
* value[x] only CodeableConcept
* valueCodeableConcept from EMSResponseModeVS (required)

// ── Extension: EMS Additional Response Mode ──────────────────
// NEMSIS: eResponse.24 - Additional Response Mode Descriptors (Required/National)
Extension: EMSAdditionalResponseMode
Id: ext-ems-additional-response-mode
Title: "EMS Additional Response Mode Descriptors"
Description: "NEMSIS eResponse.24 - Additional descriptors of the response mode (lights, sirens, speed, intersection navigation). Repeating."
Context: Encounter
* value[x] only CodeableConcept
* valueCodeableConcept from EMSAdditionalResponseModeVS (required)

// ── Extension: EMS Response Delays ───────────────────────────
// NEMSIS: eResponse.08–12 - Delay types (all Required/National, 1..M with NV)
Extension: EMSResponseDelays
Id: ext-ems-response-delays
Title: "EMS Response Delays"
Description: """
  Groups the five NEMSIS delay type elements (eResponse.08–12), each
  Required/National with repeating values and NV: NotRecorded, NotApplicable.
"""
Context: Encounter
* extension contains
    dispatchDelay  0..* MS and
    responseDelay  0..* MS and
    sceneDelay     0..* MS and
    transportDelay 0..* MS and
    turnAroundDelay 0..* MS

* extension[dispatchDelay]
  * ^short = "eResponse.08 - Type of Dispatch Delay"
  * ^comment = "NEMSIS eResponse.08. Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSDispatchDelayVS (required)

* extension[responseDelay]
  * ^short = "eResponse.09 - Type of Response Delay"
  * ^comment = "NEMSIS eResponse.09. Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSResponseDelayVS (required)

* extension[sceneDelay]
  * ^short = "eResponse.10 - Type of Scene Delay"
  * ^comment = "NEMSIS eResponse.10. Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSSceneDelayVS (required)

* extension[transportDelay]
  * ^short = "eResponse.11 - Type of Transport Delay"
  * ^comment = "NEMSIS eResponse.11. Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSTransportDelayVS (required)

* extension[turnAroundDelay]
  * ^short = "eResponse.12 - Type of Turn-Around Delay"
  * ^comment = "NEMSIS eResponse.12. Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSTurnAroundDelayVS (required)

// ── Extension: EMS Unit ───────────────────────────────────────
// NEMSIS: eResponse.13 (Unit Number) + eResponse.14 (Call Sign) — both Mandatory/National
Extension: EMSUnit
Id: ext-ems-unit
Title: "EMS Vehicle Unit Identification"
Description: "NEMSIS eResponse.13 (EMS Vehicle/Unit Number) and eResponse.14 (EMS Unit Call Sign). Both Mandatory/National."
Context: Encounter
* extension contains
    unitNumber 0..1 MS and
    callSign   0..1 MS

* extension[unitNumber]
  * ^short = "eResponse.13 - EMS Vehicle (Unit) Number"
  * ^comment = "NEMSIS eResponse.13. Usage: Mandatory/National. Not nillable. No NV or PN. The agency-assigned vehicle identifier."
  * value[x] only string

* extension[callSign]
  * ^short = "eResponse.14 - EMS Unit Call Sign"
  * ^comment = "NEMSIS eResponse.14. Usage: Mandatory/National. Not nillable. No NV or PN. The radio call sign of the unit."
  * value[x] only string

// ── Extension: EMS Dispatch Information ──────────────────────
// NEMSIS: eDispatch section (eDispatch.02–06)
// Note: eDispatch.01 (Dispatch Reason) is handled by the standalone EMSDispatchReason extension.
Extension: EMSDispatchInfo
Id: ext-ems-dispatch-info
Title: "EMS Dispatch Information"
Description: "Captures NEMSIS eDispatch supplementary fields: EMD performed (eDispatch.02, Required/National), EMD determinant code (eDispatch.03), dispatch center (eDispatch.04), dispatch priority (eDispatch.05), and CAD record ID (eDispatch.06)."
Context: Encounter
* extension contains
    emdPerformed          0..1 MS and
    emdDeterminant        0..1 and
    dispatchCenterNameOrId 0..1 and
    dispatchPriority      0..1 MS and
    cadRecordId           0..1

* extension[emdPerformed]
  * ^short = "eDispatch.02 - EMD Performed"
  * ^comment = "NEMSIS eDispatch.02. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Whether Emergency Medical Dispatch pre-arrival instructions were provided."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSEMDPerformedVS (required)

* extension[emdDeterminant]
  * ^short = "eDispatch.03 - EMD Determinant Code"
  * ^comment = "NEMSIS eDispatch.03. Usage: Optional. The alphanumeric EMD determinant code (e.g., MPDS/IAED code) assigned by the dispatch system."
  * value[x] only string

* extension[dispatchCenterNameOrId]
  * ^short = "eDispatch.04 - Dispatch Center Name or ID"
  * ^comment = "NEMSIS eDispatch.04. Usage: Optional. The name or identifier of the dispatch center."
  * value[x] only string

* extension[dispatchPriority]
  * ^short = "eDispatch.05 - Dispatch Priority (Patient Acuity)"
  * ^comment = "NEMSIS eDispatch.05. Usage: Optional. The acuity level as assigned at the time of dispatch."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSDispatchPriorityVS (required)

* extension[cadRecordId]
  * ^short = "eDispatch.06 - Unit Dispatched CAD Record ID"
  * ^comment = "NEMSIS eDispatch.06. Usage: Optional. The Computer Aided Dispatch record identifier for this unit's response."
  * value[x] only string

// ── Extension: EMS Disposition Codes ─────────────────────────
// NEMSIS: eDisposition.19, 27–30, 32 — Mandatory/Required/National
Extension: EMSDispositionCodes
Id: ext-ems-disposition-codes
Title: "EMS Disposition Codes"
Description: """
  Groups the core NEMSIS disposition data elements. All sub-elements are
  Mandatory or Required/National. Nillable sub-elements accept NV codes via
  ext-ems-not-value when the value is not recorded or not applicable.
"""
Context: Encounter
* extension contains
    unitDisposition       0..1 MS and
    patientEvaluationCare 0..1 MS and
    crewDisposition       0..1 MS and
    transportDisposition  0..1 MS and
    levelOfCareProvided   0..1 MS and
    patientAcuity         0..1 MS and
    reasonForRefusal      0..*

* extension[unitDisposition]
  * ^short = "eDisposition.27 - Unit Disposition"
  * ^comment = "NEMSIS eDisposition.27. Usage: Mandatory/National. Not nillable. No NV or PN. Whether/how the unit made patient contact."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSUnitDispositionVS (required)

* extension[patientEvaluationCare]
  * ^short = "eDisposition.28 - Patient Evaluation/Care"
  * ^comment = "NEMSIS eDisposition.28. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. What evaluation and care was provided."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSPatientEvalCareVS (required)

* extension[crewDisposition]
  * ^short = "eDisposition.29 - Crew Disposition"
  * ^comment = "NEMSIS eDisposition.29. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. What the crew did during the response."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSCrewDispositionVS (required)

* extension[transportDisposition]
  * ^short = "eDisposition.30 - Transport Disposition"
  * ^comment = "NEMSIS eDisposition.30. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Whether/how the patient was transported."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSTransportDispositionVS (required)

* extension[levelOfCareProvided]
  * ^short = "eDisposition.32 - Level of Care Provided per Protocol"
  * ^comment = "NEMSIS eDisposition.32. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. The level of care (BLS, ALS, Critical Care, etc.) authorized by protocol."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSLevelOfCareVS (required)

* extension[patientAcuity]
  * ^short = "eDisposition.19 - Acuity Upon EMS Release of Patient"
  * ^comment = "NEMSIS eDisposition.19. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. The patient's acuity triage level at the time of EMS release."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSPatientAcuityVS (required)

* extension[reasonForRefusal]
  * ^short = "eDisposition.31 - Reason for Refusal/Release"
  * ^comment = "NEMSIS eDisposition.31. Usage: Optional. Repeating (0..M). Not nillable. No NV or PN. Reason documented when patient refused or was released."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSReasonForRefusalVS (extensible)

// ── Extension: EMS Transport Details ─────────────────────────
// NEMSIS: eDisposition.16 (Transport Method), .17 (Transport Mode),
//         .18 (Additional Mode) — all Required/National
Extension: EMSTransportDetails
Id: ext-ems-transport-details
Title: "EMS Transport Details"
Description: "NEMSIS transport method and mode elements: eDisposition.16 (EMS Transport Method), eDisposition.17 (Transport Mode from Scene), and eDisposition.18 (Additional Transport Mode Descriptors). All Required/National."
Context: Encounter
* extension contains
    transportMethod        0..1 MS and
    transportMode          0..1 MS and
    additionalTransportMode 0..* MS

* extension[transportMethod]
  * ^short = "eDisposition.16 - EMS Transport Method"
  * ^comment = "NEMSIS eDisposition.16. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. The vehicle/mode used to transport the patient (ground ambulance, air, etc.)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSTransportMethodVS (required)

* extension[transportMode]
  * ^short = "eDisposition.17 - Transport Mode from Scene"
  * ^comment = "NEMSIS eDisposition.17. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Emergent vs non-emergent transport mode."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSTransportModeVS (required)

* extension[additionalTransportMode]
  * ^short = "eDisposition.18 - Additional Transport Mode Descriptors"
  * ^comment = "NEMSIS eDisposition.18. Usage: Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable. Lights, sirens, speed, intersection navigation details."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAdditionalTransportModeVS (required)

// ── Extension: EMS Destination Details ───────────────────────
// NEMSIS: eDisposition.20–25 (destination choice, type, facility, alerts)
//         and eDisposition.11 (number of patients) — Required/National
Extension: EMSDestinationDetails
Id: ext-ems-destination-details
Title: "EMS Destination Details"
Description: "Groups NEMSIS destination-selection and pre-arrival alert elements for the receiving facility. All clinical destination elements are Required/National."
Context: Encounter
* extension contains
    reasonForChoosingDestination 0..* MS and
    typeOfDestination            0..1 MS and
    hospitalInPatientDestination 0..1 MS and
    hospitalCapability           0..* MS and
    preArrivalAlert              0..1 MS and
    preArrivalAlertDateTime      0..1 MS and
    numberOfPatients             0..1 MS and
    dispositionInstructions      0..*

* extension[reasonForChoosingDestination]
  * ^short = "eDisposition.20 - Reason for Choosing Destination"
  * ^comment = "NEMSIS eDisposition.20. Usage: Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSDestinationReasonVS (required)

* extension[typeOfDestination]
  * ^short = "eDisposition.21 - Type of Destination"
  * ^comment = "NEMSIS eDisposition.21. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSDestinationTypeVS (required)

* extension[hospitalInPatientDestination]
  * ^short = "eDisposition.22 - Hospital In-Patient Destination"
  * ^comment = "NEMSIS eDisposition.22. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. The specific in-hospital unit or bed type the patient was delivered to."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSHospitalDestinationVS (required)

* extension[hospitalCapability]
  * ^short = "eDisposition.23 - Hospital Capability"
  * ^comment = "NEMSIS eDisposition.23. Usage: Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable. Specialty capabilities of the receiving facility."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSHospitalCapabilityVS (required)

* extension[preArrivalAlert]
  * ^short = "eDisposition.24 - Destination Team Pre-Arrival Alert or Activation"
  * ^comment = "NEMSIS eDisposition.24. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Whether and what type of pre-arrival alert was given to the receiving facility."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSPreArrivalAlertVS (required)

* extension[preArrivalAlertDateTime]
  * ^short = "eDisposition.25 - Date/Time of Destination Pre-Arrival Alert or Activation"
  * ^comment = "NEMSIS eDisposition.25. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only dateTime

* extension[numberOfPatients]
  * ^short = "eDisposition.11 - Number of Patients Transported in this EMS Unit"
  * ^comment = "NEMSIS eDisposition.11. Usage: Recommended. Nillable. NV: NotReporting, NotRecorded, NotApplicable."
  * value[x] only positiveInt

* extension[dispositionInstructions]
  * ^short = "eDisposition.26 - Disposition Instructions Provided"
  * ^comment = "NEMSIS eDisposition.26. Usage: Optional. Repeating (0..M). Not nillable. No NV or PN."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSDispositionInstructionsVS (extensible)
