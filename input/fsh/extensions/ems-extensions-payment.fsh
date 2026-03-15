// ============================================================
// Extensions: EMS Payment / Billing (ePayment)
// NEMSIS 3.5.1.251001CP2 — ePayment section
// ============================================================

// ── ePayment.01 - Primary Method of Payment ───────────────────
Extension: EMSPrimaryPaymentMethod
Id: ext-ems-primary-payment-method
Title: "EMS Primary Payment Method"
Description: "NEMSIS ePayment.01. Primary method of payment for the EMS response."
* ^url = "http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-primary-payment-method"
* ^context[+].type = #element
* ^context[=].expression = "Claim"
* value[x] only CodeableConcept
* valueCodeableConcept from EMSPaymentMethodVS (required)

// ── ePayment.40 - Response Urgency ────────────────────────────
Extension: EMSResponseUrgency
Id: ext-ems-response-urgency
Title: "EMS Response Urgency"
Description: "NEMSIS ePayment.40. Whether the EMS response was immediate or non-immediate."
* ^url = "http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-response-urgency"
* ^context[+].type = #element
* ^context[=].expression = "Claim"
* value[x] only CodeableConcept
* valueCodeableConcept from EMSResponseUrgencyVS (required)

// ── ePayment.41 - Patient Transport Assessment ────────────────
Extension: EMSTransportAssessment
Id: ext-ems-transport-assessment
Title: "EMS Patient Transport Assessment"
Description: "NEMSIS ePayment.41. Physical assessment of the patient justifying ambulance transport. Repeating."
* ^url = "http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-transport-assessment"
* ^context[+].type = #element
* ^context[=].expression = "Claim"
* value[x] only CodeableConcept
* valueCodeableConcept from EMSPatientTransportAssessmentVS (required)

// ── ePayment.44 - Ambulance Transport Reason Code ─────────────
Extension: EMSAmbulanceTransportReason
Id: ext-ems-ambulance-transport-reason
Title: "EMS Ambulance Transport Reason"
Description: "NEMSIS ePayment.44. CMS ambulance transport reason code (A–E)."
* ^url = "http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-ambulance-transport-reason"
* ^context[+].type = #element
* ^context[=].expression = "Claim"
* value[x] only CodeableConcept
* valueCodeableConcept from EMSAmbulanceTransportReasonVS (required)

// ── ePayment.47 - Ambulance Conditions Indicator ──────────────
Extension: EMSAmbulanceConditions
Id: ext-ems-ambulance-conditions
Title: "EMS Ambulance Conditions Indicator"
Description: "NEMSIS ePayment.47. CMS conditions indicators justifying ambulance necessity. Repeating."
* ^url = "http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-ambulance-conditions"
* ^context[+].type = #element
* ^context[=].expression = "Claim"
* value[x] only CodeableConcept
* valueCodeableConcept from EMSAmbulanceConditionsVS (required)

// ── ePayment.48 - Mileage to Closest Hospital Facility ────────
Extension: EMSMileageToClosest
Id: ext-ems-mileage-to-closest
Title: "EMS Mileage to Closest Hospital"
Description: "NEMSIS ePayment.48. Distance in miles to the closest appropriate hospital facility."
* ^url = "http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-mileage-to-closest"
* ^context[+].type = #element
* ^context[=].expression = "Claim"
* value[x] only Quantity
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #[mi_i]

// ── ePayment.49 - ALS Assessment Performed and Warranted ──────
Extension: EMSALSAssessment
Id: ext-ems-als-assessment
Title: "EMS ALS Assessment Performed and Warranted"
Description: "NEMSIS ePayment.49. Whether an ALS assessment was performed and warranted."
* ^url = "http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-als-assessment"
* ^context[+].type = #element
* ^context[=].expression = "Claim"
* value[x] only boolean

// ── ePayment.50 - CMS Service Level ───────────────────────────
Extension: EMSCMSServiceLevel
Id: ext-ems-cms-service-level
Title: "EMS CMS Service Level"
Description: "NEMSIS ePayment.50. The CMS ambulance service level determining the base rate for billing."
* ^url = "http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-cms-service-level"
* ^context[+].type = #element
* ^context[=].expression = "Claim"
* value[x] only CodeableConcept
* valueCodeableConcept from EMSCMSServiceLevelVS (required)

// ── ePayment.57 - Payer Type (X12) ────────────────────────────
Extension: EMSPayerType
Id: ext-ems-payer-type
Title: "EMS Payer Type"
Description: "NEMSIS ePayment.57. X12 payer type code for the insurance company."
* ^url = "http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-payer-type"
* ^context[+].type = #element
* ^context[=].expression = "Coverage"
* value[x] only CodeableConcept
* valueCodeableConcept from EMSPayerTypeVS (required)
