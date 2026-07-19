// ============================================================
// Example: EMS Condition
// Scenario: Primary impression — closed head injury (MVA)
// NEMSIS eSituation.11
// ============================================================

Instance: ex-ems-condition
InstanceOf: EMSCondition
Title: "Example EMS Condition — Closed Head Injury"
Description: "Example condition demonstrating the EMSCondition profile. Primary impression of closed head injury documented during an MVA response."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition"

// Clinical and verification status
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active
* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #provisional

// Category — encounter-diagnosis (eSituation.11 primary impression)
* category[us-core].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[us-core].coding[0].code = #encounter-diagnosis
* category[us-core].coding[0].display = "Encounter Diagnosis"

// eSituation.11 - Primary Impression (ICD-10-CM)
// S09.90XA — Unspecified injury of head, initial encounter
* code.coding[0].system = "http://hl7.org/fhir/sid/icd-10-cm"
* code.coding[0].code = #S09.90XA
* code.coding[0].display = "Unspecified injury of head, initial encounter"

* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* recorder = Reference(ex-ems-practitioner)

// eSituation.01 - Possible Injury Date/Time of Onset
* onsetDateTime = "2026-03-14T14:15:00-08:00"
