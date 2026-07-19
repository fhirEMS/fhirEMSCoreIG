// ============================================================
// Example: EMS Encounter
// Scenario: 911 MVA response, ALS transport to trauma center
// NEMSIS eResponse/eTimes/eDisposition sections
// ============================================================

Instance: ex-ems-encounter
InstanceOf: EMSEncounter
Title: "Example EMS Encounter — MVA 911 Response"
Description: "Example EMS encounter demonstrating the EMSEncounter profile. 911 response to a motor vehicle accident with ALS transport to a Level I trauma center."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter"

// Identifiers
* identifier[incidentNumber].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[incidentNumber].type.coding[0].code = #VN
* identifier[incidentNumber].system = "http://example.org/ems/incidents"
* identifier[incidentNumber].value = "2026-03-14-0042"

* identifier[responseNumber].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[responseNumber].type.coding[0].code = #RI
* identifier[responseNumber].system = "http://example.org/ems/responses"
* identifier[responseNumber].value = "2026-031400042-1"

* status = #finished

// Encounter class — emergency
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #EMER
* class.display = "emergency"

// Encounter type — Emergency Medical Services (SNOMED 409971007)
* type[0].coding[0].system = "http://snomed.info/sct"
* type[0].coding[0].code = #409971007
* type[0].coding[0].display = "Emergency medical services"

// Subject and service provider
* subject = Reference(ex-ems-patient)
* serviceProvider = Reference(ex-ems-organization-agency)

// Period: eTimes.03 (unit notified) → eTimes.12 (patient transfer of care)
* period.start = "2026-03-14T14:22:00-08:00"
* period.end = "2026-03-14T15:08:00-08:00"

// Participant (crew member)
* participant[0].type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant[0].type[0].coding[0].code = #PART
* participant[0].individual = Reference(ex-ems-practitioner)

// eResponse.05 - Response Type → Emergency Response (Primary Response Area)
* extension[responseType].valueCodeableConcept
    = $nemsis-encounter-cs#2205001 "Emergency Response (Primary Response Area)"

// eResponse.07 - Unit Type → Ground Transport (ALS Equipped)
* extension[unitType].valueCodeableConcept
    = $nemsis-encounter-cs#2207015 "Ground Transport (ALS Equipped)"

// eResponse.23 - Response Mode to Scene → Emergent
* extension[responseMode].valueCodeableConcept
    = $nemsis-encounter-cs#2223001 "Emergent (Immediate Response)"

// eResponse.24 - Additional Response Mode → Lights and Sirens
* extension[additionalResponseMode][0].valueCodeableConcept
    = $nemsis-encounter-cs#2224015 "Lights and Sirens"

// eResponse.10 - Scene Delay → Extrication
* extension[responseDelays].extension[sceneDelay][0].valueCodeableConcept
    = $nemsis-encounter-cs#2210011 "Extrication"

// eResponse.13/.14 - Unit Number and Call Sign
* extension[emsUnit].extension[unitNumber].valueString = "A-7"
* extension[emsUnit].extension[callSign].valueString = "Medic 7"

// eDispatch.01 - Dispatch Reason → Motor vehicle accident (SNOMED)
* extension[dispatchReason].valueCodeableConcept
    = $snomed#418399005 "Motor vehicle accident"

// eDispatch.02-.06 - Dispatch Information
* extension[dispatchInfo].extension[emdPerformed].valueCodeableConcept
    = $nemsis-encounter-cs#2302003 "Yes, With Pre-Arrival Instructions"
* extension[dispatchInfo].extension[emdDeterminant].valueString = "29D02p"
* extension[dispatchInfo].extension[dispatchCenterNameOrId].valueString
    = "Riverside County Emergency Communications Center"
* extension[dispatchInfo].extension[dispatchPriority].valueCodeableConcept
    = $nemsis-encounter-cs#2305001 "Critical"
* extension[dispatchInfo].extension[cadRecordId].valueString = "CAD-2026-0314-008842"

// eTimes.01-.15 - Response Timeline
* extension[emsTimes].extension[psapCallTime].valueDateTime = "2026-03-14T14:20:00-08:00"
* extension[emsTimes].extension[dispatchNotified].valueDateTime = "2026-03-14T14:21:00-08:00"
* extension[emsTimes].extension[unitNotified].valueDateTime = "2026-03-14T14:22:00-08:00"
* extension[emsTimes].extension[unitEnRoute].valueDateTime = "2026-03-14T14:24:00-08:00"
* extension[emsTimes].extension[unitArrivedScene].valueDateTime = "2026-03-14T14:31:00-08:00"
* extension[emsTimes].extension[arrivalAtPatient].valueDateTime = "2026-03-14T14:33:00-08:00"
* extension[emsTimes].extension[unitLeftScene].valueDateTime = "2026-03-14T14:52:00-08:00"
* extension[emsTimes].extension[patientArrivedDestination].valueDateTime = "2026-03-14T15:05:00-08:00"
* extension[emsTimes].extension[destinationPatientTransferOfCare].valueDateTime = "2026-03-14T15:08:00-08:00"
* extension[emsTimes].extension[unitBackInService].valueDateTime = "2026-03-14T15:25:00-08:00"
* extension[emsTimes].extension[unitBackAtBase].valueDateTime = "2026-03-14T15:40:00-08:00"

// eDisposition.19/.27-.32 - Disposition Codes
* extension[dispositionCodes].extension[unitDisposition].valueCodeableConcept
    = $nemsis-encounter-cs#4227001 "Patient Contact Made"
* extension[dispositionCodes].extension[patientEvaluationCare].valueCodeableConcept
    = $nemsis-encounter-cs#4228001 "Patient Evaluated and Care Provided"
* extension[dispositionCodes].extension[crewDisposition].valueCodeableConcept
    = $nemsis-encounter-cs#4229001 "Initiated and Continued Primary Care"
* extension[dispositionCodes].extension[transportDisposition].valueCodeableConcept
    = $nemsis-encounter-cs#4230001 "Transport by This EMS Unit (This Crew Only)"
* extension[dispositionCodes].extension[levelOfCareProvided].valueCodeableConcept
    = $nemsis-encounter-cs#4232005 "ALS - Paramedic"
* extension[dispositionCodes].extension[patientAcuity].valueCodeableConcept
    = $nemsis-encounter-cs#4219001 "Critical (Red)"

// eDisposition.16-.18 - Transport Details
* extension[transportDetails].extension[transportMethod].valueCodeableConcept
    = $nemsis-encounter-cs#4216005 "Ground-Ambulance"
* extension[transportDetails].extension[transportMode].valueCodeableConcept
    = $nemsis-encounter-cs#4217001 "Emergent (Immediate Response)"
* extension[transportDetails].extension[additionalTransportMode][0].valueCodeableConcept
    = $nemsis-encounter-cs#4218011 "Lights and Sirens"

// eDisposition.11/.20-.25 - Destination Details
* extension[destinationDetails].extension[reasonForChoosingDestination][0].valueCodeableConcept
    = $nemsis-encounter-cs#4220021 "Regional Specialty Center"
* extension[destinationDetails].extension[typeOfDestination].valueCodeableConcept
    = $nemsis-encounter-cs#4221003 "Hospital-Emergency Department"
* extension[destinationDetails].extension[hospitalInPatientDestination].valueCodeableConcept
    = $nemsis-encounter-cs#4222013 "Hospital-ICU"
* extension[destinationDetails].extension[hospitalCapability][0].valueCodeableConcept
    = $nemsis-encounter-cs#9908021 "Trauma Center Level 1"
* extension[destinationDetails].extension[preArrivalAlert].valueCodeableConcept
    = $nemsis-encounter-cs#4224003 "Yes-Adult Trauma"
* extension[destinationDetails].extension[preArrivalAlertDateTime].valueDateTime
    = "2026-03-14T14:50:00-08:00"
* extension[destinationDetails].extension[numberOfPatients].valuePositiveInt = 1

// eProtocols.01 - Protocol Used → Injury-Head
* extension[protocolUsed][0].valueCodeableConcept
    = $nemsis-procedures#9914101 "Injury-Head"

// eSituation.07 - Chief Complaint Anatomic Location → Head
* extension[EMSIncidentType].valueCodeableConcept
    = $nemsis-situation#2807015 "Head"

// eDisposition.30 - Transport Disposition (legacy standalone extension)
* extension[EMSTransportReason].valueCodeableConcept
    = $nemsis-encounter-cs#4230001 "Transport by This EMS Unit (This Crew Only)"

// eOther.01/.02/.08 - Other Context
* extension[otherContext].extension[reviewRequested].valueBoolean = true
* extension[otherContext].extension[registryCandidate][0].valueCodeableConcept
    = $nemsis-other#4502017 "Trauma"
* extension[otherContext].extension[crewCompletingReport].valueString = "P-1234"

// eOther.03-.06 - Crew Safety (per crew member)
* extension[crewSafety][0].extension[crewMemberId].valueString = "P-1234"
* extension[crewSafety][0].extension[ppeUsed][0].valueCodeableConcept
    = $nemsis-other#4503003 "Gloves"
* extension[crewSafety][0].extension[ppeUsed][1].valueCodeableConcept
    = $nemsis-other#4503001 "Eye Protection"
* extension[crewSafety][0].extension[workRelatedExposure].valueBoolean = false
