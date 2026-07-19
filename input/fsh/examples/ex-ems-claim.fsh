// ============================================================
// Example: EMS Claim
// Scenario: CMS ALS Level 1 Emergency ambulance claim — Medicare
// NEMSIS ePayment billing elements
// ============================================================

Instance: ex-ems-claim
InstanceOf: EMSClaim
Title: "Example EMS Claim — ALS Level 1 Emergency"
Description: "Example ambulance claim demonstrating the EMSClaim profile. ALS Level 1 Emergency service billed to Medicare Part B for cardiac arrest transport."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-claim"

// ── Status, use, priority ─────────────────────────────────────
* status = #active
* use = #claim
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional
* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal

// ── ePayment.01 - Primary Method of Payment (Medicare) ────────
* extension[primaryPaymentMethod].valueCodeableConcept
    = $nemsis-payment#2601005 "Medicare"

// ── ePayment.50 - CMS Service Level ───────────────────────────
* extension[cmsServiceLevel].valueCodeableConcept
    = $nemsis-payment#2650003 "ALS, Level 1 Emergency"

// ── ePayment.40 - Response Urgency (Immediate) ────────────────
* extension[responseUrgency].valueCodeableConcept
    = $nemsis-payment#2640001 "Immediate"

// ── ePayment.41 - Patient Transport Assessment ────────────────
* extension[transportAssessment][0].valueCodeableConcept
    = $nemsis-payment#2641003 "Unable to stand without assistance"
* extension[transportAssessment][1].valueCodeableConcept
    = $nemsis-payment#2641005 "Unable to walk without assistance"

// ── ePayment.44 - Ambulance Transport Reason Code ─────────────
* extension[ambulanceTransportReason].valueCodeableConcept
    = $nemsis-payment#A "Patient was transported to the nearest facility for care of symptoms, complaints, or both"

// ── ePayment.47 - Ambulance Conditions Indicators ─────────────
* extension[ambulanceConditions][0].valueCodeableConcept
    = $nemsis-payment#05 "Patient was unconscious or in shock"
* extension[ambulanceConditions][1].valueCodeableConcept
    = $nemsis-payment#06 "Patient was transported in an emergency situation"
* extension[ambulanceConditions][2].valueCodeableConcept
    = $nemsis-payment#09 "Ambulance service was medically necessary"

// ── ePayment.49 - ALS Assessment Performed and Warranted ──────
* extension[alsAssessment].valueBoolean = true

// ── ePayment.48 - Mileage to Closest Hospital Facility ────────
* extension[mileageToClosest].valueQuantity.value = 8.4
* extension[mileageToClosest].valueQuantity.unit = "miles"

// ── Patient ───────────────────────────────────────────────────
* patient = Reference(ex-ems-patient)

// ── Provider (EMS Agency) ─────────────────────────────────────
* provider = Reference(ex-ems-organization-agency)

// ── Created date ──────────────────────────────────────────────
* created = "2026-03-14"

// ── Insurance ─────────────────────────────────────────────────
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(ex-ems-coverage)

// ── Diagnosis — ICD-10-CM cardiac arrest ──────────────────────
* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.coding[0].system = "http://hl7.org/fhir/sid/icd-10-cm"
* diagnosis[0].diagnosisCodeableConcept.coding[0].code = #I46.9
* diagnosis[0].diagnosisCodeableConcept.coding[0].display = "Cardiac arrest, cause unspecified"

// ── Item — ALS Level 1 Emergency base rate (HCPCS A0427) ──────
* item[0].sequence = 1
* item[0].productOrService.coding[0].system = "https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets"
* item[0].productOrService.coding[0].code = #A0427
* item[0].productOrService.coding[0].display = "Ambulance service, advanced life support, emergency transport, level 1 (ALS 1 - Emergency)"

// ── Item — Mileage (HCPCS A0425) ──────────────────────────────
* item[1].sequence = 2
* item[1].productOrService.coding[0].system = "https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets"
* item[1].productOrService.coding[0].code = #A0425
* item[1].productOrService.coding[0].display = "Ground mileage, per statute mile"
* item[1].quantity.value = 8.4

// ── Supporting Info — Physician Certification (ePayment.02) ───
* supportingInfo[physicianCertification].sequence = 1
* supportingInfo[physicianCertification].category
    = http://terminology.hl7.org/CodeSystem/claiminformationcategory#attachment
* supportingInfo[physicianCertification].valueBoolean = false
  // No PCS obtained — cardiac arrest (not applicable for emergency transport)
