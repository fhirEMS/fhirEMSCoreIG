// ============================================================
// EMS Medication Administration
// NEMSIS: eMedications section (13 elements)
// Derived from: FHIR R4 MedicationAdministration (no US Core profile)
// NDR-008: Always use MedicationAdministration (NOT MedicationRequest)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSMedicationAdministration
Parent: MedicationAdministration
Id: ems-medicationadministration
Title: "EMS Medication Administration"
Description: """
  EMS medication administration derived directly from FHIR R4
  MedicationAdministration. No US Core profile exists for this resource
  (NDR-008). Represents the NEMSIS eMedications section
  (Version 3.5.1.251001CP2).

  NEMSIS eMedications records what was ACTUALLY administered in the field,
  not what was ordered. Always use MedicationAdministration, never
  MedicationRequest, for NEMSIS eMedications data.

  eMedications.03 uses RxNorm codes (direct pass-through from NEMSIS).
  Additional NEMSIS context (prior EMS care, response, complication,
  authorization, by-another-unit) is carried in EMSMedicationContext.
"""

// ── Extension ─────────────────────────────────────────────────
* extension contains EMSMedicationContext named medicationContext 0..1 MS
  * ^short = "eMedications.02/07/08/11/13 - EMS Medication Context"
  * ^comment = "Carries NEMSIS eMedications elements not representable in base FHIR MedicationAdministration: priorEMSCare (.02), response (.07), complication (.08), authorization (.11), byAnotherUnit (.13)."

// ── eMedications.01 - Date/Time ───────────────────────────────
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^short = "eMedications.01 - Date/Time Medication Administered"
  * ^comment = "NEMSIS eMedications.01. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."

// ── eMedications.03 - Medication (RxNorm) ─────────────────────
* medication[x] 1..1 MS
* medication[x] only CodeableConcept
* medicationCodeableConcept
  * coding MS
    * ^comment = "NEMSIS eMedications.03. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. PN: ExamFindingNotPresent, UnableToComplete. NEMSIS stores RxNorm codes directly — use system http://www.nlm.nih.gov/research/umls/rxnorm."

// ── Subject / Context (Encounter) ────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
* context MS
* context only Reference(EMSEncounter)
  * ^short = "The EMS encounter during which this medication was administered"

// ── eMedications.04 - Route ───────────────────────────────────
* dosage MS
* dosage.route MS
* dosage.route from EMSMedicationRouteVS (required)
  * ^short = "eMedications.04 - Medication Administered Route"
  * ^comment = "NEMSIS eMedications.04. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. PN: ExamFindingNotPresent, UnableToComplete."

// ── eMedications.05/06 - Dosage and Units ────────────────────
* dosage.dose MS
  * ^short = "eMedications.05 - Medication Dosage"
  * ^comment = "NEMSIS eMedications.05 (numeric dose amount). Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."
  * unit MS
    * ^comment = "NEMSIS eMedications.06 - Medication Dosage Units. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Code from EMSMedicationDosageUnitsVS."

// ── eMedications.09/10 - Performer ────────────────────────────
* performer MS
* performer.actor only Reference(EMSPractitioner or EMSPractitionerRole)
  * ^short = "eMedications.09 - Medication Crew (Healthcare Professionals) ID"
* performer.function MS
* performer.function from EMSCaregiverLevelVS (required)
  * ^short = "eMedications.10 - Role/Type of Person Administering Medication"
  * ^comment = "NEMSIS eMedications.10. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."

// ── Status ────────────────────────────────────────────────────
* status MS
  * ^comment = "Use 'completed' for administered medications. Use 'not-done' for NV (NotRecorded → extend with dataAbsentReason pattern)."
