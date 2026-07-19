// ============================================================
// Profile: EMS Coverage (Insurance)
// NEMSIS 3.5.1.251001CP2 — ePayment.09–22, .57–60
// Parent: FHIR R4 Coverage (no US Core profile)
// ============================================================

Profile: EMSCoverage
Id: ems-coverage
Title: "EMS Coverage (Insurance)"
Description: "Represents insurance coverage information collected during an EMS response. Derived from FHIR R4 Coverage base resource (no US Core profile exists). Maps to NEMSIS ePayment insurance elements (ePayment.09–22, .57–60): insurance company identity, address, billing priority, policy and group IDs, insured person demographics, and payer type."
Parent: Coverage

* ^url = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-coverage"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false

// ── Status ────────────────────────────────────────────────────
* status MS
* status = #active
  * ^short = "Coverage status — active during EMS response"

// ── Subscriber (Patient or Related Person) ────────────────────
* subscriber MS
* subscriber only Reference(EMSPatient or RelatedPerson)
  * ^short = "ePayment.19–21 - Last/First/Middle Name of the Insured"
  * ^comment = "NEMSIS ePayment.19/20/21. Usage: Optional. Reference to the insured person (Patient if self; RelatedPerson if other)."

// ── Subscriber ID — ePayment.18 (Policy ID Number) ───────────
* subscriberId MS
  * ^short = "ePayment.18 - Insurance Policy ID Number"
  * ^comment = "NEMSIS ePayment.18. Usage: Optional. The insurance policy identification number."

// ── Beneficiary ───────────────────────────────────────────────
* beneficiary 1..1 MS
* beneficiary only Reference(EMSPatient)

// ── Relationship to Subscriber — ePayment.22 ─────────────────
* relationship MS
* relationship from EMSInsuredRelationshipVS (required)
  * ^short = "ePayment.22 - Patient's Relationship to the Insured"
  * ^comment = "NEMSIS ePayment.22. Usage: Optional."

// ── Payor — ePayment.09/10 (Insurance Company) ───────────────
* payor MS
* payor only Reference(Organization)
  * ^short = "ePayment.09/10 - Insurance Company ID and Name"
  * ^comment = "NEMSIS ePayment.09 (ID) and ePayment.10 (Name). Usage: Optional. Reference to the insurance company Organization."

// ── Group Identifier — ePayment.17 ───────────────────────────
* class ^slicing.discriminator.type = #pattern
* class ^slicing.discriminator.path = "type"
* class ^slicing.rules = #open

* class contains
    group  0..1 MS and
    plan   0..1 MS

* class[group].type = http://terminology.hl7.org/CodeSystem/coverage-class#group
  * ^short = "ePayment.17 / ePayment.58 - Insurance Group ID and Group Name"
* class[group].value MS
  * ^short = "ePayment.17 - Insurance Group ID"
  * ^comment = "NEMSIS ePayment.17. Usage: Optional."
* class[group].name MS
  * ^short = "ePayment.58 - Insurance Group Name"
  * ^comment = "NEMSIS ePayment.58. Usage: Optional."

* class[plan].type = http://terminology.hl7.org/CodeSystem/coverage-class#plan
  * ^short = "Insurance plan identifier"
* class[plan].value MS

// ── Order / Priority — ePayment.11 ───────────────────────────
* order MS
  * ^short = "ePayment.11 - Insurance Company Billing Priority (1=Primary, 2=Secondary, 3=Tertiary)"
  * ^comment = "NEMSIS ePayment.11. Usage: Optional. Maps Primary=1, Secondary=2, Tertiary=3, etc."

// ── Extension: Payer Type — ePayment.57 ──────────────────────
* extension contains
    $ext-ems-payer-type named payerType 0..1 MS

* extension[payerType]
  * ^short = "ePayment.57 - Payer Type (X12 code)"
  * ^comment = "NEMSIS ePayment.57. Usage: Optional. X12 payer type code."
