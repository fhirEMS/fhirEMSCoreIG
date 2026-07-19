// ============================================================
// Example: EMS Physical Exam Observation
// Scenario: Skin and neurological exam findings for MVA patient
// NEMSIS eExam section
// ============================================================

// ── Skin Assessment ───────────────────────────────────────────
Instance: ex-ems-exam-skin
InstanceOf: EMSObservationExam
Title: "Example EMS Exam — Skin Assessment"
Description: "Skin assessment observation (LOINC 8709-8). Pale, diaphoretic findings on MVA patient."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-exam"
* status = #final
* category[us-core].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[us-core].coding[0].code = #exam
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #8709-8
* code.coding[0].display = "Physical findings of Skin"
* effectiveDateTime = "2026-03-14T14:37:00-08:00"
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)

// eExam.04 - Skin Assessment (pale)
* component[+].code.coding[0].system = "http://loinc.org"
* component[=].code.coding[0].code = #39106-0
// display omitted — LOINC 39106-0 display requires verification against current LOINC
* component[=].valueCodeableConcept.coding[0].system = "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-exam"
* component[=].valueCodeableConcept.coding[0].code = #3504025
* component[=].valueCodeableConcept.coding[0].display = "Pale"

// eExam.04 - Skin moisture (diaphoretic) — uses same LOINC 8709-8 panel code as skin color
* component[+].code.coding[0].system = "http://loinc.org"
* component[=].code.coding[0].code = #8709-8
* component[=].valueCodeableConcept.coding[0].system = "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-exam"
* component[=].valueCodeableConcept.coding[0].code = #3504007
* component[=].valueCodeableConcept.coding[0].display = "Diaphoretic"

// ── Neurological Assessment ───────────────────────────────────
Instance: ex-ems-exam-neuro
InstanceOf: EMSObservationExam
Title: "Example EMS Exam — Neurological Assessment"
Description: "Neurological assessment observation (LOINC 10197-4). Altered mental status findings on MVA patient."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-exam"
* status = #final
* category[us-core].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[us-core].coding[0].code = #exam
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #32618-1
// display omitted — verify display for LOINC 32618-1 against current LOINC cache
* effectiveDateTime = "2026-03-14T14:37:00-08:00"
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)

// eExam.19 - Mental Status
* component[+].code.coding[0].system = "http://loinc.org"
* component[=].code.coding[0].code = #70842-0
// display omitted — LOINC 70842-0 display requires verification against current LOINC
* component[=].valueCodeableConcept.coding[0].system = "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-exam"
* component[=].valueCodeableConcept.coding[0].code = #3519003
* component[=].valueCodeableConcept.coding[0].display = "Confused"

// eExam.20 - Neurological (motor response asymmetric)
* component[+].code.coding[0].system = "http://snomed.info/sct"
* component[=].code.coding[0].code = #57676002
* component[=].code.coding[0].display = "Joint pain"
* component[=].valueCodeableConcept.coding[0].system = "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-exam"
* component[=].valueCodeableConcept.coding[0].code = #3516043
* component[=].valueCodeableConcept.coding[0].display = "Motor Function-Abnormal/Weakness"
