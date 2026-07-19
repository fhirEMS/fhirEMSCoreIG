// ============================================================
// Profile: EMS Claim
// NEMSIS 3.5.1.251001CP2 — ePayment section (billing elements)
// Parent: FHIR R4 Claim (no US Core profile)
// ============================================================

Profile: EMSClaim
Id: ems-claim
Title: "EMS Ambulance Claim"
Description: "Represents a CMS ambulance claim generated from an EMS response. Derived from FHIR R4 Claim base resource (no US Core profile exists). Maps to NEMSIS ePayment billing elements: primary method of payment (ePayment.01), CMS service level (ePayment.50), response urgency (ePayment.40), transport assessment (ePayment.41), ambulance transport reason (ePayment.44), ambulance conditions indicators (ePayment.47), physician certification statement data (ePayment.02–07), mileage (ePayment.48), and supply items (ePayment.55/56)."
Parent: Claim

* ^url = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-claim"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false

// ── Status and use ────────────────────────────────────────────
* status MS
* use MS
* use = #claim

// ── Type — ambulance ──────────────────────────────────────────
* type MS
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional
  * ^comment = "CMS ambulance claims are submitted as professional claims."

// ── Payment extensions ────────────────────────────────────────
// Declare all payment extensions as named slices via contains
* extension contains
    $ext-ems-primary-payment-method named primaryPaymentMethod 0..1 MS and
    $ext-ems-cms-service-level       named cmsServiceLevel     0..1 MS and
    $ext-ems-response-urgency        named responseUrgency     0..1 MS and
    $ext-ems-transport-assessment    named transportAssessment 0..* MS and
    $ext-ems-ambulance-transport-reason named ambulanceTransportReason 0..1 MS and
    $ext-ems-ambulance-conditions    named ambulanceConditions 0..* MS and
    $ext-ems-als-assessment          named alsAssessment       0..1    and
    $ext-ems-mileage-to-closest      named mileageToClosest    0..1

* extension[primaryPaymentMethod]
  * ^short = "ePayment.01 - Primary Method of Payment"
  * ^comment = "NEMSIS ePayment.01. Usage: Required/National. NV: NotRecorded."

* extension[cmsServiceLevel]
  * ^short = "ePayment.50 - CMS Service Level"
  * ^comment = "NEMSIS ePayment.50. Usage: Required/National. NV: NotRecorded. The CMS ambulance service level determining the base rate for billing."

* extension[responseUrgency]
  * ^short = "ePayment.40 - Response Urgency"
  * ^comment = "NEMSIS ePayment.40. Usage: Optional. Whether the response was immediate or non-immediate."

* extension[transportAssessment]
  * ^short = "ePayment.41 - Patient Transport Assessment"
  * ^comment = "NEMSIS ePayment.41. Usage: Optional. Repeating (0..M). Physical assessment of the patient justifying ambulance transport."

* extension[ambulanceTransportReason]
  * ^short = "ePayment.44 - Ambulance Transport Reason Code"
  * ^comment = "NEMSIS ePayment.44. Usage: Optional. CMS ambulance transport reason code (A–E)."

* extension[ambulanceConditions]
  * ^short = "ePayment.47 - Ambulance Conditions Indicator"
  * ^comment = "NEMSIS ePayment.47. Usage: Optional. Repeating (0..M). CMS conditions indicators justifying ambulance necessity."

* extension[alsAssessment]
  * ^short = "ePayment.49 - ALS Assessment Performed and Warranted"
  * ^comment = "NEMSIS ePayment.49. Usage: Optional. Whether an ALS assessment was performed and warranted."

* extension[mileageToClosest]
  * ^short = "ePayment.48 - Mileage to Closest Hospital Facility"
  * ^comment = "NEMSIS ePayment.48. Usage: Optional. Distance in miles to the closest appropriate hospital."

// ── Patient ───────────────────────────────────────────────────
* patient 1..1 MS
* patient only Reference(EMSPatient)

// ── Provider ──────────────────────────────────────────────────
* provider MS
* provider only Reference(EMSOrganization or EMSPractitioner)

// ── Created date ──────────────────────────────────────────────
* created MS

// ── Insurance ─────────────────────────────────────────────────
* insurance 1..* MS
* insurance.sequence MS
  * ^comment = "Corresponds to ePayment.11 billing priority order."
* insurance.focal MS
* insurance.coverage MS
* insurance.coverage only Reference(EMSCoverage)

// ── Diagnosis ─────────────────────────────────────────────────
* diagnosis MS
  * ^comment = "ICD-10-CM diagnoses supporting medical necessity."
* diagnosis.diagnosis[x] MS
* diagnosis.diagnosisCodeableConcept MS
* diagnosis.diagnosisCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10-cm"

// ── Item (service lines) ──────────────────────────────────────
// ePayment.50 CMS service level becomes the primary HCPCS code
// ePayment.51 EMS Condition Code → item.modifier
// ePayment.52 CMS Transportation Indicator → item.modifier
// ePayment.55/56 Supply items → additional item lines
* item MS
* item.sequence MS
* item.productOrService MS
  * ^comment = "HCPCS code for ambulance service level. Use A0428–A0999 HCPCS Level II codes corresponding to ePayment.50 CMS Service Level."
* item.quantity MS
  * ^comment = "For mileage items, quantity = miles transported."

// ── Supporting info ───────────────────────────────────────────
// ePayment.02–07 — Physician Certification Statement data
* supportingInfo MS
* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open

* supportingInfo contains
    physicianCertification 0..1 MS and
    roundTripPurpose       0..1 MS and
    stretcherPurpose       0..1 MS

* supportingInfo[physicianCertification].category
    = http://terminology.hl7.org/CodeSystem/claiminformationcategory#attachment
  * ^short = "ePayment.02–07 - Physician Certification Statement"
* supportingInfo[physicianCertification].value[x] only boolean
  * ^comment = "NEMSIS ePayment.02. Usage: Optional. Whether a physician certification statement was obtained."

* supportingInfo[roundTripPurpose].category
    = http://terminology.hl7.org/CodeSystem/claiminformationcategory#info
  * ^short = "ePayment.45 - Round Trip Purpose Description"
* supportingInfo[roundTripPurpose].value[x] only string
  * ^comment = "NEMSIS ePayment.45. Usage: Optional. Description of the reason for round trip transport."

* supportingInfo[stretcherPurpose].category
    = http://terminology.hl7.org/CodeSystem/claiminformationcategory#patientreasonforvisit
  * ^short = "ePayment.46 - Stretcher Purpose Description"
* supportingInfo[stretcherPurpose].value[x] only string
  * ^comment = "NEMSIS ePayment.46. Usage: Optional. Description of the medical necessity for stretcher use."
