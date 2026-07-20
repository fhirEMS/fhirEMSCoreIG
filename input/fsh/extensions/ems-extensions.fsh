// ============================================================
// fhirEMSCore Extensions
// NEMSIS 3.5.1.251001CP2 data elements with no FHIR R4 base equivalent
// ============================================================

// ── Extension: EMS Response Type ────────────────────────────
// NEMSIS: eResponse.05 - Type of Response
Extension: EMSResponseType
Id: ext-ems-response-type
Title: "EMS Response Type"
Description: "NEMSIS eResponse.05 - The type of EMS response (Emergency/Non-Emergency)."
Context: Encounter
* value[x] only CodeableConcept
* valueCodeableConcept from EMSResponseTypeVS (required)

// ── Extension: EMS Unit Type ─────────────────────────────────
// NEMSIS: eResponse.07 - Type of EMS Unit
Extension: EMSUnitType
Id: ext-ems-unit-type
Title: "EMS Unit Type"
Description: "NEMSIS eResponse.07 - The type of EMS vehicle/unit."
Context: Encounter
* value[x] only CodeableConcept
* valueCodeableConcept from EMSUnitTypeVS (required)

// ── Extension: EMS Dispatch Reason ──────────────────────────
// NEMSIS: eDispatch.01 - Dispatch Complaint
Extension: EMSDispatchReason
Id: ext-ems-dispatch-reason
Title: "EMS Dispatch Reason"
Description: "NEMSIS eDispatch.01 - The dispatch complaint or reason for response."
Context: Encounter
* value[x] only CodeableConcept
* valueCodeableConcept from EMSDispatchReasonVS (extensible)

// ── Extension: EMS Chief Complaint Anatomic Location ─────────
// NEMSIS: eSituation.07 - Chief Complaint Anatomic Location (Required/National)
Extension: EMSIncidentType
Id: ext-ems-incident-type
Title: "EMS Chief Complaint Anatomic Location"
Description: "NEMSIS eSituation.07 - The anatomic location of the patient's chief complaint. Required/National. Nillable. NV: NotRecorded, NotApplicable."
Context: Encounter
* value[x] only CodeableConcept
* valueCodeableConcept from EMSIncidentTypeVS (required)

// ── Extension: EMS Times ─────────────────────────────────────
// NEMSIS: eTimes section (eTimes.01–eTimes.19)
Extension: EMSTimes
Id: ext-ems-times
Title: "EMS Response Times"
Description: "Captures the full set of NEMSIS eTimes timestamps for a single EMS response."
Context: Encounter
* extension contains
    psapCallTime            0..1 and
    dispatchNotified        0..1 and
    unitNotified            0..1 and
    unitEnRoute             0..1 and
    unitArrivedScene        0..1 and
    arrivalAtPatient        0..1 and
    transferOfPatientCare   0..1 and
    unitLeftScene           0..1 and
    patientArrivedDestination 0..1 and
    destinationPatientTransferOfCare 0..1 and
    unitBackInService       0..1 and
    unitCancelledStaged     0..1 and
    unitBackAtBase          0..1

* extension[psapCallTime]
  * ^short = "eTimes.01 - PSAP Call Date/Time"
  * value[x] only dateTime

* extension[dispatchNotified]
  * ^short = "eTimes.02 - Dispatch Notified Date/Time"
  * value[x] only dateTime

* extension[unitNotified]
  * ^short = "eTimes.03 - Unit Notified by Dispatch Date/Time"
  * value[x] only dateTime

* extension[unitEnRoute]
  * ^short = "eTimes.05 - Unit En Route Date/Time"
  * value[x] only dateTime

* extension[unitArrivedScene]
  * ^short = "eTimes.06 - Unit Arrived on Scene Date/Time"
  * value[x] only dateTime

* extension[arrivalAtPatient]
  * ^short = "eTimes.07 - Arrived at Patient Date/Time"
  * value[x] only dateTime

* extension[transferOfPatientCare]
  * ^short = "eTimes.08 - Transfer of EMS Patient Care Date/Time"
  * value[x] only dateTime

* extension[unitLeftScene]
  * ^short = "eTimes.09 - Unit Left Scene Date/Time"
  * value[x] only dateTime

* extension[patientArrivedDestination]
  * ^short = "eTimes.11 - Patient Arrived at Destination Date/Time"
  * value[x] only dateTime

* extension[destinationPatientTransferOfCare]
  * ^short = "eTimes.12 - Destination Patient Transfer of Care Date/Time"
  * value[x] only dateTime

* extension[unitBackInService]
  * ^short = "eTimes.13 - Unit Back in Service Date/Time"
  * value[x] only dateTime

* extension[unitCancelledStaged]
  * ^short = "eTimes.14 - Unit Cancelled/Staged Date/Time"
  * value[x] only dateTime

* extension[unitBackAtBase]
  * ^short = "eTimes.15 - Unit Back at Home Location Date/Time"
  * value[x] only dateTime

// ── Extension: EMS Transport Reason ─────────────────────────
// NEMSIS: eDisposition.30 - Transport Disposition (Required/National)
// NOTE: The original skeleton incorrectly referenced eDisposition.22 (Hospital
// In-Patient Destination). Corrected to eDisposition.30 (Transport Disposition).
// SUPERSEDED: New profiles should use EMSDispositionCodes.transportDisposition.
Extension: EMSTransportReason
Id: ext-ems-transport-reason
Title: "EMS Transport Disposition (Legacy)"
Description: "NEMSIS eDisposition.30 - Whether/how the patient was transported. Superseded by EMSDispositionCodes complex extension in EMSEncounter."
Context: Encounter
* value[x] only CodeableConcept
* valueCodeableConcept from EMSTransportDispositionVS (required)

// ── Extension: EMS Certification Level ──────────────────────
// NEMSIS: eCrew.02 - Crew Member Level
Extension: EMSCertificationLevel
Id: ext-ems-certification-level
Title: "EMS Certification Level"
Description: "NEMSIS eCrew.02 - The certification/licensure level of the EMS crew member."
Context: PractitionerRole
* value[x] only CodeableConcept
* valueCodeableConcept from EMSCertificationLevelVS (required)

// ── Extension: EMS Protocol Used ────────────────────────────
// NEMSIS: eProtocols.01 - Protocols Used
Extension: EMSProtocolUsed
Id: ext-ems-protocol-used
Title: "EMS Protocol Used"
Description: "NEMSIS eProtocols.01 - Protocol used during the EMS response."
Context: Encounter
* value[x] only CodeableConcept
* valueCodeableConcept from EMSProtocolUsedVS (extensible)

// ── Extension: EMS Patient Barrier to Care ───────────────────
// NEMSIS: eHistory.01 - Barriers to Patient Care (Required/National)
// NOTE: This extension is on Patient context (not Encounter) for alignment
// with US Core. The source NEMSIS element eHistory.01 belongs to the eHistory
// section but is a patient-level characteristic, not encounter-specific.
Extension: EMSPatientBarrier
Id: ext-ems-patient-barrier
Title: "Barriers to Patient Care"
Description: "NEMSIS eHistory.01 - Barriers to the assessment or care of the patient (e.g., language, hearing impairment, unconscious). Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable."
Context: Patient
* value[x] only CodeableConcept
* valueCodeableConcept from EMSBarrierToPatientCareVS (required)

// ── Extension: NEMSIS Not Value (NV) ─────────────────────────
// NEMSIS pattern: NV (Not Applicable, Not Recorded, Not Reporting)
Extension: EMSNotValue
Id: ext-ems-not-value
Title: "NEMSIS Not Value"
Description: """
  Represents the NEMSIS 'Not Value' (NV) pattern used when a data element
  is Not Applicable, Not Recorded, or Not Reporting. Maps to FHIR dataAbsentReason
  patterns but preserves NEMSIS-specific codes.
"""
Context: Element
* value[x] only CodeableConcept
* valueCodeableConcept from EMSNotValueVS (required)

// ── Extension: NEMSIS Pertinent Negative (PN) ────────────────
// NEMSIS pattern: PN (pertinent negatives for clinical elements)
Extension: EMSPertinentNegative
Id: ext-ems-pertinent-negative
Title: "NEMSIS Pertinent Negative"
Description: """
  Represents the NEMSIS 'Pertinent Negative' (PN) pattern for clinical data elements.
  Indicates a clinically significant absence (e.g., 'Denies Chest Pain').
"""
Context: Element
* value[x] only CodeableConcept
* valueCodeableConcept from EMSPertinentNegativeVS (required)

// ── Extension: EMS Patient Age ───────────────────────────────
// NEMSIS: ePatient.15 (Age) + ePatient.16 (Age Units) — Required/National
// Used when ePatient.17 (Date of Birth) is unknown or unavailable.
Extension: EMSPatientAge
Id: ext-ems-patient-age
Title: "EMS Patient Estimated Age"
Description: """
  Captures NEMSIS ePatient.15 (Age value) and ePatient.16 (Age Units) when the
  patient's date of birth (ePatient.17) is unknown. Both source elements are
  Required/National. When birthDate is known, derive age computationally at the
  time of the encounter; this extension is not needed in that case.
"""
Context: Patient
* extension contains
    value 0..1 MS and
    unit  0..1 MS

* extension[value]
  * ^short = "ePatient.15 - Age value"
  * ^comment = "NEMSIS ePatient.15. Usage: Required/National/Nillable. NV: NotRecorded, NotApplicable. PN: Approximate (age is an estimate, not exact). DataType: Age (decimal)."
  * value[x] only decimal

* extension[unit]
  * ^short = "ePatient.16 - Age Units"
  * ^comment = "NEMSIS ePatient.16. Usage: Required/National/Nillable. NV: NotRecorded, NotApplicable. No PN. Codes: Minutes (2516005), Hours (2516003), Days (2516001), Months (2516007), Years (2516009)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAgeUnitsVS (required)

// ── Extension: EMS Census Tract ─────────────────────────────
// NEMSIS: ePatient.11 - Patient Home Census Tract
Extension: EMSCensusTract
Id: ext-ems-census-tract
Title: "Patient Home Census Tract"
Description: "NEMSIS ePatient.11 - The US Census Bureau census tract for the patient's home address."
Context: Patient
* value[x] only string

// ── Extension: EMS Alternate Home Residence ──────────────────
// NEMSIS: ePatient.22 - Alternate Home Residence
Extension: EMSAlternateResidence
Id: ext-ems-alternate-residence
Title: "Alternate Home Residence"
Description: "NEMSIS ePatient.22 - Indicates the patient's alternate home residence situation (e.g., homeless, migrant worker, foreign visitor)."
Context: Patient
* value[x] only CodeableConcept
* valueCodeableConcept from EMSAlternateResidenceVS (required)

// ── Extension: EMS Scene GPS ────────────────────────────────
// NEMSIS: eScene.11 - Scene GPS Location
Extension: EMSSceneGPS
Id: ext-ems-scene-gps
Title: "EMS Scene GPS Location"
Description: "NEMSIS eScene.11 - GPS coordinates of the EMS scene."
Context: Location
* extension contains
    latitude  0..1 and
    longitude 0..1

* extension[latitude]
  * ^short = "eScene.11 - Latitude"
  * value[x] only decimal

* extension[longitude]
  * ^short = "eScene.11 - Longitude"
  * value[x] only decimal
