// ============================================================
// Example: EMS Condition — Past Medical History
// Scenario: MVA patient with reported history of hypertension
// NEMSIS eHistory section
// ============================================================

Instance: ex-ems-condition-problems
InstanceOf: EMSConditionProblems
Title: "Example EMS Past Medical History — Hypertension"
Description: "Example past-medical-history Condition demonstrating the EMSConditionProblems profile. Patient reports essential hypertension; history obtained from the patient; tetanus immunization 2020; physical exam suggests alcohol use; last oral intake at 12:30."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition-problems"

// eHistory.08 - Medical/Surgical History (ICD-10-CM)
* code.coding[0] = $icd10cm#I10 "Essential (primary) hypertension"
* code.text = "Hypertension"

* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active

* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #unconfirmed

* category[us-core].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[us-core].coding[0].code = #problem-list-item
* category[us-core].coding[0].display = "Problem List Item"

* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* recorder = Reference(ex-ems-practitioner)
* recordedDate = "2026-03-14T14:40:00-08:00"

// ── eHistory Context Extension ────────────────────────────────
// eHistory.05 - Advance Directives → None
* extension[historyContext].extension[advanceDirectives][0].valueCodeableConcept
    = $nemsis-history#3105005 "None"

// eHistory.02-.04 - Patient's Practitioner
* extension[historyContext].extension[practitionerName].valueHumanName.family = "Chen"
* extension[historyContext].extension[practitionerName].valueHumanName.given[0] = "Sarah"

// eHistory.09 - Medical History Obtained From → Patient
* extension[historyContext].extension[historyObtainedFrom][0].valueCodeableConcept
    = $nemsis-history#3109007 "Patient"

// eHistory.10/.11 - Immunization → Tetanus, 2020
* extension[historyContext].extension[immunizationType].valueCodeableConcept
    = $nemsis-history#9910043 "Tetanus"
* extension[historyContext].extension[immunizationYear].valueDate = "2020"

// eHistory.16 - Emergency Information Form → No
* extension[historyContext].extension[emergencyInformationForm].valueBoolean = false

// eHistory.17 - Alcohol/Drug Use Indicators
* extension[historyContext].extension[alcoholDrugUse][0].valueCodeableConcept
    = $nemsis-history#3117013 "Physical Exam Indicates Suspected Alcohol or Drug Use"

// eHistory.19 - Last Oral Intake
* extension[historyContext].extension[lastOralIntake].valueDateTime = "2026-03-14T12:30:00-08:00"
