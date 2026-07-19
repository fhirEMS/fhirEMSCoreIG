// ============================================================
// EMS Medications and Procedures ValueSets
// NEMSIS eMedications and eProcedures sections
// NEMSIS 3.5.1.251001CP2
// ============================================================

// ── EMSCaregiverLevelVS ───────────────────────────────────────
// NEMSIS: eMedications.10 / eProcedures.10
ValueSet: EMSCaregiverLevelVS
Id: vs-ems-caregiver-level
Title: "EMS Caregiver Level"
Description: "NEMSIS eMedications.10 / eProcedures.10 - Level/role of the healthcare professional who administered the medication or performed the procedure."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-caregiver-level"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.31"
* $nemsis-medications#9905001 "Advanced Emergency Medical Technician (AEMT)"
* $nemsis-medications#9905002 "Emergency Medical Technician - Intermediate"
* $nemsis-medications#9905003 "Emergency Medical Responder (EMR)"
* $nemsis-medications#9905005 "Emergency Medical Technician (EMT)"
* $nemsis-medications#9905007 "Paramedic"
* $nemsis-medications#9905019 "Other Healthcare Professional"
* $nemsis-medications#9905021 "Other Non-Healthcare Professional"
* $nemsis-medications#9905025 "Physician"
* $nemsis-medications#9905027 "Respiratory Therapist"
* $nemsis-medications#9905029 "Student"
* $nemsis-medications#9905031 "Critical Care Paramedic"
* $nemsis-medications#9905033 "Community Paramedicine"
* $nemsis-medications#9905035 "Nurse Practitioner"
* $nemsis-medications#9905037 "Physician Assistant"
* $nemsis-medications#9905039 "Licensed Practical Nurse (LPN)"
* $nemsis-medications#9905041 "Registered Nurse"
* $nemsis-medications#9905043 "Patient"
* $nemsis-medications#9905045 "Lay Person"
* $nemsis-medications#9905047 "Law Enforcement"
* $nemsis-medications#9905049 "Family Member"
* $nemsis-medications#9905051 "Fire Personnel (non EMS)"

// ── EMSClinicalResponseVS ─────────────────────────────────────
// NEMSIS: eMedications.07 / eProcedures.08
ValueSet: EMSClinicalResponseVS
Id: vs-ems-clinical-response
Title: "EMS Clinical Response to Treatment"
Description: "NEMSIS eMedications.07 / eProcedures.08 - Patient response to medication administration or procedure performance."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-clinical-response"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.33"
* $nemsis-medications#9916001 "Improved"
* $nemsis-medications#9916003 "Unchanged"
* $nemsis-medications#9916005 "Worse"

// ── EMSAuthorizationTypeVS ────────────────────────────────────
// NEMSIS: eMedications.11 / eProcedures.11
ValueSet: EMSAuthorizationTypeVS
Id: vs-ems-authorization-type
Title: "EMS Treatment Authorization Type"
Description: "NEMSIS eMedications.11 / eProcedures.11 - How the medication administration or procedure was authorized."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-authorization-type"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.25"
* $nemsis-medications#9918001 "On-Line (Remote Verbal Order)"
* $nemsis-medications#9918003 "On-Scene"
* $nemsis-medications#9918005 "Protocol (Standing Order)"
* $nemsis-medications#9918007 "Written Orders (Patient Specific)"

// ── EMSMedicationRouteVS ──────────────────────────────────────
// NEMSIS: eMedications.04
ValueSet: EMSMedicationRouteVS
Id: vs-ems-medication-route
Title: "EMS Medication Administered Route"
Description: "NEMSIS eMedications.04 - The route by which the medication was administered."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medication-route"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.87"
* $nemsis-medications#9927001 "Blow-By"
* $nemsis-medications#9927003 "Buccal"
* $nemsis-medications#9927005 "Endotracheal Tube (ET)"
* $nemsis-medications#9927007 "Gastrostomy Tube"
* $nemsis-medications#9927009 "Inhalation"
* $nemsis-medications#9927011 "Intraarterial"
* $nemsis-medications#9927013 "Intradermal"
* $nemsis-medications#9927015 "Intramuscular (IM)"
* $nemsis-medications#9927017 "Intranasal"
* $nemsis-medications#9927019 "Intraocular"
* $nemsis-medications#9927021 "Intraosseous (IO)"
* $nemsis-medications#9927023 "Intravenous (IV)"
* $nemsis-medications#9927025 "Nasal Cannula"
* $nemsis-medications#9927027 "Nasogastric"
* $nemsis-medications#9927029 "Nasotracheal Tube"
* $nemsis-medications#9927031 "Non-Rebreather Mask"
* $nemsis-medications#9927033 "Ophthalmic"
* $nemsis-medications#9927035 "Oral"
* $nemsis-medications#9927037 "Other/miscellaneous"
* $nemsis-medications#9927039 "Otic"
* $nemsis-medications#9927041 "Re-breather mask"
* $nemsis-medications#9927043 "Rectal"
* $nemsis-medications#9927045 "Subcutaneous"
* $nemsis-medications#9927047 "Sublingual"
* $nemsis-medications#9927049 "Topical"
* $nemsis-medications#9927051 "Tracheostomy"
* $nemsis-medications#9927053 "Transdermal"
* $nemsis-medications#9927055 "Urethral"
* $nemsis-medications#9927057 "Ventimask"
* $nemsis-medications#9927059 "Wound"
* $nemsis-medications#9927061 "Portacath"
* $nemsis-medications#9927063 "Auto Injector"
* $nemsis-medications#9927065 "BVM"
* $nemsis-medications#9927067 "CPAP"
* $nemsis-medications#9927069 "IV Pump"
* $nemsis-medications#9927071 "Nebulizer"
* $nemsis-medications#9927073 "Umbilical Artery Catheter"
* $nemsis-medications#9927075 "Umbilical Venous Catheter"

// ── EMSMedicationDosageUnitsVS ────────────────────────────────
// NEMSIS: eMedications.06
ValueSet: EMSMedicationDosageUnitsVS
Id: vs-ems-medication-dosage-units
Title: "EMS Medication Dosage Units"
Description: "NEMSIS eMedications.06 - Units of measurement for medication dosage."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medication-dosage-units"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.86"
* $nemsis-medications#3706001 "Grams (gms)"
* $nemsis-medications#3706003 "Inches (in)"
* $nemsis-medications#3706005 "International Units (IU)"
* $nemsis-medications#3706007 "Keep Vein Open (kvo)"
* $nemsis-medications#3706009 "Liters (l)"
* $nemsis-medications#3706013 "Metered Dose (MDI)"
* $nemsis-medications#3706015 "Micrograms (mcg)"
* $nemsis-medications#3706017 "Micrograms per Kilogram per Minute (mcg/kg/min)"
* $nemsis-medications#3706019 "Milliequivalents (mEq)"
* $nemsis-medications#3706021 "Milligrams (mg)"
* $nemsis-medications#3706023 "Milligrams per Kilogram Per Minute (mg/kg/min)"
* $nemsis-medications#3706025 "Milliliters (ml)"
* $nemsis-medications#3706027 "Milliliters per Hour (ml/hr)"
* $nemsis-medications#3706029 "Other"
* $nemsis-medications#3706031 "Centimeters (cm)"
* $nemsis-medications#3706033 "Drops (gtts)"
* $nemsis-medications#3706035 "Liters Per Minute (LPM [gas])"
* $nemsis-medications#3706037 "Micrograms per Minute (mcg/min)"
* $nemsis-medications#3706039 "Milligrams per Kilogram (mg/kg)"
* $nemsis-medications#3706041 "Milligrams per Minute (mg/min)"
* $nemsis-medications#3706043 "Puffs"
* $nemsis-medications#3706045 "Units per Hour (units/hr)"
* $nemsis-medications#3706047 "Micrograms per Kilogram (mcg/kg)"
* $nemsis-medications#3706049 "Units"
* $nemsis-medications#3706051 "Units per Kilogram per Hour (units/kg/hr)"
* $nemsis-medications#3706053 "Units per Kilogram (units/kg)"
* $nemsis-medications#3706055 "Milligrams per Hour (mg/hr)"

// ── EMSMedicationComplicationVS ───────────────────────────────
// NEMSIS: eMedications.08
ValueSet: EMSMedicationComplicationVS
Id: vs-ems-medication-complication
Title: "EMS Medication Complication"
Description: "NEMSIS eMedications.08 - Adverse reactions or complications occurring with medication administration."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medication-complication"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.85"
* $nemsis-medications#3708001 "Altered Mental Status"
* $nemsis-medications#3708003 "Apnea"
* $nemsis-medications#3708005 "Bleeding"
* $nemsis-medications#3708007 "Bradycardia"
* $nemsis-medications#3708009 "Bradypnea"
* $nemsis-medications#3708011 "Diarrhea"
* $nemsis-medications#3708013 "Extravasation"
* $nemsis-medications#3708015 "Hypertension"
* $nemsis-medications#3708017 "Hyperthermia"
* $nemsis-medications#3708019 "Hypotension"
* $nemsis-medications#3708021 "Hypothermia"
* $nemsis-medications#3708023 "Hypoxia"
* $nemsis-medications#3708025 "Injury"
* $nemsis-medications#3708029 "Nausea"
* $nemsis-medications#3708031 "None"
* $nemsis-medications#3708033 "Other"
* $nemsis-medications#3708035 "Respiratory Distress"
* $nemsis-medications#3708037 "Tachycardia"
* $nemsis-medications#3708039 "Tachypnea"
* $nemsis-medications#3708041 "Vomiting"
* $nemsis-medications#3708043 "Itching"
* $nemsis-medications#3708045 "Urticaria"

// ── EMSProcedureComplicationVS ────────────────────────────────
// NEMSIS: eProcedures.07
ValueSet: EMSProcedureComplicationVS
Id: vs-ems-procedure-complication
Title: "EMS Procedure Complication"
Description: "NEMSIS eProcedures.07 - Adverse events or complications occurring with procedure performance."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-procedure-complication"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.99"
* $nemsis-medications#3907001 "Altered Mental Status"
* $nemsis-medications#3907003 "Apnea"
* $nemsis-medications#3907005 "Bleeding"
* $nemsis-medications#3907007 "Bradypnea"
* $nemsis-medications#3907009 "Diarrhea"
* $nemsis-medications#3907011 "Esophageal Intubation-immediately"
* $nemsis-medications#3907013 "Esophageal Intubation-other"
* $nemsis-medications#3907015 "Extravasation"
* $nemsis-medications#3907017 "Hypertension"
* $nemsis-medications#3907019 "Hyperthermia"
* $nemsis-medications#3907021 "Hypotension"
* $nemsis-medications#3907023 "Hypothermia"
* $nemsis-medications#3907025 "Hypoxia"
* $nemsis-medications#3907027 "Injury"
* $nemsis-medications#3907031 "Nausea"
* $nemsis-medications#3907033 "None"
* $nemsis-medications#3907035 "Other"
* $nemsis-medications#3907039 "Respiratory Distress"
* $nemsis-medications#3907041 "Tachycardia"
* $nemsis-medications#3907043 "Tachypnea"
* $nemsis-medications#3907045 "Vomiting"
* $nemsis-medications#3907047 "Bradycardia"
* $nemsis-medications#3907049 "Itching"
* $nemsis-medications#3907051 "Urticaria"

// ── EMSVascularAccessLocationVS ───────────────────────────────
// NEMSIS: eProcedures.13
ValueSet: EMSVascularAccessLocationVS
Id: vs-ems-vascular-access-location
Title: "EMS Vascular Access Location"
Description: "NEMSIS eProcedures.13 - Anatomical site of vascular access (IV/IO line)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-vascular-access-location"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.128"
* $nemsis-medications#3913001 "Antecubital-Left"
* $nemsis-medications#3913003 "Antecubital-Right"
* $nemsis-medications#3913005 "External Jugular-Left"
* $nemsis-medications#3913007 "External Jugular-Right"
* $nemsis-medications#3913009 "Femoral-Left IV"
* $nemsis-medications#3913011 "Femoral-Right IV"
* $nemsis-medications#3913013 "Foot-Right"
* $nemsis-medications#3913015 "Foot-Left"
* $nemsis-medications#3913017 "Forearm-Left"
* $nemsis-medications#3913019 "Forearm-Right"
* $nemsis-medications#3913021 "Hand-Left"
* $nemsis-medications#3913023 "Hand-Right"
* $nemsis-medications#3913025 "Internal Jugular-Left"
* $nemsis-medications#3913027 "Internal Jugular-Right"
* $nemsis-medications#3913029 "IO-Iliac Crest-Left"
* $nemsis-medications#3913031 "IO-Iliac Crest-Right"
* $nemsis-medications#3913033 "IO-Femoral-Left Distal"
* $nemsis-medications#3913035 "IO-Femoral-Right Distal"
* $nemsis-medications#3913037 "IO-Humeral-Left"
* $nemsis-medications#3913039 "IO-Humeral-Right"
* $nemsis-medications#3913041 "IO-Tibia-Left Distal"
* $nemsis-medications#3913043 "IO-Sternum"
* $nemsis-medications#3913045 "IO-Tibia-Right Distal"
* $nemsis-medications#3913047 "IO-Tibia-Left Proximal"
* $nemsis-medications#3913049 "IO-Tibia-Right Proximal"
* $nemsis-medications#3913051 "Lower Extremity-Left"
* $nemsis-medications#3913053 "Lower Extremity-Right"
* $nemsis-medications#3913055 "Other Peripheral"
* $nemsis-medications#3913057 "Other Central (PICC, Portacath, etc.)"
* $nemsis-medications#3913059 "Scalp"
* $nemsis-medications#3913061 "Subclavian-Left"
* $nemsis-medications#3913063 "Subclavian-Right"
* $nemsis-medications#3913065 "Umbilical"
* $nemsis-medications#3913067 "Venous Cutdown-Left Lower Extremity"
* $nemsis-medications#3913069 "Venous Cutdown-Right Lower Extremity"
* $nemsis-medications#3913071 "Upper Arm-Left"
* $nemsis-medications#3913073 "Upper Arm-Right"
* $nemsis-medications#3913075 "Radial-Left"
* $nemsis-medications#3913077 "Radial-Right"
* $nemsis-medications#3913079 "Wrist-Left"
* $nemsis-medications#3913081 "Wrist-Right"

// ── EMSAirwayTechniqueVS ──────────────────────────────────────
// NEMSIS: eProcedures.14
ValueSet: EMSAirwayTechniqueVS
Id: vs-ems-airway-technique
Title: "EMS Airway Placement Technique"
Description: "NEMSIS eProcedures.14 - Technique used for airway device placement."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airway-technique"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.17"
* $nemsis-medications#3914001 "Blind Digital Technique"
* $nemsis-medications#3914003 "Cross Finger Technique"
* $nemsis-medications#3914005 "Direct Laryngoscopy"
* $nemsis-medications#3914007 "Fiberoptic Laryngoscopy"
* $nemsis-medications#3914009 "Indirect Laryngoscopy"
* $nemsis-medications#3914011 "Video Laryngoscopy"
