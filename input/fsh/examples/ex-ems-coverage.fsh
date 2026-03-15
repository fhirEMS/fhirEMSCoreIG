// ============================================================
// Example: EMS Coverage (Insurance)
// Scenario: Medicare Part B primary insurance
// NEMSIS ePayment.09–22, .57
// ============================================================

Instance: ex-ems-coverage
InstanceOf: EMSCoverage
Title: "Example EMS Coverage — Medicare Part B"
Description: "Example insurance coverage demonstrating the EMSCoverage profile. Represents a patient with Medicare Part B as primary insurance."
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-coverage"

// ── Status ────────────────────────────────────────────────────
* status = #active

// ── Subscriber ID — ePayment.18 (Policy ID Number) ───────────
* subscriberId = "1EG4-TE5-MK72"

// ── Beneficiary — patient is the insured ─────────────────────
* beneficiary = Reference(ex-ems-patient)

// ── Subscriber — patient is self-insured ─────────────────────
* subscriber = Reference(ex-ems-patient)

// ── Relationship — self ───────────────────────────────────────
// ePayment.22 - Patient's Relationship to the Insured
* relationship = $nemsis-payment#2622001 "Self"

// ── Payor — ePayment.09/10 (CMS / Medicare) ──────────────────
* payor[0].display = "Centers for Medicare & Medicaid Services"
* payor[0].identifier.system = "http://hl7.org/fhir/sid/us-npi"
* payor[0].identifier.value = "1234000002"

// ── Billing Priority — ePayment.11 (Primary) ─────────────────
* order = 1

// ── Payer Type — ePayment.57 (X12 code: Medicare Part B) ─────
* extension[payerType].valueCodeableConcept = $nemsis-payer-type#MB "Medicare Part B"
