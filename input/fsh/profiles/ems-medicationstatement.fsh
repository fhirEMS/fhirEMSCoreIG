// ============================================================
// Profile: EMS Medication Statement — Current (Home) Medications
// NEMSIS 3.5.1.251001CP2 — eHistory.12–.15, .20
// Parent: FHIR R4 MedicationStatement (no US Core 6.1.0 profile)
// ============================================================

Profile: EMSMedicationStatement
Id: ems-medicationstatement
Title: "EMS Medication Statement — Home Medications"
Description: "Documents a medication the patient reports currently taking (eHistory.12 Current Medications), with dose (eHistory.13/.14), route (eHistory.15), and frequency (eHistory.20). Distinct from EMSMedicationAdministration, which records medications administered during the EMS encounter. One resource per reported medication."
Parent: MedicationStatement

* ^url = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-medicationstatement"
* ^version = "0.2.0"
* ^status = #active
* ^experimental = false

// ── Status ────────────────────────────────────────────────────
* status MS
  * ^short = "active for current medications"
  * ^comment = "Home medications reported during an EMS encounter are 'active'. Use 'unknown' with dataAbsentReason patterns when the medication list could not be obtained."

// ── eHistory.12 - Current Medications (RxNorm) ───────────────
* medication[x] 1..1 MS
* medication[x] only CodeableConcept
* medicationCodeableConcept
  * ^short = "eHistory.12 - Current Medications (RxNorm)"
  * ^comment = "NEMSIS eHistory.12. Usage: Recommended. Nillable. NV: NotRecorded. PN: DeniesMedications, Refused, UnableToComplete, MedicationAllergy, None. NEMSIS stores RxNorm codes directly — use system http://www.nlm.nih.gov/research/umls/rxnorm."

// ── Subject and context ───────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
* context MS
* context only Reference(EMSEncounter)

// ── Information source — eHistory.09 alignment ───────────────
* informationSource MS
  * ^short = "Who reported the medication (patient, family, etc.)"
  * ^comment = "Aligns with eHistory.09 (Medical History Obtained From). Reference the Patient or RelatedPerson who provided the medication history."

// ── Dosage — eHistory.13/.14/.15/.20 ─────────────────────────
* dosage MS
* dosage.doseAndRate MS
* dosage.doseAndRate.dose[x] MS
* dosage.doseAndRate.doseQuantity MS
  * ^short = "eHistory.13/.14 - Current Medication Dose and Dosage Unit"
  * ^comment = "NEMSIS eHistory.13 (dose value) and eHistory.14 (dosage unit, 3114xxx codes). Prefer UCUM units (system http://unitsofmeasure.org) when a UCUM equivalent exists; otherwise use the NEMSIS unit code from vs-ems-history-med-dosage-units with system cs-nemsis-history."

* dosage.route MS
* dosage.route from EMSMedicationRouteVS (required)
  * ^short = "eHistory.15 - Current Medication Administration Route"
  * ^comment = "NEMSIS eHistory.15. Usage: Optional. Same 9927xxx route codes as eMedications.04 (cs-nemsis-medications)."

* dosage.timing MS
* dosage.timing.code from EMSMedFrequencyVS (extensible)
  * ^short = "eHistory.20 - Current Medication Frequency"
  * ^comment = "NEMSIS eHistory.20. Usage: Optional. NEMSIS frequency abbreviation codes (3120xxx); structured Timing.repeat may be populated in addition."

// ── Date asserted ────────────────────────────────────────────
* dateAsserted MS
  * ^comment = "Date the medication history was recorded by EMS."
