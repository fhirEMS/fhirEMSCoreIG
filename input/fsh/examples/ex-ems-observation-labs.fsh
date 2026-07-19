// ============================================================
// Example: EMS Lab Observation
// Scenario: Blood glucose obtained at scene (MVA patient)
// NEMSIS eLabs section
// ============================================================

Instance: ex-ems-observation-labs
InstanceOf: EMSObservationLabs
Title: "Example EMS Lab — Blood Glucose"
Description: "Example lab observation demonstrating the EMSObservationLabs profile. Point-of-care blood glucose obtained at the scene during MVA response."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-labs"

* status = #final

// Category — laboratory
* category[us-core].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[us-core].coding[0].code = #laboratory

// eLabs.03 - Lab Result Type → Glucose
// LOINC 41653-7: Glucose [Mass/volume] in Capillary blood by Glucometer
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #41653-7

// eLabs.01 - Date/Time
* effectiveDateTime = "2026-03-14T14:38:00-08:00"

* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)

// eLabs.02 - Obtained Prior to EMS Care → No
* extension[obtainedPrior].valueCodeableConcept
    = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"

// eLabs.04 - Lab Result Value → 142 mg/dL
* valueQuantity.value = 142
* valueQuantity.unit = "mg/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mg/dL
