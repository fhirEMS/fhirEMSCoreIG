// ============================================================
// NEMSIS Codes — General CodeSystem
// Catch-all for NEMSIS enumeration codes from sections that
// do not yet have a dedicated CodeSystem file.
// Add codes here as new sections are profiled; migrate to a
// dedicated section CodeSystem (cs-nemsis-{section}.fsh) once
// a section has enough codes to warrant its own file.
// NEMSIS 3.5.1.251001CP2
// ============================================================

CodeSystem: NEMSISCodes
Id: cs-nemsis-codes
Title: "NEMSIS General Codes"
Description: "General NEMSIS enumeration codes for sections without a dedicated CodeSystem. Currently covers eHistory (eHistory.01 - Barriers to Patient Care). NEMSIS 3.5.1.251001CP2."
* ^version = "3.5.1.251001CP2"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// ── PCR Composition Section Codes ────────────────────────────
// Used as Composition.section.code for NEMSIS sections that lack
// a suitable LOINC code. Sections with standard LOINC codes use
// LOINC directly (eHistory=11348-0, eVitals=8716-3, etc.).
* #section-eResponse   "EMS Response"
* #section-eTimes      "EMS Times"
* #section-eScene      "EMS Scene"
* #section-eSituation  "EMS Patient Situation"
* #section-eAirway     "EMS Airway Management"
* #section-eArrest     "EMS Cardiac Arrest"
* #section-eExam       "EMS Physical Exam"
* #section-eLabs       "EMS Labs"
* #section-eCrew       "EMS Crew"

// ── dAgency.09/10 - EMS Agency Service Type ──────────────────
* #9920001 "911 Response (Scene) with Transport Capability"
* #9920003 "911 Response (Scene) without Transport Capability"
* #9920005 "Air Medical"
* #9920007 "ALS Intercept"
* #9920011 "Hazmat"
* #9920013 "Medical Transport (Convalescent, Interfacility Transfer Hospital and Nursing Home)"
* #9920015 "Rescue"
* #9920017 "Community Paramedicine"
* #9920019 "Critical Care (Ground)"

// ── dAgency.11 - Level of Service ────────────────────────────
* #9917001 "Advanced Emergency Medical Technician (AEMT)"
* #9917002 "Emergency Medical Technician - Intermediate"
* #9917003 "Emergency Medical Responder (EMR)"
* #9917005 "Emergency Medical Technician (EMT)"
* #9917007 "Paramedic"
* #9917019 "Physician"
* #9917021 "Critical Care Paramedic"
* #9917023 "Community Paramedicine"
* #9917025 "Nurse Practitioner"
* #9917027 "Physician Assistant"
* #9917029 "Licensed Practical Nurse (LPN)"
* #9917031 "Registered Nurse"

// ── dAgency.12 - Organization Status ─────────────────────────
* #1016001 "Mixed"
* #1016003 "Non-Volunteer"
* #1016005 "Volunteer"

// ── dAgency.13 - Organizational Type ─────────────────────────
* #9912001 "Fire Department"
* #9912003 "Governmental, Non-Fire"
* #9912005 "Hospital"
* #9912007 "Private, Nonhospital"
* #9912009 "Tribal"

// ── eCrew.03 - Crew Member Response Role ─────────────────────
* #2403001 "Driver/Pilot-Response"
* #2403003 "Driver/Pilot-Transport"
* #2403005 "Other"
* #2403007 "Other Patient Caregiver-At Scene"
* #2403009 "Other Patient Caregiver-Transport"
* #2403011 "Primary Patient Caregiver-At Scene"
* #2403013 "Primary Patient Caregiver-Transport"

// ── eScene.08 - Triage Classification for MCI Patient ────────
* #2708001 "Red - Immediate"
* #2708003 "Yellow - Delayed"
* #2708005 "Green - Minimal (Minor)"
* #2708007 "Gray - Expectant"
* #2708009 "Black - Deceased"

// ── eSituation.08 - Chief Complaint Organ System ─────────────
* #2808001 "Behavioral/Psychiatric"
* #2808003 "Cardiovascular"
* #2808005 "CNS/Neuro"
* #2808007 "Endocrine/Metabolic"
* #2808009 "GI"
* #2808011 "Global/General"
* #2808013 "Lymphatic/Immune"
* #2808015 "Musculoskeletal/Skin"
* #2808017 "Reproductive"
* #2808019 "Pulmonary"
* #2808021 "Renal"

// ── eSituation.13 - Initial Patient Acuity ───────────────────
* #2813001 "Critical (Red)"
* #2813003 "Emergent (Yellow)"
* #2813005 "Lower Acuity (Green)"
* #2813007 "Dead without Resuscitation Efforts (Black)"
* #2813009 "Non-Acute/Routine"

// ── eSituation.20 - Reason for Interfacility Transfer ────────
* #2820001 "Cardiac Specialty"
* #2820003 "Convenience Transfer (Patient Request)"
* #2820005 "Diagnostic Testing"
* #2820007 "Dialysis"
* #2820009 "Drug and/or Alcohol Rehabilitation Care"
* #2820011 "Extended Care"
* #2820013 "Maternal/Neonatal"
* #2820015 "Medical Specialty Care (Other, Not Listed)"
* #2820017 "Neurological Specialty Care"
* #2820019 "Palliative/Hospice Care (Home or Facility)"
* #2820021 "Pediatric Specialty Care"
* #2820023 "Psychiatric/Behavioral Care"
* #2820025 "Physical Rehabilitation Care"
* #2820027 "Return to Home/Residence"
* #2820029 "Surgical Specialty Care (Other, Not Listed)"
* #2820031 "Trauma/Orthopedic Specialty Care"

// ── eHistory.01 - Barriers to Patient Care ───────────────────
* #3101001 "Cultural, Custom, Religious"
* #3101003 "Developmentally Impaired"
* #3101005 "Hearing Impaired"
* #3101007 "Language"
* #3101009 "None Noted"
* #3101011 "Obesity"
* #3101013 "Physical Barrier (Unable to Access Patient)"
* #3101015 "Physically Impaired"
* #3101017 "Physically Restrained"
* #3101019 "Psychologically Impaired"
* #3101021 "Sight Impaired"
* #3101023 "Speech Impaired"
* #3101025 "Unattended or Unsupervised (including minors)"
* #3101027 "Unconscious"
* #3101029 "Uncooperative"
* #3101031 "State of Emotional Distress"
* #3101033 "Alcohol Use, Suspected"
* #3101035 "Drug Use, Suspected"

// ── eOutcome.03 - External Report ID / Registry Type ─────────
* #4303001 "Disaster Tag"
* #4303003 "Fire Incident Report"
* #4303005 "Hospital-Receiving"
* #4303007 "Hospital-Transferring"
* #4303009 "Law Enforcement Report"
* #4303011 "Other"
* #4303013 "Other Registry"
* #4303015 "Other Report"
* #4303017 "Patient ID"
* #4303019 "Prior EMS Patient Care Report"
* #4303021 "STEMI Registry"
* #4303023 "Stroke Registry"
* #4303025 "Trauma Registry"

// ── dVehicle.04 - Vehicle Type ────────────────────────────────
* #1404001 "Ambulance"
* #1404003 "ATV"
* #1404005 "Bicycle"
* #1404007 "Fire Apparatus"
* #1404009 "Fixed Wing"
* #1404011 "Motorcycle"
* #1404013 "Other"
* #1404015 "Personal Vehicle"
* #1404017 "Quick Response Vehicle (Non-Transport Vehicle other than Fire Apparatus)"
* #1404019 "Rescue"
* #1404021 "Rotor Craft"
* #1404023 "Snow Vehicle"
* #1404025 "Watercraft"
