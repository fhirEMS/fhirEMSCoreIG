// ============================================================
// ValueSets: EMS Payment / Billing (ePayment)
// NEMSIS 3.5.1.251001CP2
// ============================================================

// ePayment.01 — Primary Method of Payment
ValueSet: EMSPaymentMethodVS
Id: vs-ems-payment-method
Title: "EMS Primary Payment Method VS"
Description: "Primary method of payment for the EMS response (ePayment.01)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-payment-method"
* ^status = #active
* ^experimental = true
* $nemsis-payment#2601001 "Insurance"
* $nemsis-payment#2601003 "Medicaid"
* $nemsis-payment#2601005 "Medicare"
* $nemsis-payment#2601007 "Not Billed (for any reason)"
* $nemsis-payment#2601009 "Other Government"
* $nemsis-payment#2601011 "Self Pay"
* $nemsis-payment#2601013 "Workers Compensation"
* $nemsis-payment#2601015 "Payment by Facility"
* $nemsis-payment#2601017 "Contracted Payment"
* $nemsis-payment#2601019 "Community Network"
* $nemsis-payment#2601021 "No Insurance Identified"
* $nemsis-payment#2601023 "Other Payment Option"

// ePayment.11 — Insurance Company Billing Priority
ValueSet: EMSInsuranceBillingPriorityVS
Id: vs-ems-insurance-billing-priority
Title: "EMS Insurance Billing Priority VS"
Description: "Insurance company billing priority (ePayment.11)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-insurance-billing-priority"
* ^status = #active
* ^experimental = true
* $nemsis-payment#2611001 "Other"
* $nemsis-payment#2611003 "Primary"
* $nemsis-payment#2611005 "Secondary"
* $nemsis-payment#2611007 "Tertiary"
* $nemsis-payment#2611009 "Payer Responsibility Four"
* $nemsis-payment#2611011 "Payer Responsibility Five"
* $nemsis-payment#2611013 "Payer Responsibility Six"
* $nemsis-payment#2611015 "Payer Responsibility Seven"
* $nemsis-payment#2611017 "Payer Responsibility Eight"
* $nemsis-payment#2611019 "Payer Responsibility Nine"
* $nemsis-payment#2611021 "Payer Responsibility Ten"
* $nemsis-payment#2611023 "Payer Responsibility Eleven"
* $nemsis-payment#2611025 "Unknown"

// ePayment.22 — Relationship to the Insured
ValueSet: EMSInsuredRelationshipVS
Id: vs-ems-insured-relationship
Title: "EMS Insured Relationship VS"
Description: "Patient's relationship to the insured (ePayment.22)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-insured-relationship"
* ^status = #active
* ^experimental = true
* $nemsis-payment#2622001 "Self"
* $nemsis-payment#2622003 "Spouse"
* $nemsis-payment#2622005 "Child/Dependent"
* $nemsis-payment#2622009 "Cadaver Donor"
* $nemsis-payment#2622011 "Employee"
* $nemsis-payment#2622013 "Life/Domestic Partner"
* $nemsis-payment#2622015 "Organ Donor"
* $nemsis-payment#2622017 "Unknown"
* $nemsis-payment#2622019 "Other Relationship"

// ePayment.40 — Response Urgency
ValueSet: EMSResponseUrgencyVS
Id: vs-ems-response-urgency
Title: "EMS Response Urgency VS"
Description: "Urgency of the EMS response for billing purposes (ePayment.40)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-response-urgency"
* ^status = #active
* ^experimental = true
* $nemsis-payment#2640001 "Immediate"
* $nemsis-payment#2640003 "Non-Immediate"

// ePayment.41 — Patient Transport Assessment
ValueSet: EMSPatientTransportAssessmentVS
Id: vs-ems-patient-transport-assessment
Title: "EMS Patient Transport Assessment VS"
Description: "Patient's physical condition that necessitated ambulance transport (ePayment.41)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-patient-transport-assessment"
* ^status = #active
* ^experimental = true
* $nemsis-payment#2641001 "Unable to sit without assistance"
* $nemsis-payment#2641003 "Unable to stand without assistance"
* $nemsis-payment#2641005 "Unable to walk without assistance"

// ePayment.44 — Ambulance Transport Reason Code
ValueSet: EMSAmbulanceTransportReasonVS
Id: vs-ems-ambulance-transport-reason
Title: "EMS Ambulance Transport Reason VS"
Description: "CMS ambulance transport reason code (ePayment.44)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-ambulance-transport-reason"
* ^status = #active
* ^experimental = true
* $nemsis-payment#A "Patient was transported to the nearest facility for care of symptoms, complaints, or both"
* $nemsis-payment#B "Patient was transported for the benefit of a preferred physician"
* $nemsis-payment#C "Patient was transported for the nearness of family members"
* $nemsis-payment#D "Patient was transported for the care of a specialist or for availability of equipment"
* $nemsis-payment#E "Patient was transferred to a Rehabilitation Facility"

// ePayment.47 — Ambulance Conditions Indicator
ValueSet: EMSAmbulanceConditionsVS
Id: vs-ems-ambulance-conditions
Title: "EMS Ambulance Conditions Indicator VS"
Description: "CMS ambulance conditions indicators justifying medical necessity (ePayment.47)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-ambulance-conditions"
* ^status = #active
* ^experimental = true
* $nemsis-payment#01 "Patient was admitted to a hospital"
* $nemsis-payment#04 "Patient was moved by stretcher"
* $nemsis-payment#05 "Patient was unconscious or in shock"
* $nemsis-payment#06 "Patient was transported in an emergency situation"
* $nemsis-payment#07 "Patient had to be physically restrained"
* $nemsis-payment#08 "Patient had visible hemorrhaging"
* $nemsis-payment#09 "Ambulance service was medically necessary"
* $nemsis-payment#12 "Patient is confined to a bed or chair"

// ePayment.50 — CMS Service Level
ValueSet: EMSCMSServiceLevelVS
Id: vs-ems-cms-service-level
Title: "EMS CMS Service Level VS"
Description: "CMS ambulance service level for billing (ePayment.50)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-cms-service-level"
* ^status = #active
* ^experimental = true
* $nemsis-payment#2650001 "ALS, Level 1"
* $nemsis-payment#2650003 "ALS, Level 1 Emergency"
* $nemsis-payment#2650005 "ALS, Level 2"
* $nemsis-payment#2650007 "BLS"
* $nemsis-payment#2650009 "BLS, Emergency"
* $nemsis-payment#2650011 "Fixed Wing (Airplane)"
* $nemsis-payment#2650013 "Paramedic Intercept"
* $nemsis-payment#2650015 "Specialty Care Transport"
* $nemsis-payment#2650017 "Rotary Wing (Helicopter)"

// ePayment.57 — Payer Type (X12 codes)
ValueSet: EMSPayerTypeVS
Id: vs-ems-payer-type
Title: "EMS Payer Type VS"
Description: "X12 payer type codes for the insurance company (ePayment.57)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-payer-type"
* ^status = #active
* ^experimental = true
* $nemsis-payer-type#11 "Other Non-Federal Programs"
* $nemsis-payer-type#12 "Preferred Provider Organization (PPO)"
* $nemsis-payer-type#13 "Point of Service (POS)"
* $nemsis-payer-type#14 "Exclusive Provider Organization (EPO)"
* $nemsis-payer-type#15 "Indemnity Insurance"
* $nemsis-payer-type#16 "Health Maintenance Organization (HMO) Medicare Risk"
* $nemsis-payer-type#17 "Dental Maintenance Organization"
* $nemsis-payer-type#AM "Automobile Medical"
* $nemsis-payer-type#BL "Blue Cross/Blue Shield"
* $nemsis-payer-type#CH "Champus"
* $nemsis-payer-type#CI "Commercial Insurance Co."
* $nemsis-payer-type#DS "Disability"
* $nemsis-payer-type#FI "Federal Employees Program"
* $nemsis-payer-type#HM "Health Maintenance Organization"
* $nemsis-payer-type#LM "Liability Medical"
* $nemsis-payer-type#MA "Medicare Part A"
* $nemsis-payer-type#MB "Medicare Part B"
* $nemsis-payer-type#MC "Medicaid"
* $nemsis-payer-type#OF "Other Federal Program"
* $nemsis-payer-type#TV "Title V"
* $nemsis-payer-type#VA "Veteran Affairs Plan"
* $nemsis-payer-type#WC "Workers' Compensation Health Claim"
* $nemsis-payer-type#ZZ "Mutually Defined"
