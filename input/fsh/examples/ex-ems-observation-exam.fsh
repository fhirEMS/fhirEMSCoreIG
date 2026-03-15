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

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-exam"
* status = #final
* category[us-core].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[us-core].coding[0].code = #exam
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #8709-8
* code.coding[0].display = "Skin exam"
* effectiveDateTime = "2026-03-14T14:37:00-08:00"
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)

// eExam.04 - Skin Assessment (pale)
* component[examFinding][+].code.coding[0].system = "http://loinc.org"
* component[examFinding][=].code.coding[0].code = #39106-0
* component[examFinding][=].code.coding[0].display = "Color of Skin"
* component[examFinding][=].valueCodeableConcept.coding[0].system = "http://hl7.org/fhir/us/emscore/CodeSystem/nemsis-exam"
* component[examFinding][=].valueCodeableConcept.coding[0].code = #3504009
* component[examFinding][=].valueCodeableConcept.coding[0].display = "Pale"

// eExam.04 - Skin moisture (diaphoretic)
* component[examFinding][+].code.coding[0].system = "http://snomed.info/sct"
* component[examFinding][=].code.coding[0].code = #364153007
* component[examFinding][=].code.coding[0].display = "Skin moisture"
* component[examFinding][=].valueCodeableConcept.coding[0].system = "http://hl7.org/fhir/us/emscore/CodeSystem/nemsis-exam"
* component[examFinding][=].valueCodeableConcept.coding[0].code = #3504013
* component[examFinding][=].valueCodeableConcept.coding[0].display = "Diaphoretic"

// ── Neurological Assessment ───────────────────────────────────
Instance: ex-ems-exam-neuro
InstanceOf: EMSObservationExam
Title: "Example EMS Exam — Neurological Assessment"
Description: "Neurological assessment observation (LOINC 10197-4). Altered mental status findings on MVA patient."
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-exam"
* status = #final
* category[us-core].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[us-core].coding[0].code = #exam
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #10197-4
* code.coding[0].display = "Neurological exam"
* effectiveDateTime = "2026-03-14T14:37:00-08:00"
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)

// eExam.19 - Mental Status
* component[examFinding][+].code.coding[0].system = "http://loinc.org"
* component[examFinding][=].code.coding[0].code = #70842-0
* component[examFinding][=].code.coding[0].display = "Mental status"
* component[examFinding][=].valueCodeableConcept.coding[0].system = "http://hl7.org/fhir/us/emscore/CodeSystem/nemsis-exam"
* component[examFinding][=].valueCodeableConcept.coding[0].code = #3519003
* component[examFinding][=].valueCodeableConcept.coding[0].display = "Confused"

// eExam.20 - Neurological (motor response asymmetric)
* component[examFinding][+].code.coding[0].system = "http://snomed.info/sct"
* component[examFinding][=].code.coding[0].code = #57676002
* component[examFinding][=].code.coding[0].display = "Joint pain"
* component[examFinding][=].valueCodeableConcept.coding[0].system = "http://hl7.org/fhir/us/emscore/CodeSystem/nemsis-exam"
* component[examFinding][=].valueCodeableConcept.coding[0].code = #3520003
* component[examFinding][=].valueCodeableConcept.coding[0].display = "Motor Response-Abnormal"
