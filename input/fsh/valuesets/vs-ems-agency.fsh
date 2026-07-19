// ============================================================
// EMS Agency (Organization) ValueSets
// NEMSIS dAgency section
// ============================================================

// ── EMSAgencyServiceTypeVS ────────────────────────────────────
// NEMSIS: dAgency.09 - Primary Type of Service (Mandatory/National)
//         dAgency.10 - Other Types of Service (Recommended)
ValueSet: EMSAgencyServiceTypeVS
Id: vs-ems-agency-service-type
Title: "EMS Agency Service Type"
Description: "NEMSIS dAgency.09/10 - The type(s) of EMS service provided by the agency."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-service-type"
* ^status = #active
* ^experimental = true
* $nemsis-cs#9920001 "911 Response (Scene) with Transport Capability"
* $nemsis-cs#9920003 "911 Response (Scene) without Transport Capability"
* $nemsis-cs#9920005 "Air Medical"
* $nemsis-cs#9920007 "ALS Intercept"
* $nemsis-cs#9920011 "Hazmat"
* $nemsis-cs#9920013 "Medical Transport (Convalescent, Interfacility Transfer Hospital and Nursing Home)"
* $nemsis-cs#9920015 "Rescue"
* $nemsis-cs#9920017 "Community Paramedicine"
* $nemsis-cs#9920019 "Critical Care (Ground)"

// ── EMSAgencyLevelOfServiceVS ─────────────────────────────────
// NEMSIS: dAgency.11 - Level of Service (Mandatory/National)
ValueSet: EMSAgencyLevelOfServiceVS
Id: vs-ems-agency-level-of-service
Title: "EMS Agency Level of Service"
Description: "NEMSIS dAgency.11 - The highest level of care the EMS agency is licensed/certified to provide."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-level-of-service"
* ^status = #active
* ^experimental = true
* $nemsis-cs#9917001 "Advanced Emergency Medical Technician (AEMT)"
* $nemsis-cs#9917002 "Emergency Medical Technician - Intermediate"
* $nemsis-cs#9917003 "Emergency Medical Responder (EMR)"
* $nemsis-cs#9917005 "Emergency Medical Technician (EMT)"
* $nemsis-cs#9917007 "Paramedic"
* $nemsis-cs#9917019 "Physician"
* $nemsis-cs#9917021 "Critical Care Paramedic"
* $nemsis-cs#9917023 "Community Paramedicine"
* $nemsis-cs#9917025 "Nurse Practitioner"
* $nemsis-cs#9917027 "Physician Assistant"
* $nemsis-cs#9917029 "Licensed Practical Nurse (LPN)"
* $nemsis-cs#9917031 "Registered Nurse"

// ── EMSAgencyOrgStatusVS ──────────────────────────────────────
// NEMSIS: dAgency.12 - Organization Status (Mandatory/National)
ValueSet: EMSAgencyOrgStatusVS
Id: vs-ems-agency-org-status
Title: "EMS Agency Organization Status"
Description: "NEMSIS dAgency.12 - Whether the EMS agency is staffed by volunteers, paid personnel, or both."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-org-status"
* ^status = #active
* ^experimental = true
* $nemsis-cs#1016001 "Mixed"
* $nemsis-cs#1016003 "Non-Volunteer"
* $nemsis-cs#1016005 "Volunteer"

// ── EMSAgencyOrgTypeVS ────────────────────────────────────────
// NEMSIS: dAgency.13 - Organizational Type (Mandatory/National)
ValueSet: EMSAgencyOrgTypeVS
Id: vs-ems-agency-org-type
Title: "EMS Agency Organizational Type"
Description: "NEMSIS dAgency.13 - The organizational type of the EMS agency."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-org-type"
* ^status = #active
* ^experimental = true
* $nemsis-cs#9912001 "Fire Department"
* $nemsis-cs#9912003 "Governmental, Non-Fire"
* $nemsis-cs#9912005 "Hospital"
* $nemsis-cs#9912007 "Private, Nonhospital"
* $nemsis-cs#9912009 "Tribal"
