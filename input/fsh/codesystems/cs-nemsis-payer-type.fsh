// ============================================================
// CodeSystem: NEMSIS ePayment.57 — Payer Type (X12 codes)
// NEMSIS 3.5.1.251001CP2
// ============================================================

CodeSystem: NEMSISPayerType
Id: cs-nemsis-payer-type
Title: "NEMSIS ePayment Payer Type Code System"
Description: "X12 payer type codes used in NEMSIS ePayment.57 to identify the type of insurance payer."
* ^url = "http://hl7.org/fhir/us/emscore/CodeSystem/nemsis-payer-type"
* ^version = "3.5.1.251001CP2"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// ePayment.57 — Payer Type (X12 codes)
* #11 "Other Non-Federal Programs"
* #12 "Preferred Provider Organization (PPO)"
* #13 "Point of Service (POS)"
* #14 "Exclusive Provider Organization (EPO)"
* #15 "Indemnity Insurance"
* #16 "Health Maintenance Organization (HMO) Medicare Risk"
* #17 "Dental Maintenance Organization"
* #AM "Automobile Medical"
* #BL "Blue Cross/Blue Shield"
* #CH "Champus"
* #CI "Commercial Insurance Co."
* #DS "Disability"
* #FI "Federal Employees Program"
* #HM "Health Maintenance Organization"
* #LM "Liability Medical"
* #MA "Medicare Part A"
* #MB "Medicare Part B"
* #MC "Medicaid"
* #OF "Other Federal Program"
* #TV "Title V"
* #VA "Veteran Affairs Plan"
* #WC "Workers' Compensation Health Claim"
* #ZZ "Mutually Defined"
