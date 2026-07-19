// ============================================================
// ValueSets: EMS History (eHistory)
// NEMSIS 3.5.1.251001CP2
// eHistory.15 (medication route) reuses EMSMedicationRouteVS
// from vs-ems-medications.fsh (same 9927xxx codes).
// ============================================================

// eHistory.05 — Advance Directives
ValueSet: EMSAdvanceDirectivesVS
Id: vs-ems-advance-directives
Title: "EMS Advance Directives VS"
Description: "The type of advance directive documentation present for the patient (eHistory.05)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-advance-directives"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.130"
* $nemsis-history#3105001 "Family/Guardian request DNR (but no documentation)"
* $nemsis-history#3105003 "Living Will"
* $nemsis-history#3105005 "None"
* $nemsis-history#3105007 "Other"
* $nemsis-history#3105009 "Other Healthcare Advanced Directive Form"
* $nemsis-history#3105011 "State EMS DNR or Medical Order Form"

// eHistory.09 — Medical History Obtained From
ValueSet: EMSHistoryObtainedFromVS
Id: vs-ems-history-obtained-from
Title: "EMS Medical History Obtained From VS"
Description: "The source of the patient's medical history information (eHistory.09)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-history-obtained-from"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.131"
* $nemsis-history#3109001 "Bystander/Other"
* $nemsis-history#3109003 "Family"
* $nemsis-history#3109005 "Health Care Personnel"
* $nemsis-history#3109007 "Patient"

// eHistory.10 — The Patient's Type of Immunization
ValueSet: EMSImmunizationTypeVS
Id: vs-ems-immunization-type
Title: "EMS Immunization Type VS"
Description: "The patient's immunization history type (eHistory.10)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-immunization-type"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.132"
* $nemsis-history#9910001 "Anthrax"
* $nemsis-history#9910003 "Cholera"
* $nemsis-history#9910005 "DPT / TDaP (Diphtheria, Pertussis, Tetanus)"
* $nemsis-history#9910007 "Hemophilus Influenza B"
* $nemsis-history#9910009 "Hepatitis A"
* $nemsis-history#9910011 "Hepatitis B"
* $nemsis-history#9910013 "Human Papilloma Virus (HPV)"
* $nemsis-history#9910015 "Influenza-H1N1"
* $nemsis-history#9910017 "Influenza-Other"
* $nemsis-history#9910019 "Influenza-Seasonal (In past 12 months)"
* $nemsis-history#9910021 "Lyme Disease"
* $nemsis-history#9910023 "Meningococcus"
* $nemsis-history#9910025 "MMR (Measles, Mumps, Rubella)"
* $nemsis-history#9910027 "Other-Not Listed"
* $nemsis-history#9910029 "Plague"
* $nemsis-history#9910031 "Pneumococcal (Pneumonia)"
* $nemsis-history#9910033 "Polio"
* $nemsis-history#9910035 "Rabies"
* $nemsis-history#9910037 "Rotavirus"
* $nemsis-history#9910039 "Shingles"
* $nemsis-history#9910041 "Small Pox"
* $nemsis-history#9910043 "Tetanus"
* $nemsis-history#9910045 "Tuberculosis"
* $nemsis-history#9910047 "Typhoid"
* $nemsis-history#9910049 "Varicella (Chickenpox)"
* $nemsis-history#9910051 "Yellow Fever"
* $nemsis-history#9910053 "None"

// eHistory.14 — Current Medication Dosage Unit
ValueSet: EMSHistoryMedDosageUnitsVS
Id: vs-ems-history-med-dosage-units
Title: "EMS Home Medication Dosage Units VS"
Description: "Units for the patient's current (home) medication dose (eHistory.14). Distinct from the eMedications.06 administered-dose units (3706xxx codes)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-history-med-dosage-units"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.133"
* $nemsis-history#3114001 "Centimeters (cm)"
* $nemsis-history#3114003 "Grams (gms)"
* $nemsis-history#3114005 "Drops (gtts)"
* $nemsis-history#3114007 "Inches (in)"
* $nemsis-history#3114009 "International Units (IU)"
* $nemsis-history#3114011 "Keep Vein Open (kvo)"
* $nemsis-history#3114013 "Liters Per Minute (l/min [fluid])"
* $nemsis-history#3114015 "Liters (l)"
* $nemsis-history#3114017 "Liters Per Minute (LPM [gas])"
* $nemsis-history#3114019 "Micrograms (mcg)"
* $nemsis-history#3114021 "Micrograms per Kilogram per Minute (mcg/kg/min)"
* $nemsis-history#3114023 "Micrograms per Minute (mcg/min)"
* $nemsis-history#3114025 "Milliequivalents (mEq)"
* $nemsis-history#3114027 "Metered Dose (MDI)"
* $nemsis-history#3114029 "Milligrams (mg)"
* $nemsis-history#3114031 "Milligrams per Kilogram (mg/kg)"
* $nemsis-history#3114033 "Milligrams per Kilogram Per Minute (mg/kg/min)"
* $nemsis-history#3114035 "Milligrams per Minute (mg/min)"
* $nemsis-history#3114037 "Milliliters (ml)"
* $nemsis-history#3114039 "Milliliters per Hour (ml/hr)"
* $nemsis-history#3114041 "Other"
* $nemsis-history#3114043 "Puffs"
* $nemsis-history#3114045 "Units per Hour (units/hr)"
* $nemsis-history#3114047 "Micrograms per Kilogram (mcg/kg)"
* $nemsis-history#3114049 "Units"
* $nemsis-history#3114051 "Units per Kilogram per Hour (units/kg/hr)"
* $nemsis-history#3114053 "Units per Kilogram (units/kg)"

// eHistory.17 — Alcohol/Drug Use Indicators
ValueSet: EMSAlcoholDrugUseVS
Id: vs-ems-alcohol-drug-use
Title: "EMS Alcohol/Drug Use Indicators VS"
Description: "Indicators of potential patient alcohol or drug use (eHistory.17)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-alcohol-drug-use"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.134"
* $nemsis-history#3117001 "Alcohol Containers/Paraphernalia at Scene"
* $nemsis-history#3117003 "Drug Paraphernalia at Scene"
* $nemsis-history#3117005 "Patient Admits to Alcohol Use"
* $nemsis-history#3117007 "Patient Admits to Drug Use"
* $nemsis-history#3117009 "Positive Level known from Law Enforcement or Hospital Record"
* $nemsis-history#3117013 "Physical Exam Indicates Suspected Alcohol or Drug Use"
* $nemsis-history#3117015 "Bystander/Family Reports Drug Use"
* $nemsis-history#3117017 "Bystander/Family Reports Alcohol Use"

// eHistory.18 — Pregnancy
ValueSet: EMSPregnancyVS
Id: vs-ems-pregnancy
Title: "EMS Pregnancy Status VS"
Description: "The patient's pregnancy status (eHistory.18)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-pregnancy"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.135"
* $nemsis-history#3118001 "No"
* $nemsis-history#3118003 "Possible, Unconfirmed"
* $nemsis-history#3118005 "Yes, Confirmed 12 to 20 Weeks"
* $nemsis-history#3118007 "Yes, Confirmed Greater Than 20 Weeks"
* $nemsis-history#3118009 "Yes, Confirmed Less Than 12 Weeks"
* $nemsis-history#3118011 "Yes, Weeks Unknown"

// eHistory.20 — Current Medication Frequency
ValueSet: EMSMedFrequencyVS
Id: vs-ems-med-frequency
Title: "EMS Home Medication Frequency VS"
Description: "Dosing frequency for the patient's current (home) medications (eHistory.20)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-med-frequency"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.136"
* $nemsis-history#3120001 "q1h (every hour)"
* $nemsis-history#3120003 "q2h (every 2 hours)"
* $nemsis-history#3120005 "q3h (every 3 hours)"
* $nemsis-history#3120007 "q4h (every 4 hours)"
* $nemsis-history#3120009 "qid (four times a day)"
* $nemsis-history#3120011 "tid (three times a day)"
* $nemsis-history#3120013 "ac (before meals)"
* $nemsis-history#3120015 "pc (after meals)"
* $nemsis-history#3120017 "bid (twice a day)"
* $nemsis-history#3120019 "qd (every day)"
* $nemsis-history#3120021 "qd-am (every day in the morning)"
* $nemsis-history#3120023 "qd-pm (every day in the evening)"
* $nemsis-history#3120025 "hs (at bedtime)"
* $nemsis-history#3120027 "qod (every other day)"
* $nemsis-history#3120029 "prn (as needed)"
