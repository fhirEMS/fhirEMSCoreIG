// ============================================================
// CodeSystem: NEMSIS eAirway Codes
// NEMSIS 3.5.1.251001CP2 — eAirway section
// ============================================================

CodeSystem: NEMSISAirway
Id: cs-nemsis-airway
Title: "NEMSIS eAirway Code System"
Description: "Enumeration codes from the NEMSIS 3.5.1 eAirway section covering airway management indications, device types, confirmation methods, confirming personnel, complications, and reasons for failed management."
* ^url = "http://hl7.org/fhir/us/emscore/CodeSystem/nemsis-airway"
* ^version = "3.5.1.251001CP2"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// eAirway.01 — Airway Indications
* #4001001 "Adequate Airway Reflexes/Effort, Potential for Compromise"
* #4001003 "Airway Reflex Compromised"
* #4001005 "Apnea or Agonal Respirations"
* #4001007 "Illness Involving Airway"
* #4001009 "Injury Involving Airway"
* #4001011 "Other"
* #4001013 "Ventilatory Effort Compromised"

// eAirway.03 — Device Being Confirmed
* #4003001 "Cricothyrotomy Tube"
* #4003003 "Endotracheal Tube"
* #4003005 "Other-Invasive Airway"
* #4003007 "SAD-Combitube"
* #4003009 "SAD-King"
* #4003011 "SAD-LMA"
* #4003013 "SAD-Other"
* #4003015 "Tracheostomy Tube"

// eAirway.04 — Airway Confirmation Method
* #4004001 "Auscultation"
* #4004003 "Bulb/Syringe Aspiration"
* #4004005 "Colorimetric ETCO2"
* #4004007 "Condensation in Tube"
* #4004009 "Digital (Numeric) ETCO2"
* #4004011 "Direct Re-Visualization of Tube in Place"
* #4004013 "Endotracheal Tube Whistle (BAAM, etc.)"
* #4004015 "Other"
* #4004017 "Visualization of Vocal Cords"
* #4004019 "Waveform ETCO2"
* #4004021 "Chest Rise"

// eAirway.06 — Type of Individual Confirming Airway
* #4006001 "Another Person on the Same Crew"
* #4006003 "Other"
* #4006005 "Person Performing Intubation"
* #4006007 "Receiving Air Medical/EMS Crew"
* #4006009 "Receiving Hospital Team"

// eAirway.08 — Airway Complications
* #4008001 "Adverse Event from Facilitating Drugs"
* #4008003 "Bradycardia (<50)"
* #4008005 "Cardiac Arrest"
* #4008007 "Esophageal Intubation-Delayed Detection (After Tube Secured)"
* #4008009 "Esophageal Intubation-Detected in Emergency Department"
* #4008011 "Failed Intubation Effort"
* #4008013 "Injury or Trauma to Patient from Airway Management Effort"
* #4008015 "Other"
* #4008017 "Oxygen Desaturation (<90%)"
* #4008019 "Patient Vomiting/Aspiration"
* #4008021 "Tube Dislodged During Transport/Patient Care"
* #4008023 "Tube Was Not in Correct Position when EMS Crew/Team Assumed Care of the Patient"

// eAirway.09 — Reasons for Failed Airway Management
* #4009001 "Difficult Patient Airway Anatomy"
* #4009003 "ETI Attempted, but Arrived At Destination Facility Before Accomplished"
* #4009005 "Facial or Oral Trauma"
* #4009007 "Inability to Expose Vocal Cords"
* #4009009 "Inadequate Patient Relaxation/Presence of Protective Airway Reflexes"
* #4009011 "Jaw Clenched (Trismus)"
* #4009013 "Other"
* #4009015 "Poor Patient Access"
* #4009017 "Secretions/Blood/Vomit"
* #4009019 "Unable to Position or Access Patient"
