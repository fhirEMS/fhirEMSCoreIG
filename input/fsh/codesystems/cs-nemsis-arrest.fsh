// ============================================================
// CodeSystem: NEMSIS eArrest Codes
// NEMSIS 3.5.1.251001CP2 — eArrest section
// ============================================================

CodeSystem: NEMSISArrest
Id: cs-nemsis-arrest
Title: "NEMSIS eArrest Code System"
Description: "Enumeration codes from the NEMSIS 3.5.1 eArrest section covering cardiac arrest status, etiology, resuscitation attempts, CPR type, ROSC, neurological outcome, end-of-event disposition, and first-responder roles."
* ^version = "3.5.1.251001CP2"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.1.2"
* ^caseSensitive = true
* ^content = #complete

// eArrest.01 — Cardiac Arrest
* #3001001 "No"
* #3001003 "Yes, Prior to Any EMS Arrival (includes Transport EMS & Medical First Responders)"
* #3001005 "Yes, After Any EMS Arrival (includes Transport EMS & Medical First Responders)"

// eArrest.02 — Etiology
* #3002001 "Cardiac (Presumed)"
* #3002003 "Drowning/Submersion"
* #3002005 "Drug Overdose"
* #3002007 "Electrocution"
* #3002009 "Exsanguination-Medical (Non-Traumatic)"
* #3002011 "Other"
* #3002013 "Respiratory/Asphyxia"
* #3002015 "Traumatic Cause"

// eArrest.03 — Resuscitation Attempted By This Unit
* #3003001 "Attempted Defibrillation"
* #3003003 "Attempted Ventilation"
* #3003005 "Initiated Chest Compressions"
* #3003007 "Not Attempted-Considered Futile"
* #3003009 "Not Attempted-DNR Orders"
* #3003011 "Not Attempted-Signs of Circulation"

// eArrest.04 — Arrest Witnessed By
* #3004001 "Not Witnessed"
* #3004003 "Witnessed by Family Member"
* #3004005 "Witnessed by Healthcare Provider"
* #3004007 "Witnessed by Bystander"

// eArrest.07 — AED Use Prior to EMS Arrival
* #3007001 "No"
* #3007003 "Yes, Applied without Defibrillation"
* #3007005 "Yes, With Defibrillation"

// eArrest.09 — CPR Care Provided Prior to EMS Arrival
* #3009001 "Compressions-Manual"
* #3009003 "Compressions-External Band Type Device"
* #3009005 "Compressions-External Plunger Type Device"
* #3009007 "Compressions-External Thumper Type Device"
* #3009009 "Compressions-Intermittent with Ventilation"
* #3009011 "Compressions-Other Device"
* #3009013 "Ventilation-Bag Valve Mask"
* #3009015 "Ventilation-Impedance Threshold Device"
* #3009017 "Ventilation-Mouth to Mouth"
* #3009019 "Ventilation-Pocket Mask"
* #3009021 "Compressions-Hands Only CPR (DEPRECATED)"
* #3009023 "Ventilation-with OPA/NPA"
* #3009025 "Ventilation-Advanced Airway Device"
* #3009027 "Ventilation-Passive Ventilation with Oxygen"

// eArrest.11 — First Monitored Rhythm of the Patient (by This EMS Unit)
* #3011001 "Asystole"
* #3011005 "PEA"
* #3011007 "Unknown AED Non-Shockable Rhythm"
* #3011009 "Unknown AED Shockable Rhythm"
* #3011011 "Ventricular Fibrillation"
* #3011013 "Ventricular Tachycardia-Pulseless"

// eArrest.12 — Any Return of Spontaneous Circulation
* #3012001 "No"
* #3012003 "Yes, At Arrival at the ED"
* #3012005 "Yes, Prior to Arrival at the ED"
* #3012007 "Yes, Sustained for 20 consecutive minutes"

// eArrest.13 — Neurological Outcome at Hospital Discharge
* #3013001 "CPC 1 Good Cerebral Performance"
* #3013003 "CPC 2 Moderate Cerebral Disability"
* #3013005 "CPC 3 Severe Cerebral Disability"
* #3013007 "CPC 4 Coma or Vegetative State"

// eArrest.16 — Reason CPR/Resuscitation Discontinued
* #3016001 "DNR"
* #3016003 "Medical Control Order"
* #3016005 "Obvious Signs of Death"
* #3016007 "Physically Unable to Perform"
* #3016009 "Protocol/Policy Requirements Completed"
* #3016011 "Return of Spontaneous Circulation (pulse or BP noted)"

// eArrest.18 — End of EMS Cardiac Arrest Event
* #3018001 "Expired in ED"
* #3018003 "Expired in the Field"
* #3018005 "Ongoing Resuscitation in ED"
* #3018007 "ROSC in the Field"
* #3018009 "ROSC in the ED"
* #3018011 "Ongoing Resuscitation by Other EMS"

// eArrest.20 — Who First Initiated CPR
* #3020001 "Bystander"
* #3020003 "Family Member"
* #3020005 "Healthcare Provider (non-911 Responder)"
* #3020007 "First Responder (EMS)"
* #3020009 "First Responder (Law Enforcement)"
* #3020011 "First Responder (non-EMS Fire)"
* #3020013 "EMS Responder (transport EMS)"

// eArrest.21 — Who First Applied the AED
* #3021001 "Bystander"
* #3021003 "Family Member"
* #3021005 "Healthcare Provider (non-911 Responder)"
* #3021007 "First Responder (EMS)"
* #3021009 "First Responder (Law Enforcement)"
* #3021011 "First Responder (non-EMS Fire)"
* #3021013 "EMS Responder (transport EMS)"

// eArrest.22 — Who First Defibrillated the Patient
* #3022001 "Bystander"
* #3022003 "Family Member"
* #3022005 "Healthcare Provider (non-911 Responder)"
* #3022007 "First Responder (EMS)"
* #3022009 "First Responder (Law Enforcement)"
* #3022011 "First Responder (non-EMS Fire)"
* #3022013 "EMS Responder (transport EMS)"
