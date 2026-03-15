// ============================================================
// CodeSystem: NEMSIS ePayment Codes
// NEMSIS 3.5.1.251001CP2 — ePayment section
// ============================================================

CodeSystem: NEMSISPayment
Id: cs-nemsis-payment
Title: "NEMSIS ePayment Code System"
Description: "Enumeration codes from the NEMSIS 3.5.1 ePayment section covering primary method of payment, insurance billing priority, relationship to insured, response urgency, patient transport assessment, ambulance transport reason codes, ambulance conditions indicators, CMS service level, and payer type."
* ^url = "http://hl7.org/fhir/us/emscore/CodeSystem/nemsis-payment"
* ^version = "3.5.1.251001CP2"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// ePayment.01 — Primary Method of Payment
* #2601001 "Insurance"
* #2601003 "Medicaid"
* #2601005 "Medicare"
* #2601007 "Not Billed (for any reason)"
* #2601009 "Other Government"
* #2601011 "Self Pay"
* #2601013 "Workers Compensation"
* #2601015 "Payment by Facility"
* #2601017 "Contracted Payment"
* #2601019 "Community Network"
* #2601021 "No Insurance Identified"
* #2601023 "Other Payment Option"

// ePayment.11 — Insurance Company Billing Priority
* #2611001 "Other"
* #2611003 "Primary"
* #2611005 "Secondary"
* #2611007 "Tertiary"
* #2611009 "Payer Responsibility Four"
* #2611011 "Payer Responsibility Five"
* #2611013 "Payer Responsibility Six"
* #2611015 "Payer Responsibility Seven"
* #2611017 "Payer Responsibility Eight"
* #2611019 "Payer Responsibility Nine"
* #2611021 "Payer Responsibility Ten"
* #2611023 "Payer Responsibility Eleven"
* #2611025 "Unknown"

// ePayment.22 — Relationship to the Insured
* #2622001 "Self"
* #2622003 "Spouse"
* #2622005 "Child/Dependent"
* #2622009 "Cadaver Donor"
* #2622011 "Employee"
* #2622013 "Life/Domestic Partner"
* #2622015 "Organ Donor"
* #2622017 "Unknown"
* #2622019 "Other Relationship"

// ePayment.40 — Response Urgency
* #2640001 "Immediate"
* #2640003 "Non-Immediate"

// ePayment.41 — Patient Transport Assessment
* #2641001 "Unable to sit without assistance"
* #2641003 "Unable to stand without assistance"
* #2641005 "Unable to walk without assistance"

// ePayment.44 — Ambulance Transport Reason Code (CMS)
* #A "Patient was transported to the nearest facility for care of symptoms, complaints, or both"
* #B "Patient was transported for the benefit of a preferred physician"
* #C "Patient was transported for the nearness of family members"
* #D "Patient was transported for the care of a specialist or for availability of equipment"
* #E "Patient was transferred to a Rehabilitation Facility"

// ePayment.47 — Ambulance Conditions Indicator
* #01 "Patient was admitted to a hospital"
* #04 "Patient was moved by stretcher"
* #05 "Patient was unconscious or in shock"
* #06 "Patient was transported in an emergency situation"
* #07 "Patient had to be physically restrained"
* #08 "Patient had visible hemorrhaging"
* #09 "Ambulance service was medically necessary"
* #12 "Patient is confined to a bed or chair"

// ePayment.50 — CMS Service Level
* #2650001 "ALS, Level 1"
* #2650003 "ALS, Level 1 Emergency"
* #2650005 "ALS, Level 2"
* #2650007 "BLS"
* #2650009 "BLS, Emergency"
* #2650011 "Fixed Wing (Airplane)"
* #2650013 "Paramedic Intercept"
* #2650015 "Specialty Care Transport"
* #2650017 "Rotary Wing (Helicopter)"

// ePayment.57 — Payer Type (X12 codes) — defined in cs-nemsis-payer-type.fsh
