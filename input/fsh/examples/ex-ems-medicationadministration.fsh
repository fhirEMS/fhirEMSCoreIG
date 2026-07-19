// ============================================================
// Example: EMS Medication Administration
// Scenario: Normal saline IV bolus for MVA patient
// NEMSIS eMedications section
// ============================================================

Instance: ex-ems-medicationadministration
InstanceOf: EMSMedicationAdministration
Title: "Example EMS Medication Administration — Normal Saline Bolus"
Description: "Example medication administration demonstrating the EMSMedicationAdministration profile. Normal saline 500 mL IV bolus administered to an MVA patient."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-medicationadministration"

* status = #completed

// eMedications.03 - Medication (RxNorm)
// RxNorm 313002 — Sodium chloride 0.9% injection solution
* medicationCodeableConcept.coding[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* medicationCodeableConcept.coding[0].code = #313002
* medicationCodeableConcept.coding[0].display = "sodium chloride 9 MG/ML Injectable Solution"

// eMedications.01 - Date/Time
* effectiveDateTime = "2026-03-14T14:42:00-08:00"

* subject = Reference(ex-ems-patient)
* context = Reference(ex-ems-encounter)

// eMedications.09/10 - Performer
* performer[0].function.coding[0].system = "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications"
* performer[0].function.coding[0].code = #9905007
* performer[0].function.coding[0].display = "Paramedic"
* performer[0].actor = Reference(ex-ems-practitioner)

// eMedications.04 - Route → Intravenous (IV)
* dosage.route.coding[0].system = "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications"
* dosage.route.coding[0].code = #9927023
* dosage.route.coding[0].display = "Intravenous (IV)"

// eMedications.05/06 - Dosage and Units → 500 mL
* dosage.dose.value = 500
* dosage.dose.unit = "ml"
* dosage.dose.system = "http://unitsofmeasure.org"
* dosage.dose.code = #mL

// EMSMedicationContext — priorEMSCare, response, complication, authorization
* extension[medicationContext].extension[priorEMSCare].valueCodeableConcept
    = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* extension[medicationContext].extension[response].valueCodeableConcept
    = $nemsis-medications#9916001 "Improved"
* extension[medicationContext].extension[complication].valueCodeableConcept
    = $nemsis-medications#3708031 "None"
* extension[medicationContext].extension[authorization].valueCodeableConcept
    = $nemsis-medications#9918005 "Protocol (Standing Order)"
