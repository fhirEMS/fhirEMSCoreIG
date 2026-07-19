// ============================================================
// EMS Scene and Situation ValueSets
// NEMSIS eScene and eSituation sections
// ============================================================

// ── EMSCrewRoleVS ─────────────────────────────────────────────
// NEMSIS: eCrew.03 - Crew Member Response Role (Recommended)
ValueSet: EMSCrewRoleVS
Id: vs-ems-crew-role
Title: "EMS Crew Member Response Role"
Description: "NEMSIS eCrew.03 - The role of the crew member during the EMS response."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-crew-role"
* ^status = #active
* ^experimental = true
* $nemsis-cs#2403001 "Driver/Pilot-Response"
* $nemsis-cs#2403003 "Driver/Pilot-Transport"
* $nemsis-cs#2403005 "Other"
* $nemsis-cs#2403007 "Other Patient Caregiver-At Scene"
* $nemsis-cs#2403009 "Other Patient Caregiver-Transport"
* $nemsis-cs#2403011 "Primary Patient Caregiver-At Scene"
* $nemsis-cs#2403013 "Primary Patient Caregiver-Transport"

// ── EMSMCITriageClassVS ───────────────────────────────────────
// NEMSIS: eScene.08 - Triage Classification for MCI Patient (Required/National)
ValueSet: EMSMCITriageClassVS
Id: vs-ems-mci-triage-class
Title: "EMS MCI Triage Classification"
Description: "NEMSIS eScene.08 - START/JumpSTART triage classification for MCI patient."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-mci-triage-class"
* ^status = #active
* ^experimental = true
* $nemsis-cs#2708001 "Red - Immediate"
* $nemsis-cs#2708003 "Yellow - Delayed"
* $nemsis-cs#2708005 "Green - Minimal (Minor)"
* $nemsis-cs#2708007 "Gray - Expectant"
* $nemsis-cs#2708009 "Black - Deceased"

// ── EMSSituationOrganSystemVS ─────────────────────────────────
// NEMSIS: eSituation.08 - Chief Complaint Organ System (Required/National)
ValueSet: EMSSituationOrganSystemVS
Id: vs-ems-situation-organ-system
Title: "EMS Chief Complaint Organ System"
Description: "NEMSIS eSituation.08 - The organ system involved in the patient's chief complaint."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-situation-organ-system"
* ^status = #active
* ^experimental = true
* $nemsis-cs#2808001 "Behavioral/Psychiatric"
* $nemsis-cs#2808003 "Cardiovascular"
* $nemsis-cs#2808005 "CNS/Neuro"
* $nemsis-cs#2808007 "Endocrine/Metabolic"
* $nemsis-cs#2808009 "GI"
* $nemsis-cs#2808011 "Global/General"
* $nemsis-cs#2808013 "Lymphatic/Immune"
* $nemsis-cs#2808015 "Musculoskeletal/Skin"
* $nemsis-cs#2808017 "Reproductive"
* $nemsis-cs#2808019 "Pulmonary"
* $nemsis-cs#2808021 "Renal"

// ── EMSInitialAcuityVS ────────────────────────────────────────
// NEMSIS: eSituation.13 - Initial Patient Acuity (Required/National)
ValueSet: EMSInitialAcuityVS
Id: vs-ems-initial-acuity
Title: "EMS Initial Patient Acuity"
Description: "NEMSIS eSituation.13 - Patient acuity at initial EMS contact."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-initial-acuity"
* ^status = #active
* ^experimental = true
* $nemsis-cs#2813001 "Critical (Red)"
* $nemsis-cs#2813003 "Emergent (Yellow)"
* $nemsis-cs#2813005 "Lower Acuity (Green)"
* $nemsis-cs#2813007 "Dead without Resuscitation Efforts (Black)"
* $nemsis-cs#2813009 "Non-Acute/Routine"

// ── EMSTransferReasonVS ───────────────────────────────────────
// NEMSIS: eSituation.20 - Reason for Interfacility Transfer (Required/National)
ValueSet: EMSTransferReasonVS
Id: vs-ems-transfer-reason
Title: "EMS Reason for Interfacility Transfer"
Description: "NEMSIS eSituation.20 - The clinical reason for an interfacility transfer or transport."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-transfer-reason"
* ^status = #active
* ^experimental = true
* $nemsis-cs#2820001 "Cardiac Specialty"
* $nemsis-cs#2820003 "Convenience Transfer (Patient Request)"
* $nemsis-cs#2820005 "Diagnostic Testing"
* $nemsis-cs#2820007 "Dialysis"
* $nemsis-cs#2820009 "Drug and/or Alcohol Rehabilitation Care"
* $nemsis-cs#2820011 "Extended Care"
* $nemsis-cs#2820013 "Maternal/Neonatal"
* $nemsis-cs#2820015 "Medical Specialty Care (Other, Not Listed)"
* $nemsis-cs#2820017 "Neurological Specialty Care"
* $nemsis-cs#2820019 "Palliative/Hospice Care (Home or Facility)"
* $nemsis-cs#2820021 "Pediatric Specialty Care"
* $nemsis-cs#2820023 "Psychiatric/Behavioral Care"
* $nemsis-cs#2820025 "Physical Rehabilitation Care"
* $nemsis-cs#2820027 "Return to Home/Residence"
* $nemsis-cs#2820029 "Surgical Specialty Care (Other, Not Listed)"
* $nemsis-cs#2820031 "Trauma/Orthopedic Specialty Care"
