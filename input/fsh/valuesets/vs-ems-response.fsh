// ============================================================
// EMS Response ValueSets
// NEMSIS eResponse section
// ============================================================

// ── EMSResponseTypeVS ────────────────────────────────────────
// NEMSIS: eResponse.05 - Type of Response (Mandatory/National)
ValueSet: EMSResponseTypeVS
Id: vs-ems-response-type
Title: "EMS Response Type (ValueSet)"
Description: "NEMSIS eResponse.05 - The type of EMS response."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-response-type"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.107"
* $nemsis-encounter-cs#2205001 "Emergency Response (Primary Response Area)"
* $nemsis-encounter-cs#2205003 "Emergency Response (Intercept)"
* $nemsis-encounter-cs#2205009 "Emergency Response (Mutual Aid)"
* $nemsis-encounter-cs#2205005 "Hospital-to-Hospital Transfer"
* $nemsis-encounter-cs#2205015 "Hospital to Non-Hospital Facility Transfer"
* $nemsis-encounter-cs#2205017 "Non-Hospital Facility to Non-Hospital Facility Transfer"
* $nemsis-encounter-cs#2205019 "Non-Hospital Facility to Hospital Transfer"
* $nemsis-encounter-cs#2205007 "Other Routine Medical Transport"
* $nemsis-encounter-cs#2205011 "Public Assistance"
* $nemsis-encounter-cs#2205013 "Standby"
* $nemsis-encounter-cs#2205021 "Support Services"
* $nemsis-encounter-cs#2205023 "Non-Patient Care Rescue/Extrication"
* $nemsis-encounter-cs#2205025 "Crew Transport Only"
* $nemsis-encounter-cs#2205027 "Transport of Organs or Body Parts"
* $nemsis-encounter-cs#2205029 "Mortuary Services"
* $nemsis-encounter-cs#2205031 "Mobile Integrated Health Care Encounter"
* $nemsis-encounter-cs#2205033 "Evaluation for Special Referral/Intake Programs"
* $nemsis-encounter-cs#2205035 "Administrative Operations"

// ── EMSUnitTypeVS ─────────────────────────────────────────────
// NEMSIS: eResponse.07 - Type of EMS Unit (Mandatory/National)
ValueSet: EMSUnitTypeVS
Id: vs-ems-unit-type
Title: "EMS Unit Type (ValueSet)"
Description: "NEMSIS eResponse.07 - The type of EMS vehicle/unit."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-unit-type"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.127"
* $nemsis-encounter-cs#2207011 "Air Transport-Helicopter"
* $nemsis-encounter-cs#2207013 "Air Transport-Fixed Wing"
* $nemsis-encounter-cs#2207015 "Ground Transport (ALS Equipped)"
* $nemsis-encounter-cs#2207017 "Ground Transport (BLS Equipped)"
* $nemsis-encounter-cs#2207019 "Ground Transport (Critical Care Equipped)"
* $nemsis-encounter-cs#2207021 "Non-Transport-Medical Treatment (ALS Equipped)"
* $nemsis-encounter-cs#2207023 "Non-Transport-Medical Treatment (BLS Equipped)"
* $nemsis-encounter-cs#2207025 "Wheel Chair Van/Ambulette"
* $nemsis-encounter-cs#2207027 "Non-Transport-No Medical Equipment"

// ── EMSDispatchDelayVS ────────────────────────────────────────
// NEMSIS: eResponse.08 - Type of Dispatch Delay (Required/National)
ValueSet: EMSDispatchDelayVS
Id: vs-ems-dispatch-delay
Title: "EMS Type of Dispatch Delay"
Description: "NEMSIS eResponse.08 - Types of dispatch delay."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-dispatch-delay"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.42"
* $nemsis-encounter-cs#2208001 "Caller (Uncooperative)"
* $nemsis-encounter-cs#2208003 "Diversion/Failure (of previous unit)"
* $nemsis-encounter-cs#2208005 "High Call Volume"
* $nemsis-encounter-cs#2208007 "Language Barrier"
* $nemsis-encounter-cs#2208009 "Incomplete Address Information Provided"
* $nemsis-encounter-cs#2208011 "No EMS Vehicles (Units) Available"
* $nemsis-encounter-cs#2208013 "None/No Delay"
* $nemsis-encounter-cs#2208015 "Other"
* $nemsis-encounter-cs#2208017 "Technical Failure (Computer, Phone etc.)"
* $nemsis-encounter-cs#2208019 "Communication Specialist-Assignment Error"
* $nemsis-encounter-cs#2208021 "No Receiving MD, Bed, Hospital"
* $nemsis-encounter-cs#2208023 "Specialty Team Delay"

// ── EMSResponseDelayVS ────────────────────────────────────────
// NEMSIS: eResponse.09 - Type of Response Delay (Required/National)
ValueSet: EMSResponseDelayVS
Id: vs-ems-response-delay
Title: "EMS Type of Response Delay"
Description: "NEMSIS eResponse.09 - Types of response delay en route to scene."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-response-delay"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.105"
* $nemsis-encounter-cs#2209001 "Crowd"
* $nemsis-encounter-cs#2209003 "Directions/Unable to Locate"
* $nemsis-encounter-cs#2209005 "Distance"
* $nemsis-encounter-cs#2209007 "Diversion (Different Incident)"
* $nemsis-encounter-cs#2209009 "HazMat"
* $nemsis-encounter-cs#2209011 "None/No Delay"
* $nemsis-encounter-cs#2209013 "Other"
* $nemsis-encounter-cs#2209015 "Rendezvous Transport Unavailable"
* $nemsis-encounter-cs#2209017 "Route Obstruction (e.g., Train)"
* $nemsis-encounter-cs#2209019 "Scene Safety (Not Secure for EMS)"
* $nemsis-encounter-cs#2209021 "Staff Delay"
* $nemsis-encounter-cs#2209023 "Traffic"
* $nemsis-encounter-cs#2209025 "Vehicle Crash Involving this Unit"
* $nemsis-encounter-cs#2209027 "Vehicle Failure of this Unit"
* $nemsis-encounter-cs#2209029 "Weather"
* $nemsis-encounter-cs#2209031 "Mechanical Issue-Unit, Equipment, etc."
* $nemsis-encounter-cs#2209033 "Flight Planning"
* $nemsis-encounter-cs#2209035 "Out of Service Area Response"

// ── EMSSceneDelayVS ───────────────────────────────────────────
// NEMSIS: eResponse.10 - Type of Scene Delay (Required/National)
ValueSet: EMSSceneDelayVS
Id: vs-ems-scene-delay
Title: "EMS Type of Scene Delay"
Description: "NEMSIS eResponse.10 - Types of delay at the scene."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-scene-delay"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.112"
* $nemsis-encounter-cs#2210001 "Awaiting Air Unit"
* $nemsis-encounter-cs#2210003 "Awaiting Ground Unit"
* $nemsis-encounter-cs#2210005 "Crowd"
* $nemsis-encounter-cs#2210007 "Directions/Unable to Locate"
* $nemsis-encounter-cs#2210009 "Distance"
* $nemsis-encounter-cs#2210011 "Extrication"
* $nemsis-encounter-cs#2210013 "HazMat"
* $nemsis-encounter-cs#2210015 "Language Barrier"
* $nemsis-encounter-cs#2210017 "None/No Delay"
* $nemsis-encounter-cs#2210019 "Other"
* $nemsis-encounter-cs#2210021 "Patient Access"
* $nemsis-encounter-cs#2210023 "Safety-Crew/Staging"
* $nemsis-encounter-cs#2210025 "Safety-Patient"
* $nemsis-encounter-cs#2210027 "Staff Delay"
* $nemsis-encounter-cs#2210029 "Traffic"
* $nemsis-encounter-cs#2210031 "Triage/Multiple Patients"
* $nemsis-encounter-cs#2210033 "Vehicle Crash Involving this Unit"
* $nemsis-encounter-cs#2210035 "Vehicle Failure of this Unit"
* $nemsis-encounter-cs#2210037 "Weather"
* $nemsis-encounter-cs#2210039 "Mechanical Issue-Unit, Equipment, etc."

// ── EMSTransportDelayVS ───────────────────────────────────────
// NEMSIS: eResponse.11 - Type of Transport Delay (Required/National)
ValueSet: EMSTransportDelayVS
Id: vs-ems-transport-delay
Title: "EMS Type of Transport Delay"
Description: "NEMSIS eResponse.11 - Types of delay during transport."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-transport-delay"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.119"
* $nemsis-encounter-cs#2211001 "Crowd"
* $nemsis-encounter-cs#2211003 "Directions/Unable to Locate"
* $nemsis-encounter-cs#2211005 "Distance"
* $nemsis-encounter-cs#2211007 "Diversion"
* $nemsis-encounter-cs#2211009 "HazMat"
* $nemsis-encounter-cs#2211011 "None/No Delay"
* $nemsis-encounter-cs#2211013 "Other"
* $nemsis-encounter-cs#2211015 "Rendezvous Transport Unavailable"
* $nemsis-encounter-cs#2211017 "Route Obstruction (e.g., Train)"
* $nemsis-encounter-cs#2211019 "Safety"
* $nemsis-encounter-cs#2211021 "Staff Delay"
* $nemsis-encounter-cs#2211023 "Traffic"
* $nemsis-encounter-cs#2211025 "Vehicle Crash Involving this Unit"
* $nemsis-encounter-cs#2211027 "Vehicle Failure of this Unit"
* $nemsis-encounter-cs#2211029 "Weather"
* $nemsis-encounter-cs#2211031 "Patient Condition Change (e.g., Unit Stopped)"

// ── EMSTurnAroundDelayVS ──────────────────────────────────────
// NEMSIS: eResponse.12 - Type of Turn-Around Delay (Required/National)
ValueSet: EMSTurnAroundDelayVS
Id: vs-ems-turn-around-delay
Title: "EMS Type of Turn-Around Delay"
Description: "NEMSIS eResponse.12 - Types of delay returning to service after transport."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-turn-around-delay"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.125"
* $nemsis-encounter-cs#2212001 "Clean-up"
* $nemsis-encounter-cs#2212003 "Decontamination"
* $nemsis-encounter-cs#2212005 "Distance"
* $nemsis-encounter-cs#2212007 "Documentation"
* $nemsis-encounter-cs#2212009 "ED Overcrowding / Transfer of Care"
* $nemsis-encounter-cs#2212011 "Equipment Failure"
* $nemsis-encounter-cs#2212013 "Equipment/Supply Replenishment"
* $nemsis-encounter-cs#2212015 "None/No Delay"
* $nemsis-encounter-cs#2212017 "Other"
* $nemsis-encounter-cs#2212019 "Rendezvous Transport Unavailable"
* $nemsis-encounter-cs#2212021 "Route Obstruction (e.g., Train)"
* $nemsis-encounter-cs#2212023 "Staff Delay"
* $nemsis-encounter-cs#2212025 "Traffic"
* $nemsis-encounter-cs#2212027 "Vehicle Crash of this Unit"
* $nemsis-encounter-cs#2212029 "Vehicle Failure of this Unit"
* $nemsis-encounter-cs#2212031 "Weather"
* $nemsis-encounter-cs#2212033 "EMS Crew Accompanies Patient for Facility Procedure"

// ── EMSResponseModeVS ─────────────────────────────────────────
// NEMSIS: eResponse.23 - Response Mode to Scene (Mandatory/National)
ValueSet: EMSResponseModeVS
Id: vs-ems-response-mode
Title: "EMS Response Mode to Scene (ValueSet)"
Description: "NEMSIS eResponse.23 - The response mode (emergent vs non-emergent) used en route to the scene."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-response-mode"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.106"
* $nemsis-encounter-cs#2223001 "Emergent (Immediate Response)"
* $nemsis-encounter-cs#2223003 "Emergent Downgraded to Non-Emergent"
* $nemsis-encounter-cs#2223005 "Non-Emergent"
* $nemsis-encounter-cs#2223007 "Non-Emergent Upgraded to Emergent"

// ── EMSAdditionalResponseModeVS ───────────────────────────────
// NEMSIS: eResponse.24 - Additional Response Mode Descriptors (Required/National)
ValueSet: EMSAdditionalResponseModeVS
Id: vs-ems-additional-response-mode
Title: "EMS Additional Response Mode Descriptors (ValueSet)"
Description: "NEMSIS eResponse.24 - Additional descriptors of response mode (lights, sirens, speed, intersection navigation)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-additional-response-mode"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.2"
* $nemsis-encounter-cs#2224001 "Intersection Navigation-Against Normal Light Patterns"
* $nemsis-encounter-cs#2224003 "Intersection Navigation-With Automated Light Changing Technology"
* $nemsis-encounter-cs#2224005 "Intersection Navigation-With Normal Light Patterns"
* $nemsis-encounter-cs#2224007 "Scheduled"
* $nemsis-encounter-cs#2224009 "Speed-Enhanced per Local Policy"
* $nemsis-encounter-cs#2224011 "Speed-Normal Traffic"
* $nemsis-encounter-cs#2224013 "Unscheduled"
* $nemsis-encounter-cs#2224015 "Lights and Sirens"
* $nemsis-encounter-cs#2224017 "Lights and No Sirens"
* $nemsis-encounter-cs#2224019 "No Lights or Sirens"
* $nemsis-encounter-cs#2224021 "Initial No Lights or Sirens, Upgraded to Lights and Sirens"
* $nemsis-encounter-cs#2224023 "Initial Lights and Sirens, Downgraded to No Lights or Sirens"
