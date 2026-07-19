// ============================================================
// EMS Dispatch ValueSets
// NEMSIS eDispatch section
// ============================================================

// ── EMSEMDPerformedVS ─────────────────────────────────────────
// NEMSIS: eDispatch.02 - EMD Performed (Required/National)
ValueSet: EMSEMDPerformedVS
Id: vs-ems-emd-performed
Title: "EMS EMD Performed"
Description: "NEMSIS eDispatch.02 - Whether Emergency Medical Dispatch pre-arrival instructions were provided."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-emd-performed"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#2302001 "No"
* $nemsis-encounter-cs#2302003 "Yes, With Pre-Arrival Instructions"
* $nemsis-encounter-cs#2302005 "Yes, Without Pre-Arrival Instructions"
* $nemsis-encounter-cs#2302007 "Yes, Unknown if Pre-Arrival Instructions Given"

// ── EMSDispatchPriorityVS ─────────────────────────────────────
// NEMSIS: eDispatch.05 - Dispatch Priority (Patient Acuity) (Optional)
ValueSet: EMSDispatchPriorityVS
Id: vs-ems-dispatch-priority
Title: "EMS Dispatch Priority (Patient Acuity)"
Description: "NEMSIS eDispatch.05 - The acuity level assigned at time of dispatch."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-dispatch-priority"
* ^status = #active
* ^experimental = true
* $nemsis-encounter-cs#2305001 "Critical"
* $nemsis-encounter-cs#2305003 "Emergent"
* $nemsis-encounter-cs#2305005 "Lower Acuity"
* $nemsis-encounter-cs#2305007 "Non-Acute (e.g., Scheduled Transfer or Standby)"

// ── EMSDispatchReasonVS ───────────────────────────────────────
// NEMSIS: eDispatch.01 - Dispatch Complaint (Mandatory/National)
// Uses extensible binding — codes come from SNOMED CT / NEMSIS custom codes.
// Separate CodeSystem not required; uses general NEMSIS CS or SNOMED.
ValueSet: EMSDispatchReasonVS
Id: vs-ems-dispatch-reason
Title: "EMS Dispatch Reason (ValueSet)"
Description: "NEMSIS eDispatch.01 - The dispatch complaint or reason for the EMS response. Extensible to allow agency-specific or SNOMED CT dispatch codes."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-dispatch-reason"
* ^status = #active
* ^experimental = true
* include codes from system $snomed where concept is-a #404684003
