// ============================================================
// EMS Disposition ValueSets
// NEMSIS eDisposition section
// ============================================================

// ── EMSTransportMethodVS ──────────────────────────────────────
// NEMSIS: eDisposition.16 - EMS Transport Method (Required/National)
ValueSet: EMSTransportMethodVS
Id: vs-ems-transport-method
Title: "EMS Transport Method"
Description: "NEMSIS eDisposition.16 - The vehicle/mode used to transport the patient."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-transport-method"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4216001 "Air Medical-Fixed Wing"
* $nemsis-encounter-cs#4216003 "Air Medical-Rotor Craft"
* $nemsis-encounter-cs#4216005 "Ground-Ambulance"
* $nemsis-encounter-cs#4216007 "Ground-ATV or Rescue Vehicle"
* $nemsis-encounter-cs#4216009 "Ground-Bariatric"
* $nemsis-encounter-cs#4216011 "Ground-Other Not Listed"
* $nemsis-encounter-cs#4216013 "Ground-Mass Casualty Bus/Vehicle"
* $nemsis-encounter-cs#4216015 "Ground-Wheelchair Van"
* $nemsis-encounter-cs#4216017 "Water-Boat"

// ── EMSTransportModeVS ────────────────────────────────────────
// NEMSIS: eDisposition.17 - Transport Mode from Scene (Required/National)
ValueSet: EMSTransportModeVS
Id: vs-ems-transport-mode
Title: "EMS Transport Mode from Scene"
Description: "NEMSIS eDisposition.17 - Emergent vs non-emergent transport mode from scene."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-transport-mode"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4217001 "Emergent (Immediate Response)"
* $nemsis-encounter-cs#4217003 "Emergent Downgraded to Non-Emergent"
* $nemsis-encounter-cs#4217005 "Non-Emergent"
* $nemsis-encounter-cs#4217007 "Non-Emergent Upgraded to Emergent"

// ── EMSAdditionalTransportModeVS ──────────────────────────────
// NEMSIS: eDisposition.18 - Additional Transport Mode Descriptors (Required/National)
ValueSet: EMSAdditionalTransportModeVS
Id: vs-ems-additional-transport-mode
Title: "EMS Additional Transport Mode Descriptors"
Description: "NEMSIS eDisposition.18 - Additional descriptors of transport mode (lights, sirens, speed, intersection navigation)."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-additional-transport-mode"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4218001 "Intersection Navigation-Against Normal Light Patterns"
* $nemsis-encounter-cs#4218003 "Intersection Navigation-With Automated Light Changing Technology"
* $nemsis-encounter-cs#4218005 "Intersection Navigation-With Normal Light Patterns"
* $nemsis-encounter-cs#4218007 "Speed-Enhanced per Local Policy"
* $nemsis-encounter-cs#4218009 "Speed-Normal Traffic"
* $nemsis-encounter-cs#4218011 "Lights and Sirens"
* $nemsis-encounter-cs#4218013 "Lights and No Sirens"
* $nemsis-encounter-cs#4218015 "No Lights or Sirens"
* $nemsis-encounter-cs#4218017 "Initial No Lights or Sirens, Upgraded to Lights and Sirens"
* $nemsis-encounter-cs#4218019 "Initial Lights and Sirens, Downgraded to No Lights or Sirens"

// ── EMSPatientAcuityVS ────────────────────────────────────────
// NEMSIS: eDisposition.19 - Acuity Upon EMS Release of Patient (Required/National)
ValueSet: EMSPatientAcuityVS
Id: vs-ems-patient-acuity
Title: "EMS Patient Acuity Upon Release"
Description: "NEMSIS eDisposition.19 - The patient's acuity triage level at the time of EMS release."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-patient-acuity"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4219001 "Critical (Red)"
* $nemsis-encounter-cs#4219003 "Emergent (Yellow)"
* $nemsis-encounter-cs#4219005 "Lower Acuity (Green)"
* $nemsis-encounter-cs#4219007 "Dead without Resuscitation Efforts (Black)"
* $nemsis-encounter-cs#4219009 "Dead with Resuscitation Efforts (Black)"
* $nemsis-encounter-cs#4219011 "Non-Acute/Routine"

// ── EMSDestinationReasonVS ────────────────────────────────────
// NEMSIS: eDisposition.20 - Reason for Choosing Destination (Required/National)
ValueSet: EMSDestinationReasonVS
Id: vs-ems-destination-reason
Title: "EMS Reason for Choosing Destination"
Description: "NEMSIS eDisposition.20 - The reason the destination was chosen."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-destination-reason"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4220001 "Closest Facility"
* $nemsis-encounter-cs#4220003 "Diversion"
* $nemsis-encounter-cs#4220005 "Family Choice"
* $nemsis-encounter-cs#4220007 "Insurance Status/Requirement"
* $nemsis-encounter-cs#4220009 "Law Enforcement Choice"
* $nemsis-encounter-cs#4220011 "On-Line/On-Scene Medical Direction"
* $nemsis-encounter-cs#4220013 "Other"
* $nemsis-encounter-cs#4220015 "Patient's Choice"
* $nemsis-encounter-cs#4220017 "Patient's Physician's Choice"
* $nemsis-encounter-cs#4220019 "Protocol"
* $nemsis-encounter-cs#4220021 "Regional Specialty Center"

// ── EMSDestinationTypeVS ──────────────────────────────────────
// NEMSIS: eDisposition.21 - Type of Destination (Required/National)
ValueSet: EMSDestinationTypeVS
Id: vs-ems-destination-type
Title: "EMS Type of Destination"
Description: "NEMSIS eDisposition.21 - The type of destination the patient was transported to."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-destination-type"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4221001 "Home"
* $nemsis-encounter-cs#4221003 "Hospital-Emergency Department"
* $nemsis-encounter-cs#4221005 "Hospital-Non-Emergency Department Bed"
* $nemsis-encounter-cs#4221007 "Clinic"
* $nemsis-encounter-cs#4221009 "Morgue/Mortuary"
* $nemsis-encounter-cs#4221013 "Other"
* $nemsis-encounter-cs#4221015 "Other EMS Responder (air)"
* $nemsis-encounter-cs#4221017 "Other EMS Responder (ground)"
* $nemsis-encounter-cs#4221019 "Police/Jail"
* $nemsis-encounter-cs#4221021 "Urgent Care"
* $nemsis-encounter-cs#4221023 "Freestanding Emergency Department"
* $nemsis-encounter-cs#4221025 "Dialysis Center"
* $nemsis-encounter-cs#4221027 "Diagnostic Services"
* $nemsis-encounter-cs#4221029 "Assisted Living Facility"
* $nemsis-encounter-cs#4221031 "Mental Health Facility"
* $nemsis-encounter-cs#4221033 "Nursing Home"
* $nemsis-encounter-cs#4221035 "Other Recurring Care Center"
* $nemsis-encounter-cs#4221037 "Physical Rehabilitation Facility"
* $nemsis-encounter-cs#4221039 "Drug and/or Alcohol Rehabilitation Facility"
* $nemsis-encounter-cs#4221041 "Skilled Nursing Facility"

// ── EMSHospitalDestinationVS ──────────────────────────────────
// NEMSIS: eDisposition.22 - Hospital In-Patient Destination (Required/National)
ValueSet: EMSHospitalDestinationVS
Id: vs-ems-hospital-destination
Title: "EMS Hospital In-Patient Destination"
Description: "NEMSIS eDisposition.22 - The specific in-hospital unit or bed type the patient was delivered to."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-hospital-destination"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4222001 "Hospital-Burn"
* $nemsis-encounter-cs#4222003 "Hospital-Cath Lab"
* $nemsis-encounter-cs#4222005 "Hospital-CCU"
* $nemsis-encounter-cs#4222007 "Hospital-Endoscopy"
* $nemsis-encounter-cs#4222009 "Hospital-Hospice"
* $nemsis-encounter-cs#4222011 "Hospital-Hyperbaric Oxygen Treatment"
* $nemsis-encounter-cs#4222013 "Hospital-ICU"
* $nemsis-encounter-cs#4222015 "Hospital-Labor and Delivery"
* $nemsis-encounter-cs#4222017 "Hospital-Med/Surg"
* $nemsis-encounter-cs#4222019 "Hospital-Mental Health"
* $nemsis-encounter-cs#4222021 "Hospital-MICU"
* $nemsis-encounter-cs#4222023 "Hospital-NICU"
* $nemsis-encounter-cs#4222025 "Hospital-Nursery"
* $nemsis-encounter-cs#4222027 "Hospital-Peds (General)"
* $nemsis-encounter-cs#4222029 "Hospital-Peds ICU"
* $nemsis-encounter-cs#4222031 "Hospital-OR"
* $nemsis-encounter-cs#4222033 "Hospital-Orthopedic"
* $nemsis-encounter-cs#4222035 "Hospital-Other"
* $nemsis-encounter-cs#4222037 "Hospital-Out-Patient Bed"
* $nemsis-encounter-cs#4222039 "Hospital-Radiology Services - MRI"
* $nemsis-encounter-cs#4222041 "Hospital-Radiology Services - CT/PET"
* $nemsis-encounter-cs#4222043 "Hospital-Radiology Services - X-Ray"
* $nemsis-encounter-cs#4222045 "Hospital-Radiation"
* $nemsis-encounter-cs#4222047 "Hospital-Rehab"
* $nemsis-encounter-cs#4222049 "Hospital-SICU"
* $nemsis-encounter-cs#4222051 "Hospital-Oncology"
* $nemsis-encounter-cs#4222053 "Hospital-Outpatient Surgery"

// ── EMSHospitalCapabilityVS ───────────────────────────────────
// NEMSIS: eDisposition.23 - Hospital Capability (Required/National)
ValueSet: EMSHospitalCapabilityVS
Id: vs-ems-hospital-capability
Title: "EMS Hospital Capability"
Description: "NEMSIS eDisposition.23 - Specialty capabilities of the receiving facility."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-hospital-capability"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#9908001 "Behavioral Health"
* $nemsis-encounter-cs#9908003 "Burn Center"
* $nemsis-encounter-cs#9908005 "Critical Access Hospital"
* $nemsis-encounter-cs#9908007 "Hospital (General)"
* $nemsis-encounter-cs#9908009 "Neonatal Center"
* $nemsis-encounter-cs#9908011 "Pediatric Center"
* $nemsis-encounter-cs#9908019 "Rehab Center"
* $nemsis-encounter-cs#9908021 "Trauma Center Level 1"
* $nemsis-encounter-cs#9908023 "Trauma Center Level 2"
* $nemsis-encounter-cs#9908025 "Trauma Center Level 3"
* $nemsis-encounter-cs#9908027 "Trauma Center Level 4"
* $nemsis-encounter-cs#9908029 "Trauma Center Level 5"
* $nemsis-encounter-cs#9908031 "Cardiac-STEMI/PCI Capable"
* $nemsis-encounter-cs#9908033 "Cardiac-STEMI/PCI Capable (24/7)"
* $nemsis-encounter-cs#9908035 "Cardiac-STEMI/Non-PCI Capable"
* $nemsis-encounter-cs#9908037 "Stroke-Acute Stroke Ready Hospital (ASRH)"
* $nemsis-encounter-cs#9908039 "Stroke-Primary Stroke Center (PSC)"
* $nemsis-encounter-cs#9908041 "Stroke-Thrombectomy-Capable Stroke Center (TSC)"
* $nemsis-encounter-cs#9908043 "Stroke-Comprehensive Stroke Center (CSC)"
* $nemsis-encounter-cs#9908045 "Cancer Center"
* $nemsis-encounter-cs#9908047 "Labor and Delivery"

// ── EMSPreArrivalAlertVS ──────────────────────────────────────
// NEMSIS: eDisposition.24 - Destination Team Pre-Arrival Alert or Activation (Required/National)
ValueSet: EMSPreArrivalAlertVS
Id: vs-ems-pre-arrival-alert
Title: "EMS Destination Team Pre-Arrival Alert"
Description: "NEMSIS eDisposition.24 - Whether and what type of pre-arrival alert was given to the receiving facility."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-pre-arrival-alert"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4224001 "No"
* $nemsis-encounter-cs#4224003 "Yes-Adult Trauma"
* $nemsis-encounter-cs#4224005 "Yes-Cardiac Arrest"
* $nemsis-encounter-cs#4224007 "Yes-Obstetrics"
* $nemsis-encounter-cs#4224009 "Yes-Other"
* $nemsis-encounter-cs#4224011 "Yes-Pediatric Trauma"
* $nemsis-encounter-cs#4224013 "Yes-STEMI"
* $nemsis-encounter-cs#4224015 "Yes-Stroke"
* $nemsis-encounter-cs#4224017 "Yes-Trauma (General)"
* $nemsis-encounter-cs#4224019 "Yes-Sepsis"

// ── EMSDispositionInstructionsVS ──────────────────────────────
// NEMSIS: eDisposition.26 - Disposition Instructions Provided (Optional)
ValueSet: EMSDispositionInstructionsVS
Id: vs-ems-disposition-instructions
Title: "EMS Disposition Instructions Provided"
Description: "NEMSIS eDisposition.26 - Instructions provided to the patient at disposition."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-disposition-instructions"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4226001 "Contact 911 or see your Doctor if problem returns"
* $nemsis-encounter-cs#4226003 "Contact 911 or see your Doctor if problem worsens"
* $nemsis-encounter-cs#4226005 "Other Not Listed (Described in Narrative)"
* $nemsis-encounter-cs#4226007 "Problem Specific Instructions Provided"
* $nemsis-encounter-cs#4226009 "See Your Doctor or the Emergency Department immediately"
* $nemsis-encounter-cs#4226011 "See Your Doctor or the Emergency Department in the next 24 hours"
* $nemsis-encounter-cs#4226013 "See Your Doctor or the Emergency Department in the next 4 hours"
* $nemsis-encounter-cs#4226015 "See Your Doctor within the next one week"

// ── EMSUnitDispositionVS ──────────────────────────────────────
// NEMSIS: eDisposition.27 - Unit Disposition (Mandatory/National)
ValueSet: EMSUnitDispositionVS
Id: vs-ems-unit-disposition
Title: "EMS Unit Disposition"
Description: "NEMSIS eDisposition.27 - Whether/how the unit made patient contact."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-unit-disposition"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4227001 "Patient Contact Made"
* $nemsis-encounter-cs#4227003 "Cancelled on Scene"
* $nemsis-encounter-cs#4227005 "Cancelled Prior to Arrival at Scene"
* $nemsis-encounter-cs#4227007 "No Patient Contact"
* $nemsis-encounter-cs#4227009 "No Patient Found"
* $nemsis-encounter-cs#4227011 "Non-Patient Incident (Not Otherwise Listed)"

// ── EMSPatientEvalCareVS ──────────────────────────────────────
// NEMSIS: eDisposition.28 - Patient Evaluation/Care (Required/National)
ValueSet: EMSPatientEvalCareVS
Id: vs-ems-patient-eval-care
Title: "EMS Patient Evaluation/Care"
Description: "NEMSIS eDisposition.28 - What evaluation and care was provided to the patient."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-patient-eval-care"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4228001 "Patient Evaluated and Care Provided"
* $nemsis-encounter-cs#4228003 "Patient Evaluated and Refused Care"
* $nemsis-encounter-cs#4228005 "Patient Evaluated, No Care Required"
* $nemsis-encounter-cs#4228007 "Patient Refused Evaluation/Care"
* $nemsis-encounter-cs#4228009 "Patient Support Services Provided"

// ── EMSCrewDispositionVS ──────────────────────────────────────
// NEMSIS: eDisposition.29 - Crew Disposition (Required/National)
ValueSet: EMSCrewDispositionVS
Id: vs-ems-crew-disposition
Title: "EMS Crew Disposition"
Description: "NEMSIS eDisposition.29 - What the crew did during the response."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-crew-disposition"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4229001 "Initiated and Continued Primary Care"
* $nemsis-encounter-cs#4229003 "Initiated Primary Care and Transferred to Another EMS Crew"
* $nemsis-encounter-cs#4229005 "Provided Care Supporting Primary EMS Crew"
* $nemsis-encounter-cs#4229007 "Assumed Primary Care from Another EMS Crew"
* $nemsis-encounter-cs#4229009 "Incident Support Services Provided (Including Standby)"
* $nemsis-encounter-cs#4229011 "Back in Service, No Care/Support Services Required"
* $nemsis-encounter-cs#4229013 "Back in Service, Care/Support Services Refused"

// ── EMSTransportDispositionVS ─────────────────────────────────
// NEMSIS: eDisposition.30 - Transport Disposition (Required/National)
ValueSet: EMSTransportDispositionVS
Id: vs-ems-transport-disposition
Title: "EMS Transport Disposition"
Description: "NEMSIS eDisposition.30 - Whether/how the patient was transported."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-transport-disposition"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4230001 "Transport by This EMS Unit (This Crew Only)"
* $nemsis-encounter-cs#4230003 "Transport by This EMS Unit, with a Member of Another Crew"
* $nemsis-encounter-cs#4230005 "Transport by Another EMS Unit/Agency"
* $nemsis-encounter-cs#4230007 "Transport by Another EMS Unit/Agency, with a Member of This Crew"
* $nemsis-encounter-cs#4230009 "Patient Refused Transport"
* $nemsis-encounter-cs#4230011 "Non-Patient Transport (Not Otherwise Listed)"
* $nemsis-encounter-cs#4230013 "No Transport"

// ── EMSReasonForRefusalVS ─────────────────────────────────────
// NEMSIS: eDisposition.31 - Reason for Refusal/Release (Optional)
ValueSet: EMSReasonForRefusalVS
Id: vs-ems-reason-for-refusal
Title: "EMS Reason for Refusal/Release"
Description: "NEMSIS eDisposition.31 - Reason documented when patient refused care or was released."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-reason-for-refusal"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4231001 "Against Medical Advice"
* $nemsis-encounter-cs#4231003 "Patient/Guardian Indicates Ambulance Transport is Not Necessary"
* $nemsis-encounter-cs#4231005 "Released Following Protocol Guidelines"
* $nemsis-encounter-cs#4231007 "Released to Law Enforcement"
* $nemsis-encounter-cs#4231009 "Patient/Guardian States Intent to Transport by Other Means"
* $nemsis-encounter-cs#4231011 "DNR"
* $nemsis-encounter-cs#4231013 "Medical/Physician Orders for Life Sustaining Treatment"
* $nemsis-encounter-cs#4231015 "Other, Not Listed"
* $nemsis-encounter-cs#4231017 "Patient Elopement"

// ── EMSLevelOfCareVS ──────────────────────────────────────────
// NEMSIS: eDisposition.32 - Level of Care Provided per Protocol (Required/National)
ValueSet: EMSLevelOfCareVS
Id: vs-ems-level-of-care
Title: "EMS Level of Care Provided per Protocol"
Description: "NEMSIS eDisposition.32 - The level of care (BLS, ALS, Critical Care, etc.) authorized by protocol."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-level-of-care"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#4232001 "BLS - All Levels"
* $nemsis-encounter-cs#4232003 "ALS - AEMT/Intermediate"
* $nemsis-encounter-cs#4232005 "ALS - Paramedic"
* $nemsis-encounter-cs#4232007 "EMS and Other Health-Care Staff"
* $nemsis-encounter-cs#4232009 "Critical Care"
* $nemsis-encounter-cs#4232011 "Integrated Health Care"
* $nemsis-encounter-cs#4232013 "No Care Provided"
