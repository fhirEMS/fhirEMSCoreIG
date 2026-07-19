// ============================================================
// Profile: EMS Injury Condition
// NEMSIS 3.5.1.251001CP2 — eInjury section
// Parent: US Core Condition (Encounter Diagnosis)
// ============================================================

Profile: EMSConditionInjury
Id: ems-condition-injury
Title: "EMS Injury Condition"
Description: "Documents an injury and its circumstances during an EMS response event. Condition.code carries the cause of injury (eInjury.01, ICD-10-CM external cause codes). Mechanism of injury, CDC trauma triage criteria, vehicle collision details, safety equipment, and fall height are captured in the ext-ems-injury-context extension; Automated Collision Notification (ACN) telematics data in ext-ems-acn-incident."
Parent: $us-core-condition

* ^url = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-condition-injury"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false

// ── eInjury context extensions ────────────────────────────────
* extension contains
    $ext-ems-injury-context named injuryContext 0..1 MS and
    $ext-ems-acn-incident named acnIncident 0..1
* extension[injuryContext]
  * ^short = "eInjury — Injury circumstances (NEMSIS eInjury.02–.10)"
  * ^comment = "Complex extension containing mechanism of injury, trauma triage criteria, and collision/fall details."
* extension[acnIncident]
  * ^short = "eInjury — ACN telematics data (NEMSIS eInjury.11–.29)"
  * ^comment = "Complex extension containing Automated Collision Notification data received from vehicle telematics."

// ── Condition code — eInjury.01 Cause of Injury ──────────────
* code 1..1 MS
  * ^short = "eInjury.01 - Cause of Injury (ICD-10-CM)"
  * ^comment = "NEMSIS eInjury.01. Usage: Required/National. Nillable. NV: NotApplicable, NotRecorded. NEMSIS uses ICD-10-CM external cause codes (V00–Y38); use $icd10cm codings within the inherited US Core condition-code binding. NEMSIS allows multiple causes (1..M) — create one EMSConditionInjury resource per cause of injury."

// ── Clinical status ───────────────────────────────────────────
* clinicalStatus 1..1 MS
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical (required)
  * ^short = "Clinical status (active / resolved)"
  * ^comment = "US Core requires required binding to condition-clinical ValueSet. Injuries documented during an EMS response are typically 'active'."

// ── Verification status ───────────────────────────────────────
* verificationStatus 1..1 MS
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status (required)
  * ^short = "Verification status (confirmed / provisional)"
  * ^comment = "US Core requires required binding to condition-ver-status ValueSet. Use 'confirmed' for observed injuries; 'provisional' for suspected injuries pending hospital evaluation."

// ── Category — encounter-diagnosis ───────────────────────────
* category 1..* MS
* category[us-core] = $condition-cat#encounter-diagnosis "Encounter Diagnosis"

// ── Subject and encounter ─────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
* encounter MS
* encounter only Reference(EMSEncounter)

// ── Onset — time of injury event ─────────────────────────────
* onset[x] MS
* onsetDateTime MS
  * ^short = "Date/Time of the injury event"
  * ^comment = "Use the incident time when known (e.g., eInjury.14 ACN incident date/time for telematics-reported collisions, or dispatch-reported incident time)."

// ── Abatement / Recorded Date (US Core MS) ───────────────────
* abatement[x] MS
  * ^comment = "US Core requires MS. Rarely used for prehospital injury documentation."
* recordedDate MS
  * ^comment = "US Core requires MS. Date the injury condition was first recorded by EMS."

// ── Body site ─────────────────────────────────────────────────
* bodySite MS
  * ^short = "Anatomic location of the injury"
  * ^comment = "SNOMED CT body structure codes. eInjury does not define a body-site element; populate from clinical assessment when documented."

// ── Recorder ─────────────────────────────────────────────────
* recorder MS
* recorder only Reference(EMSPractitioner)
