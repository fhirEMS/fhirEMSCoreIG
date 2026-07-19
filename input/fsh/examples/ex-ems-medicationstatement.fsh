// ============================================================
// Example: EMS Medication Statement — Home Medication
// Scenario: MVA patient reports taking lisinopril daily
// NEMSIS eHistory.12-.15, .20
// ============================================================

Instance: ex-ems-medicationstatement
InstanceOf: EMSMedicationStatement
Title: "Example EMS Home Medication — Lisinopril"
Description: "Example home-medication statement demonstrating the EMSMedicationStatement profile. Patient reports taking lisinopril 10 mg orally once daily for hypertension."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-medicationstatement"

* status = #active

// eHistory.12 - Current Medications (RxNorm)
* medicationCodeableConcept.coding[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* medicationCodeableConcept.coding[0].code = #314076
* medicationCodeableConcept.coding[0].display = "lisinopril 10 MG Oral Tablet"
* medicationCodeableConcept.text = "Lisinopril 10 mg"

* subject = Reference(ex-ems-patient)
* context = Reference(ex-ems-encounter)
* informationSource = Reference(ex-ems-patient)
* dateAsserted = "2026-03-14T14:40:00-08:00"

// Reason aligns with the reported hypertension history
* reasonReference = Reference(ex-ems-condition-problems)

// ── Dosage ────────────────────────────────────────────────────
* dosage[0].text = "10 mg orally once daily"

// eHistory.13/.14 - Dose and Dosage Unit (UCUM preferred)
* dosage[0].doseAndRate[0].doseQuantity = 10 'mg' "mg"

// eHistory.15 - Administration Route → Oral
* dosage[0].route = $nemsis-medications#9927035 "Oral"

// eHistory.20 - Frequency → qd (every day)
* dosage[0].timing.code = $nemsis-history#3120019 "qd (every day)"
