// ============================================================
// EMS Encounter
// NEMSIS Sections: eResponse (01–24), eTimes (01–19), eDispatch (01–06), eDisposition (01–32)
// Derived from: US Core Encounter (6.1.0)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSEncounter
Parent: $us-core-encounter
Id: ems-encounter
Title: "EMS Encounter"
Description: """
  EMS-specific constraints on US Core Encounter representing a single EMS response/call.
  Covers NEMSIS eResponse (unit/agency, response mode, delays), eTimes (all 19 timestamps),
  eDispatch (dispatch complaint, EMD, priority), and eDisposition (unit, crew, transport,
  destination, level of care) sections. NEMSIS Version 3.5.1.251001CP2.
"""

// ── Extensions (consolidated) ────────────────────────────────
* extension contains
    EMSResponseType named responseType        0..1 MS and
    EMSUnitType named unitType                0..1 MS and
    EMSResponseMode named responseMode        0..1 MS and
    EMSAdditionalResponseMode named additionalResponseMode 0..* MS and
    EMSResponseDelays named responseDelays    0..1 MS and
    EMSUnit named emsUnit                     0..1 MS and
    EMSTimes named emsTimes                   0..1 MS and
    EMSDispatchReason named dispatchReason    0..1 MS and
    EMSDispatchInfo named dispatchInfo        0..1 MS and
    EMSDispositionCodes named dispositionCodes 0..1 MS and
    EMSTransportDetails named transportDetails 0..1 MS and
    EMSDestinationDetails named destinationDetails 0..1 MS and
    EMSProtocolUsed named protocolUsed        0..* MS and
    EMSOtherContext named otherContext        0..1 and
    EMSCrewSafety named crewSafety            0..*

* extension[responseType]
  * ^short = "eResponse.05 - Type of Service Requested"
  * ^comment = "NEMSIS eResponse.05. Usage: Mandatory/National. Not nillable. No NV or PN."

* extension[unitType]
  * ^short = "eResponse.07 - Unit Transport and Equipment Capability"
  * ^comment = "NEMSIS eResponse.07. Usage: Mandatory/National. Not nillable. No NV or PN."

* extension[responseMode]
  * ^short = "eResponse.23 - Response Mode to Scene"
  * ^comment = "NEMSIS eResponse.23. Usage: Mandatory/National. Not nillable. No NV or PN."

* extension[additionalResponseMode]
  * ^short = "eResponse.24 - Additional Response Mode Descriptors"
  * ^comment = "NEMSIS eResponse.24. Usage: Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable."

* extension[responseDelays]
  * ^short = "eResponse.08–12 - Delay types (dispatch, response, scene, transport, turn-around)"
  * ^comment = "NEMSIS eResponse.08–12. All Required/National. Each sub-element repeating (1..M). Nillable. NV: NotRecorded, NotApplicable."

* extension[emsUnit]
  * ^short = "eResponse.13/14 - EMS Vehicle Unit Number and Call Sign"
  * ^comment = "NEMSIS eResponse.13/14. Both Mandatory/National. Not nillable. No NV or PN."

* extension[emsTimes]
  * ^short = "eTimes.01–19 - Full set of EMS response timestamps"
  * ^comment = "NEMSIS eTimes section. Most elements Required/National. See EMSTimes extension for individual element constraints."

* extension[dispatchReason]
  * ^short = "eDispatch.01 - Dispatch Complaint"
  * ^comment = "NEMSIS eDispatch.01. Usage: Mandatory/National. Not nillable. No NV or PN."

* extension[dispatchInfo]
  * ^short = "eDispatch.02–06 - EMD performed, determinant, dispatch center, priority, CAD record ID"
  * ^comment = "NEMSIS eDispatch.02 (Required/National), eDispatch.03–06 (Optional). eDispatch.02 Nillable; NV: NotRecorded, NotApplicable."

* extension[dispositionCodes]
  * ^short = "eDisposition.19, 27–32 - Unit/patient/crew/transport disposition and level of care"
  * ^comment = "NEMSIS eDisposition.27 (Mandatory), eDisposition.28–30, 32 (Required/National), eDisposition.19 (Required/National), eDisposition.31 (Optional)."

* extension[transportDetails]
  * ^short = "eDisposition.16–18 - Transport method, mode, and additional mode descriptors"
  * ^comment = "NEMSIS eDisposition.16–18. All Required/National. Nillable. NV: NotRecorded, NotApplicable."

* extension[destinationDetails]
  * ^short = "eDisposition.20–26, 11 - Destination reason, type, facility, capability, alerts"
  * ^comment = "NEMSIS eDisposition.20–24 Required/National; eDisposition.25 Required/National; eDisposition.11 Recommended; eDisposition.26 Optional."

* extension[protocolUsed]
  * ^short = "eProtocols.01 - Protocols Used"
  * ^comment = "NEMSIS eProtocols.01. Usage: Required/National. Repeating (0..M). Not nillable. No NV or PN."

// ── eResponse.01 - EMS Agency ────────────────────────────────
* serviceProvider 1..1 MS
* serviceProvider only Reference(EMSOrganization)
  * ^short = "eResponse.01 - EMS Agency Number"
  * ^comment = "NEMSIS eResponse.01. Usage: Mandatory/National. Not nillable. No NV or PN. NPI-2 preferred as identifier."

// ── eResponse.02 - EMS Agency Name ───────────────────────────
// Captured via serviceProvider.display or Organization.name — no additional constraint needed.

// ── eResponse.03 - Incident Number / eResponse.04 - Response Number ──
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open

* identifier contains
    incidentNumber  0..1 MS and
    responseNumber  0..1 MS

* identifier[incidentNumber]
  * ^short = "eResponse.03 - Incident Number"
  * ^comment = "NEMSIS eResponse.03. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Agency-assigned incident identifier."
  * type = $v2-0203#VN "Visit number"
  * type MS
  * system 1..1 MS
    * ^comment = "US Core requires identifier.system 1..1 MS."
  * value 1..1 MS
    * ^comment = "US Core requires identifier.value 1..1 MS."

* identifier[responseNumber]
  * ^short = "eResponse.04 - EMS Response Number"
  * ^comment = "NEMSIS eResponse.04. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. PSAP or CAD-assigned response number."
  * type = $v2-0203#RI "Resource identifier"
  * type MS
  * system 1..1 MS
    * ^comment = "US Core requires identifier.system 1..1 MS."
  * value 1..1 MS
    * ^comment = "US Core requires identifier.value 1..1 MS."

// ── Subject (Patient) ────────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
  * ^short = "The EMS patient"

// ── Encounter Class ─────────────────────────────────────────
// 1..1 from FHIR R4 base (inherited). Not fixed — EMS responses
// include both emergency (EMER) and non-emergency types per eResponse.05.
* class 1..1 MS
  * ^short = "Encounter class — EMER for emergency responses, see eResponse.05 for full type"

// ── Encounter Type ───────────────────────────────────────────
// 1..* per US Core Encounter. Use SNOMED or local codes to classify
// EMS encounter type. NEMSIS-specific type in extension[responseType].
* type 1..* MS
  * ^short = "High-level EMS encounter type classification"

// ── eTimes.03 / eTimes.12 - Encounter Period ────────────────
// NDR-005: eTimes.03 → period.start; eTimes.12 → period.end
// All other timestamps use extension[emsTimes].
* period MS
  * ^short = "eTimes.03 (start) to eTimes.12 (end)"
* period.start MS
  * ^short = "eTimes.03 - Unit Notified by Dispatch Date/Time"
  * ^comment = "NEMSIS eTimes.03. Usage: Mandatory/National. Not nillable. No NV or PN. NDR-005: maps to Encounter.period.start."
* period.end MS
  * ^short = "eTimes.12 - Destination Patient Transfer of Care Date/Time"
  * ^comment = "NEMSIS eTimes.12. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. NDR-005: maps to Encounter.period.end."

// ── eSituation.09 - Primary Symptom / Complaint ──────────────
* reasonCode MS
  * ^short = "eSituation.09 - Primary Symptom"
  * ^comment = "NEMSIS eSituation.09. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. PN: DeniesSymptom, UnableToComplete, Unresponsive. Coding should use SNOMED CT clinical finding codes."

// ── eSituation.11 - Primary Provider's Impression ───────────
* diagnosis MS
  * ^short = "eSituation.11 - Primary Provider's Impression of the Patient's Condition"
  * ^comment = "NEMSIS eSituation.11. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Diagnosis using ICD-10-CM or SNOMED CT."
* diagnosis.condition only Reference(EMSCondition)
* diagnosis.use MS

// ── Participants (eCrew) ─────────────────────────────────────
* participant MS
  * ^short = "eCrew - EMS crew members responding"
  * ^comment = "NEMSIS eCrew section. Crew member ID (eCrew.01), certification level (eCrew.02), and role (eCrew.03) documented via participant reference to EMSPractitioner with PractitionerRole."
* participant.individual only Reference(EMSPractitioner)
* participant.type MS

// ── Location: Scene and Destination ─────────────────────────
* location MS
* location ^slicing.discriminator.type = #pattern
* location ^slicing.discriminator.path = "status"
* location ^slicing.rules = #open

* location contains
    scene       0..1 MS and
    destination 0..1 MS

* location[scene]
  * location only Reference(EMSLocationScene)
  * status = #active
  * ^short = "eScene - Scene location"
  * ^comment = "Scene GPS, address, and description captured in EMSLocationScene. Status #active indicates active scene location."

* location[destination]
  * location only Reference(EMSLocationDestination)
  * status = #completed
  * ^short = "eDisposition.01/02 - Destination facility"
  * ^comment = "NEMSIS eDisposition.01 (Destination Name) and eDisposition.02 (Code). Status #completed indicates transport completed. Address details (eDisposition.03–07) on EMSLocationDestination."

// ── eDisposition.01/02 - Destination (hospitalization) ──────
* hospitalization MS
  * ^short = "eDisposition - Destination and disposition information"
* hospitalization.destination only Reference(EMSLocationDestination)
  * ^short = "eDisposition.01/02 - Destination/Transferred To"
  * ^comment = "NEMSIS eDisposition.01 (Name) and eDisposition.02 (Code). Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable."
* hospitalization.dischargeDisposition MS
  * ^short = "eDisposition.21 - Type of Destination"
  * ^comment = "NEMSIS eDisposition.21. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Coded from EMSDestinationTypeVS. Note: granular destination details (eDisposition.20–26) in extension[destinationDetails]."
* hospitalization.dischargeDisposition from EMSDestinationTypeVS (preferred)
  * ^comment = "US Core uses 'preferred' binding strength for dischargeDisposition. EMS-specific destination types from EMSDestinationTypeVS (preferred). Implementations may also use UB-04 discharge disposition codes."
