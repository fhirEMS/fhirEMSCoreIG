// ============================================================
// Profile: EMS Lab / Imaging Observation
// NEMSIS 3.5.1.251001CP2 — eLabs section
// Parent: US Core Observation (Clinical Result)
// ============================================================

Profile: EMSObservationLabs
Id: ems-observation-labs
Title: "EMS Lab and Imaging Observation"
Description: "Documents lab results and imaging study results obtained during an EMS response. Covers NEMSIS eLabs.01–08. All eLabs elements are Optional. Lab results (eLabs.03/04) are represented as individual Observations; imaging study results (eLabs.05/06) are represented similarly with appropriate LOINC codes."
Parent: $us-core-observation

* ^url = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-labs"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false

// ── Status ────────────────────────────────────────────────────
* status MS
  * ^short = "Observation status (final | preliminary | amended)"

// ── Category — laboratory ─────────────────────────────────────
* category 1..* MS
* category[us-core] from http://hl7.org/fhir/us/core/ValueSet/us-core-clinical-result-observation-category (required)
  * ^short = "Category — 'laboratory' for lab results; 'imaging' for imaging studies"
  * ^comment = "NEMSIS eLabs.03/04 use category 'laboratory'. NEMSIS eLabs.05/06 use category 'imaging'."

// ── Code — eLabs.03 (Lab Result Type) or eLabs.05 (Imaging Study Type) ──
* code 1..1 MS
  * ^short = "eLabs.03 - Lab Result Type / eLabs.05 - Imaging Study Type"
  * ^comment = "NEMSIS eLabs.03 (lab result type, EMSLabResultTypeVS) or eLabs.05 (imaging study type, EMSImagingStudyTypeVS). LOINC codes are preferred where available for lab analytes. NEMSIS eLabs codes are acceptable when no LOINC equivalent exists."

// ── Effective date/time — eLabs.01 ───────────────────────────
* effective[x] MS
* effectiveDateTime MS
  * ^short = "eLabs.01 - Date/Time Lab or Imaging Study Performed"
  * ^comment = "NEMSIS eLabs.01. Usage: Optional. Date/Time the lab or imaging study was performed or resulted."

// ── Obtained prior to EMS care — eLabs.02 ────────────────────
* extension contains
    $ext-ems-vital-obtained-prior named obtainedPrior 0..1 MS
* extension[obtainedPrior]
  * ^short = "eLabs.02 - Obtained Prior to this Unit's EMS Care"
  * ^comment = "NEMSIS eLabs.02. Usage: Optional (Yes/No). Whether the lab or imaging study was obtained prior to this EMS unit's care."

// ── Subject and encounter ─────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
* encounter MS
* encounter only Reference(EMSEncounter)

// ── Performer ─────────────────────────────────────────────────
* performer MS
* performer only Reference(EMSPractitioner)

// ── Value — eLabs.04 (Lab Result numeric) or eLabs.06 (Imaging Results text) ──
* value[x] MS
  * ^short = "eLabs.04 - Lab Result Value / eLabs.06 - Imaging Study Results"
  * ^comment = "NEMSIS eLabs.04 (numeric lab result) → Quantity with UCUM units. NEMSIS eLabs.06 (imaging results text) → string. NEMSIS eLabs.08 (graphic binary) is not represented in FHIR Observation; use DocumentReference for binary data."

// ── Note — eLabs.06 (Imaging Results as annotation) ─────────
* note MS
  * ^short = "eLabs.06 - Imaging Study Results (textual interpretation)"
  * ^comment = "NEMSIS eLabs.06. Usage: Optional. Free-text imaging study result narrative when valueString is not sufficient."

// ── DataType refinement — allow Quantity, string, CodeableConcept ─
* value[x] only Quantity or string or CodeableConcept
