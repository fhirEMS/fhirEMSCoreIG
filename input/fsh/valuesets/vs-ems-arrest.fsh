// ============================================================
// ValueSets: EMS Cardiac Arrest (eArrest)
// NEMSIS 3.5.1.251001CP2
// ============================================================

// eArrest.01 — Cardiac Arrest
ValueSet: EMSCardiacArrestVS
Id: vs-ems-cardiac-arrest
Title: "EMS Cardiac Arrest VS"
Description: "Whether the patient was in cardiac arrest and when (eArrest.01)."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-cardiac-arrest"
* ^status = #active
* ^experimental = true
* $nemsis-arrest#3001001 "No"
* $nemsis-arrest#3001003 "Yes, Prior to Any EMS Arrival (includes Transport EMS & Medical First Responders)"
* $nemsis-arrest#3001005 "Yes, After Any EMS Arrival (includes Transport EMS & Medical First Responders)"

// eArrest.02 — Etiology of Cardiac Arrest
ValueSet: EMSArrestEtiologyVS
Id: vs-ems-arrest-etiology
Title: "EMS Arrest Etiology VS"
Description: "Etiology of the cardiac arrest event (eArrest.02)."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-arrest-etiology"
* ^status = #active
* ^experimental = true
* $nemsis-arrest#3002001 "Cardiac (Presumed)"
* $nemsis-arrest#3002003 "Drowning/Submersion"
* $nemsis-arrest#3002005 "Drug Overdose"
* $nemsis-arrest#3002007 "Electrocution"
* $nemsis-arrest#3002009 "Exsanguination-Medical (Non-Traumatic)"
* $nemsis-arrest#3002011 "Other"
* $nemsis-arrest#3002013 "Respiratory/Asphyxia"
* $nemsis-arrest#3002015 "Traumatic Cause"

// eArrest.03 — Resuscitation Attempted By This Unit
ValueSet: EMSResuscitationAttemptedVS
Id: vs-ems-resuscitation-attempted
Title: "EMS Resuscitation Attempted VS"
Description: "Type of resuscitation attempted by the EMS unit (eArrest.03)."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-resuscitation-attempted"
* ^status = #active
* ^experimental = true
* $nemsis-arrest#3003001 "Attempted Defibrillation"
* $nemsis-arrest#3003003 "Attempted Ventilation"
* $nemsis-arrest#3003005 "Initiated Chest Compressions"
* $nemsis-arrest#3003007 "Not Attempted-Considered Futile"
* $nemsis-arrest#3003009 "Not Attempted-DNR Orders"
* $nemsis-arrest#3003011 "Not Attempted-Signs of Circulation"

// eArrest.04 — Arrest Witnessed By
ValueSet: EMSArrestWitnessedVS
Id: vs-ems-arrest-witnessed
Title: "EMS Arrest Witnessed VS"
Description: "Who witnessed the cardiac arrest (eArrest.04)."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-arrest-witnessed"
* ^status = #active
* ^experimental = true
* $nemsis-arrest#3004001 "Not Witnessed"
* $nemsis-arrest#3004003 "Witnessed by Family Member"
* $nemsis-arrest#3004005 "Witnessed by Healthcare Provider"
* $nemsis-arrest#3004007 "Witnessed by Bystander"

// eArrest.07 — AED Use Prior to EMS Arrival
ValueSet: EMSAEDUseVS
Id: vs-ems-aed-use
Title: "EMS AED Use VS"
Description: "Whether an AED was used prior to EMS arrival (eArrest.07)."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-aed-use"
* ^status = #active
* ^experimental = true
* $nemsis-arrest#3007001 "No"
* $nemsis-arrest#3007003 "Yes, Applied without Defibrillation"
* $nemsis-arrest#3007005 "Yes, With Defibrillation"

// eArrest.09 — CPR Care Provided Prior to EMS Arrival
ValueSet: EMSCPRTypeVS
Id: vs-ems-cpr-type
Title: "EMS CPR Type VS"
Description: "Type of CPR care provided prior to EMS arrival (eArrest.09)."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-cpr-type"
* ^status = #active
* ^experimental = true
* $nemsis-arrest#3009001 "Compressions-Manual"
* $nemsis-arrest#3009003 "Compressions-External Band Type Device"
* $nemsis-arrest#3009005 "Compressions-External Plunger Type Device"
* $nemsis-arrest#3009007 "Compressions-External Thumper Type Device"
* $nemsis-arrest#3009009 "Compressions-Intermittent with Ventilation"
* $nemsis-arrest#3009011 "Compressions-Other Device"
* $nemsis-arrest#3009013 "Ventilation-Bag Valve Mask"
* $nemsis-arrest#3009015 "Ventilation-Impedance Threshold Device"
* $nemsis-arrest#3009017 "Ventilation-Mouth to Mouth"
* $nemsis-arrest#3009019 "Ventilation-Pocket Mask"
* $nemsis-arrest#3009023 "Ventilation-with OPA/NPA"
* $nemsis-arrest#3009025 "Ventilation-Advanced Airway Device"
* $nemsis-arrest#3009027 "Ventilation-Passive Ventilation with Oxygen"

// eArrest.11 — First Monitored Rhythm
ValueSet: EMSFirstRhythmVS
Id: vs-ems-first-rhythm
Title: "EMS First Monitored Rhythm VS"
Description: "First monitored cardiac rhythm by this EMS unit (eArrest.11). Subset for initial arrest rhythms. For full rhythm list including post-ROSC, see EMSCardiacRhythmVS."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-first-rhythm"
* ^status = #active
* ^experimental = true
* $nemsis-arrest#3011001 "Asystole"
* $nemsis-arrest#3011005 "PEA"
* $nemsis-arrest#3011007 "Unknown AED Non-Shockable Rhythm"
* $nemsis-arrest#3011009 "Unknown AED Shockable Rhythm"
* $nemsis-arrest#3011011 "Ventricular Fibrillation"
* $nemsis-arrest#3011013 "Ventricular Tachycardia-Pulseless"

// eArrest.12 — Return of Spontaneous Circulation (ROSC)
ValueSet: EMSROSCVs
Id: vs-ems-rosc
Title: "EMS ROSC VS"
Description: "Whether and when return of spontaneous circulation occurred (eArrest.12)."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-rosc"
* ^status = #active
* ^experimental = true
* $nemsis-arrest#3012001 "No"
* $nemsis-arrest#3012003 "Yes, At Arrival at the ED"
* $nemsis-arrest#3012005 "Yes, Prior to Arrival at the ED"
* $nemsis-arrest#3012007 "Yes, Sustained for 20 consecutive minutes"

// eArrest.13 — Neurological Outcome
ValueSet: EMSNeurologicalOutcomeVS
Id: vs-ems-neurological-outcome
Title: "EMS Neurological Outcome VS"
Description: "Cerebral performance category (CPC) at hospital discharge (eArrest.13)."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-neurological-outcome"
* ^status = #active
* ^experimental = true
* $nemsis-arrest#3013001 "CPC 1 Good Cerebral Performance"
* $nemsis-arrest#3013003 "CPC 2 Moderate Cerebral Disability"
* $nemsis-arrest#3013005 "CPC 3 Severe Cerebral Disability"
* $nemsis-arrest#3013007 "CPC 4 Coma or Vegetative State"

// eArrest.16 — Reason CPR Discontinued
ValueSet: EMSCPRDiscontinuedReasonVS
Id: vs-ems-cpr-discontinued-reason
Title: "EMS Reason CPR Discontinued VS"
Description: "Reason CPR or resuscitation was discontinued (eArrest.16)."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-cpr-discontinued-reason"
* ^status = #active
* ^experimental = true
* $nemsis-arrest#3016001 "DNR"
* $nemsis-arrest#3016003 "Medical Control Order"
* $nemsis-arrest#3016005 "Obvious Signs of Death"
* $nemsis-arrest#3016007 "Physically Unable to Perform"
* $nemsis-arrest#3016009 "Protocol/Policy Requirements Completed"
* $nemsis-arrest#3016011 "Return of Spontaneous Circulation (pulse or BP noted)"

// eArrest.18 — End of EMS Cardiac Arrest Event
ValueSet: EMSArrestEndEventVS
Id: vs-ems-arrest-end-event
Title: "EMS End of Cardiac Arrest Event VS"
Description: "Disposition of the patient at the end of the EMS cardiac arrest event (eArrest.18)."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-arrest-end-event"
* ^status = #active
* ^experimental = true
* $nemsis-arrest#3018001 "Expired in ED"
* $nemsis-arrest#3018003 "Expired in the Field"
* $nemsis-arrest#3018005 "Ongoing Resuscitation in ED"
* $nemsis-arrest#3018007 "ROSC in the Field"
* $nemsis-arrest#3018009 "ROSC in the ED"
* $nemsis-arrest#3018011 "Ongoing Resuscitation by Other EMS"

// eArrest.20/.21/.22 — Who First Initiated CPR / Applied AED / Defibrillated
ValueSet: EMSArrestFirstResponderVS
Id: vs-ems-arrest-first-responder
Title: "EMS Arrest First Responder VS"
Description: "Who first performed CPR, applied the AED, or defibrillated the patient (eArrest.20/21/22)."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-arrest-first-responder"
* ^status = #active
* ^experimental = true
// eArrest.20 — Who First Initiated CPR
* $nemsis-arrest#3020001 "Bystander"
* $nemsis-arrest#3020003 "Family Member"
* $nemsis-arrest#3020005 "Healthcare Provider (non-911 Responder)"
* $nemsis-arrest#3020007 "First Responder (EMS)"
* $nemsis-arrest#3020009 "First Responder (Law Enforcement)"
* $nemsis-arrest#3020011 "First Responder (non-EMS Fire)"
* $nemsis-arrest#3020013 "EMS Responder (transport EMS)"
// eArrest.21 — Who First Applied the AED
* $nemsis-arrest#3021001 "Bystander"
* $nemsis-arrest#3021003 "Family Member"
* $nemsis-arrest#3021005 "Healthcare Provider (non-911 Responder)"
* $nemsis-arrest#3021007 "First Responder (EMS)"
* $nemsis-arrest#3021009 "First Responder (Law Enforcement)"
* $nemsis-arrest#3021011 "First Responder (non-EMS Fire)"
* $nemsis-arrest#3021013 "EMS Responder (transport EMS)"
// eArrest.22 — Who First Defibrillated the Patient
* $nemsis-arrest#3022001 "Bystander"
* $nemsis-arrest#3022003 "Family Member"
* $nemsis-arrest#3022005 "Healthcare Provider (non-911 Responder)"
* $nemsis-arrest#3022007 "First Responder (EMS)"
* $nemsis-arrest#3022009 "First Responder (Law Enforcement)"
* $nemsis-arrest#3022011 "First Responder (non-EMS Fire)"
* $nemsis-arrest#3022013 "EMS Responder (transport EMS)"
