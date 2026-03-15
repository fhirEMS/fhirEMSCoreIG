// ============================================================
// Example: EMS Blood Pressure Observation
// Scenario: First set of vitals at scene, MVA patient
// NEMSIS eVitals.06/07/08
// ============================================================

Instance: ex-ems-observation-bp
InstanceOf: EMSObservationBP
Title: "Example EMS Blood Pressure Observation"
Description: "Example blood pressure observation demonstrating the EMSObservationBP profile. First vital set taken at the scene of an MVA."
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-bp"

* status = #final

// Category — vital signs (inherited from US Core BP)
* category[VSCat].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding[0].code = #vital-signs

// Code is fixed to LOINC 85354-9 by US Core Blood Pressure profile (parent)
// Do not override; it will be set automatically.

// eVitals.01 - Date/Time
* effectiveDateTime = "2026-03-14T14:35:00-08:00"

// Subject and encounter
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)

// eVitals.02 - Obtained Prior to EMS Care → No
* extension[obtainedPrior].valueCodeableConcept
    = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"

// eVitals.08 - BP Method → Cuff-Manual Auscultated
* extension[bpMethod].valueCodeableConcept
    = $nemsis-vitals#3308007 "Cuff-Manual Auscultated"

// eVitals.06 - SBP
* component[systolic].code.coding[0].system = "http://loinc.org"
* component[systolic].code.coding[0].code = #8480-6
* component[systolic].valueQuantity.value = 148
* component[systolic].valueQuantity.unit = "mmHg"
* component[systolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[systolic].valueQuantity.code = #mm[Hg]

// eVitals.07 - DBP
* component[diastolic].code.coding[0].system = "http://loinc.org"
* component[diastolic].code.coding[0].code = #8462-4
* component[diastolic].valueQuantity.value = 94
* component[diastolic].valueQuantity.unit = "mmHg"
* component[diastolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[diastolic].valueQuantity.code = #mm[Hg]
