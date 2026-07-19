// ============================================================
// Example: EMS Airway Management Observation
// Scenario: Endotracheal intubation for cardiac arrest patient
// NEMSIS eAirway section
// ============================================================

Instance: ex-ems-observation-airway
InstanceOf: EMSObservationAirway
Title: "Example EMS Airway Management — Endotracheal Intubation"
Description: "Example airway management observation demonstrating the EMSObservationAirway profile. Endotracheal intubation performed on cardiac arrest patient. Confirmed by waveform ETCO2 and auscultation."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-airway"

* status = #final

* category[us-core].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[us-core].coding[0].code = #procedure

// Code fixed to SNOMED 182682004 (Airway management) by profile
* code = $snomed#182682004 "Emergency laryngeal intubation"

// eAirway.02 - Date/Time Airway Device Placement Confirmed
* effectiveDateTime = "2026-03-14T14:32:00-08:00"

* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)

// eAirway.07 - Crew Member performing airway management
* performer[0] = Reference(ex-ems-practitioner)

// eAirway.05 - Tube Depth (22 cm at lip)
* component[tubeDepth].code = $loinc#19841-6
* component[tubeDepth].valueQuantity.value = 22
* component[tubeDepth].valueQuantity.unit = "cm"
* component[tubeDepth].valueQuantity.system = "http://unitsofmeasure.org"
* component[tubeDepth].valueQuantity.code = #cm

// ── eAirway Context Extension ─────────────────────────────────
// eAirway.01 - Indication → Apnea or Agonal Respirations
* extension[airwayContext].extension[indications][+].valueCodeableConcept
    = $nemsis-airway#4001005 "Apnea or Agonal Respirations"

// eAirway.02 - Confirmed Date/Time
* extension[airwayContext].extension[confirmedDateTime].valueDateTime = "2026-03-14T14:32:00-08:00"

// eAirway.03 - Device Being Confirmed → Endotracheal Tube
* extension[airwayContext].extension[deviceConfirmed].valueCodeableConcept
    = $nemsis-airway#4003003 "Endotracheal Tube"

// eAirway.04 - Confirmation Methods → Waveform ETCO2 + Auscultation
* extension[airwayContext].extension[confirmationMethod][+].valueCodeableConcept
    = $nemsis-airway#4004019 "Waveform ETCO2"
* extension[airwayContext].extension[confirmationMethod][+].valueCodeableConcept
    = $nemsis-airway#4004001 "Auscultation"

// eAirway.06 - Type of Individual Confirming → Another Person on the Same Crew
* extension[airwayContext].extension[confirmingPersonType].valueCodeableConcept
    = $nemsis-airway#4006001 "Another Person on the Same Crew"
