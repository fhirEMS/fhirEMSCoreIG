// ============================================================
// Example: EMS Vital Signs Observations
// Scenario: Heart rate, SpO2, respiratory rate for MVA patient
// NEMSIS eVitals section
// ============================================================

// ── Heart Rate ────────────────────────────────────────────────
Instance: ex-ems-heart-rate
InstanceOf: EMSObservationVitalSigns
Title: "Example EMS Vital Sign — Heart Rate"
Description: "Heart rate observation (LOINC 8867-4). 110 bpm at scene — tachycardic MVA patient."
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-vitalsigns"
* status = #final
* category[VSCat].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding[0].code = #vital-signs
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #8867-4
* code.coding[0].display = "Heart rate"
* effectiveDateTime = "2026-03-14T14:37:00-08:00"
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)
* valueQuantity.value = 110
* valueQuantity.unit = "beats/minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min

// eVitals.02 — Obtained Prior to EMS Care
* extension[obtainedPrior].valueCodeableConcept
    = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"

// ── SpO2 (Pulse Oximetry) ─────────────────────────────────────
Instance: ex-ems-spo2
InstanceOf: EMSObservationVitalSigns
Title: "Example EMS Vital Sign — SpO2"
Description: "Pulse oximetry observation (LOINC 59408-5). 94% on room air at scene."
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-vitalsigns"
* status = #final
* category[VSCat].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding[0].code = #vital-signs
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #59408-5
* code.coding[0].display = "Oxygen saturation in Arterial blood by Pulse oximetry"
// LOINC 2708-6 required by us-core-vital-signs OxygenSat magic code constraint
* code.coding[1].system = "http://loinc.org"
* code.coding[1].code = #2708-6
* effectiveDateTime = "2026-03-14T14:37:00-08:00"
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)
* valueQuantity.value = 94
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%
* extension[obtainedPrior].valueCodeableConcept
    = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"

// ── Respiratory Rate ──────────────────────────────────────────
Instance: ex-ems-respiratory-rate
InstanceOf: EMSObservationVitalSigns
Title: "Example EMS Vital Sign — Respiratory Rate"
Description: "Respiratory rate observation (LOINC 9279-1). 22 breaths/min — slightly tachypneic."
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-vitalsigns"
* status = #final
* category[VSCat].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding[0].code = #vital-signs
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #9279-1
* code.coding[0].display = "Respiratory rate"
* effectiveDateTime = "2026-03-14T14:37:00-08:00"
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)
* valueQuantity.value = 22
* valueQuantity.unit = "breaths/minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
* extension[obtainedPrior].valueCodeableConcept
    = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
