// ============================================================
// Example: EMS AllergyIntolerance
// Scenario: Penicillin allergy (eHistory.06)
// NEMSIS eHistory section
// ============================================================

Instance: ex-ems-allergyintolerance
InstanceOf: EMSAllergyIntolerance
Title: "Example EMS AllergyIntolerance — Penicillin"
Description: "Example allergy demonstrating the EMSAllergyIntolerance profile. Documented penicillin allergy (eHistory.06 medication allergy) reported during MVA response."
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-allergyintolerance"

* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding[0].code = #active

* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* verificationStatus.coding[0].code = #unconfirmed

// eHistory.06 - Medication Allergy — category = medication
* category[0] = #medication

// eHistory.06 - Medication (RxNorm: Penicillin)
* code.coding[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* code.coding[0].code = #7980
* code.coding[0].display = "penicillin G"

* patient = Reference(ex-ems-patient)
* recorder = Reference(ex-ems-practitioner)

// Reaction documented by patient report
* reaction[0].manifestation[0].coding[0].system = "http://snomed.info/sct"
* reaction[0].manifestation[0].coding[0].code = #271807003
* reaction[0].manifestation[0].coding[0].display = "Eruption of skin"
* reaction[0].severity = #mild
