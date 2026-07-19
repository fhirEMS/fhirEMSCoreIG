// ============================================================
// CodeSystem: NEMSIS eHistory Codes
// NEMSIS 3.5.1.251001CP2 — eHistory section
// Note: eHistory.01 (Barriers to Patient Care, 3101xxx) predates
// this file and remains in cs-nemsis-codes; eHistory.15 route
// codes (9927xxx) are shared with eMedications.04 and live in
// cs-nemsis-medications.
// ============================================================

CodeSystem: NEMSISHistory
Id: cs-nemsis-history
Title: "NEMSIS eHistory Code System"
Description: "Enumeration codes from the NEMSIS 3.5.1 eHistory section covering advance directives, medical history source, immunization type, current medication dosage units and frequency, alcohol/drug use indicators, and pregnancy status."
* ^version = "3.5.1.251001CP2"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.1.18"
* ^caseSensitive = true
* ^content = #complete

// eHistory.05 — Advance Directives
* #3105001 "Family/Guardian request DNR (but no documentation)"
* #3105003 "Living Will"
* #3105005 "None"
* #3105007 "Other"
* #3105009 "Other Healthcare Advanced Directive Form"
* #3105011 "State EMS DNR or Medical Order Form"

// eHistory.09 — Medical History Obtained From
* #3109001 "Bystander/Other"
* #3109003 "Family"
* #3109005 "Health Care Personnel"
* #3109007 "Patient"

// eHistory.10 — The Patient's Type of Immunization
* #9910001 "Anthrax"
* #9910003 "Cholera"
* #9910005 "DPT / TDaP (Diphtheria, Pertussis, Tetanus)"
* #9910007 "Hemophilus Influenza B"
* #9910009 "Hepatitis A"
* #9910011 "Hepatitis B"
* #9910013 "Human Papilloma Virus (HPV)"
* #9910015 "Influenza-H1N1"
* #9910017 "Influenza-Other"
* #9910019 "Influenza-Seasonal (In past 12 months)"
* #9910021 "Lyme Disease"
* #9910023 "Meningococcus"
* #9910025 "MMR (Measles, Mumps, Rubella)"
* #9910027 "Other-Not Listed"
* #9910029 "Plague"
* #9910031 "Pneumococcal (Pneumonia)"
* #9910033 "Polio"
* #9910035 "Rabies"
* #9910037 "Rotavirus"
* #9910039 "Shingles"
* #9910041 "Small Pox"
* #9910043 "Tetanus"
* #9910045 "Tuberculosis"
* #9910047 "Typhoid"
* #9910049 "Varicella (Chickenpox)"
* #9910051 "Yellow Fever"
* #9910053 "None"

// eHistory.14 — Current Medication Dosage Unit
* #3114001 "Centimeters (cm)"
* #3114003 "Grams (gms)"
* #3114005 "Drops (gtts)"
* #3114007 "Inches (in)"
* #3114009 "International Units (IU)"
* #3114011 "Keep Vein Open (kvo)"
* #3114013 "Liters Per Minute (l/min [fluid])"
* #3114015 "Liters (l)"
* #3114017 "Liters Per Minute (LPM [gas])"
* #3114019 "Micrograms (mcg)"
* #3114021 "Micrograms per Kilogram per Minute (mcg/kg/min)"
* #3114023 "Micrograms per Minute (mcg/min)"
* #3114025 "Milliequivalents (mEq)"
* #3114027 "Metered Dose (MDI)"
* #3114029 "Milligrams (mg)"
* #3114031 "Milligrams per Kilogram (mg/kg)"
* #3114033 "Milligrams per Kilogram Per Minute (mg/kg/min)"
* #3114035 "Milligrams per Minute (mg/min)"
* #3114037 "Milliliters (ml)"
* #3114039 "Milliliters per Hour (ml/hr)"
* #3114041 "Other"
* #3114043 "Puffs"
* #3114045 "Units per Hour (units/hr)"
* #3114047 "Micrograms per Kilogram (mcg/kg)"
* #3114049 "Units"
* #3114051 "Units per Kilogram per Hour (units/kg/hr)"
* #3114053 "Units per Kilogram (units/kg)"

// eHistory.17 — Alcohol/Drug Use Indicators
* #3117001 "Alcohol Containers/Paraphernalia at Scene"
* #3117003 "Drug Paraphernalia at Scene"
* #3117005 "Patient Admits to Alcohol Use"
* #3117007 "Patient Admits to Drug Use"
* #3117009 "Positive Level known from Law Enforcement or Hospital Record"
* #3117013 "Physical Exam Indicates Suspected Alcohol or Drug Use"
* #3117015 "Bystander/Family Reports Drug Use"
* #3117017 "Bystander/Family Reports Alcohol Use"

// eHistory.18 — Pregnancy
* #3118001 "No"
* #3118003 "Possible, Unconfirmed"
* #3118005 "Yes, Confirmed 12 to 20 Weeks"
* #3118007 "Yes, Confirmed Greater Than 20 Weeks"
* #3118009 "Yes, Confirmed Less Than 12 Weeks"
* #3118011 "Yes, Weeks Unknown"

// eHistory.20 — Current Medication Frequency
* #3120001 "q1h (every hour)"
* #3120003 "q2h (every 2 hours)"
* #3120005 "q3h (every 3 hours)"
* #3120007 "q4h (every 4 hours)"
* #3120009 "qid (four times a day)"
* #3120011 "tid (three times a day)"
* #3120013 "ac (before meals)"
* #3120015 "pc (after meals)"
* #3120017 "bid (twice a day)"
* #3120019 "qd (every day)"
* #3120021 "qd-am (every day in the morning)"
* #3120023 "qd-pm (every day in the evening)"
* #3120025 "hs (at bedtime)"
* #3120027 "qod (every other day)"
* #3120029 "prn (as needed)"
