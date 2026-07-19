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
