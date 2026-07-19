// ============================================================
// ValueSets: EMS Airway Management (eAirway)
// NEMSIS 3.5.1.251001CP2
// ============================================================

// eAirway.01 — Airway Indications
ValueSet: EMSAirwayIndicationsVS
Id: vs-ems-airway-indications
Title: "EMS Airway Indications VS"
Description: "Indications for airway management intervention (eAirway.01)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-indications"
* ^status = #active
* ^experimental = true
* $nemsis-airway#4001001 "Adequate Airway Reflexes/Effort, Potential for Compromise"
* $nemsis-airway#4001003 "Airway Reflex Compromised"
* $nemsis-airway#4001005 "Apnea or Agonal Respirations"
* $nemsis-airway#4001007 "Illness Involving Airway"
* $nemsis-airway#4001009 "Injury Involving Airway"
* $nemsis-airway#4001011 "Other"
* $nemsis-airway#4001013 "Ventilatory Effort Compromised"

// eAirway.03 — Device Being Confirmed
ValueSet: EMSAirwayDeviceVS
Id: vs-ems-airway-device
Title: "EMS Airway Device VS"
Description: "Type of airway device being confirmed (eAirway.03)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-device"
* ^status = #active
* ^experimental = true
* $nemsis-airway#4003001 "Cricothyrotomy Tube"
* $nemsis-airway#4003003 "Endotracheal Tube"
* $nemsis-airway#4003005 "Other-Invasive Airway"
* $nemsis-airway#4003007 "SAD-Combitube"
* $nemsis-airway#4003009 "SAD-King"
* $nemsis-airway#4003011 "SAD-LMA"
* $nemsis-airway#4003013 "SAD-Other"
* $nemsis-airway#4003015 "Tracheostomy Tube"

// eAirway.04 — Airway Confirmation Method
ValueSet: EMSAirwayConfirmationMethodVS
Id: vs-ems-airway-confirmation-method
Title: "EMS Airway Confirmation Method VS"
Description: "Method used to confirm airway device placement (eAirway.04)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-confirmation-method"
* ^status = #active
* ^experimental = true
* $nemsis-airway#4004001 "Auscultation"
* $nemsis-airway#4004003 "Bulb/Syringe Aspiration"
* $nemsis-airway#4004005 "Colorimetric ETCO2"
* $nemsis-airway#4004007 "Condensation in Tube"
* $nemsis-airway#4004009 "Digital (Numeric) ETCO2"
* $nemsis-airway#4004011 "Direct Re-Visualization of Tube in Place"
* $nemsis-airway#4004013 "Endotracheal Tube Whistle (BAAM, etc.)"
* $nemsis-airway#4004015 "Other"
* $nemsis-airway#4004017 "Visualization of Vocal Cords"
* $nemsis-airway#4004019 "Waveform ETCO2"
* $nemsis-airway#4004021 "Chest Rise"

// eAirway.06 — Type of Individual Confirming Airway
ValueSet: EMSAirwayConfirmingPersonVS
Id: vs-ems-airway-confirming-person
Title: "EMS Airway Confirming Person VS"
Description: "Type of individual who confirmed the airway device placement (eAirway.06)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-confirming-person"
* ^status = #active
* ^experimental = true
* $nemsis-airway#4006001 "Another Person on the Same Crew"
* $nemsis-airway#4006003 "Other"
* $nemsis-airway#4006005 "Person Performing Intubation"
* $nemsis-airway#4006007 "Receiving Air Medical/EMS Crew"
* $nemsis-airway#4006009 "Receiving Hospital Team"

// eAirway.08 — Airway Complications
ValueSet: EMSAirwayComplicationsVS
Id: vs-ems-airway-complications
Title: "EMS Airway Complications VS"
Description: "Complications encountered during airway management (eAirway.08)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-complications"
* ^status = #active
* ^experimental = true
* $nemsis-airway#4008001 "Adverse Event from Facilitating Drugs"
* $nemsis-airway#4008003 "Bradycardia (<50)"
* $nemsis-airway#4008005 "Cardiac Arrest"
* $nemsis-airway#4008007 "Esophageal Intubation-Delayed Detection (After Tube Secured)"
* $nemsis-airway#4008009 "Esophageal Intubation-Detected in Emergency Department"
* $nemsis-airway#4008011 "Failed Intubation Effort"
* $nemsis-airway#4008013 "Injury or Trauma to Patient from Airway Management Effort"
* $nemsis-airway#4008015 "Other"
* $nemsis-airway#4008017 "Oxygen Desaturation (<90%)"
* $nemsis-airway#4008019 "Patient Vomiting/Aspiration"
* $nemsis-airway#4008021 "Tube Dislodged During Transport/Patient Care"
* $nemsis-airway#4008023 "Tube Was Not in Correct Position when EMS Crew/Team Assumed Care of the Patient"

// eAirway.09 — Reasons for Failed Airway Management
ValueSet: EMSAirwayFailureReasonsVS
Id: vs-ems-airway-failure-reasons
Title: "EMS Airway Failure Reasons VS"
Description: "Reasons for failed airway management (eAirway.09)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-failure-reasons"
* ^status = #active
* ^experimental = true
* $nemsis-airway#4009001 "Difficult Patient Airway Anatomy"
* $nemsis-airway#4009003 "ETI Attempted, but Arrived At Destination Facility Before Accomplished"
* $nemsis-airway#4009005 "Facial or Oral Trauma"
* $nemsis-airway#4009007 "Inability to Expose Vocal Cords"
* $nemsis-airway#4009009 "Inadequate Patient Relaxation/Presence of Protective Airway Reflexes"
* $nemsis-airway#4009011 "Jaw Clenched (Trismus)"
* $nemsis-airway#4009013 "Other"
* $nemsis-airway#4009015 "Poor Patient Access"
* $nemsis-airway#4009017 "Secretions/Blood/Vomit"
* $nemsis-airway#4009019 "Unable to Position or Access Patient"
