// ============================================================
// CodeSystem: NEMSIS DEM Demographic Codes
// NEMSIS 3.5.1.251001CP2 — dContact, dConfiguration, dLocation
// (dAgency/dPersonnel/dVehicle codes live in cs-nemsis-codes,
// cs-nemsis-personnel-level, and vs-ems-vehicle sources.)
// ============================================================

CodeSystem: NEMSISDemographics
Id: cs-nemsis-demographics
Title: "NEMSIS DEM Demographic Code System"
Description: "Enumeration codes from the NEMSIS 3.5.1 DEM dataset sections dContact (agency contact type, medical director degree/board certification/compensation), dConfiguration (specialty service capability, EMD provision, patient monitoring capability), and dLocation (EMS location type)."
* ^version = "3.5.1.251001CP2"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.1.20"
* ^caseSensitive = true
* ^content = #complete

// dContact.01 — Agency Contact Type
* #1101001 "Administrative Assistant"
* #1101003 "EMS Agency Director/Chief/Lead Administrator/CEO"
* #1101005 "EMS Assistant Agency Director/Chief/Administrator/CEO"
* #1101007 "EMS Assistant Medical Director"
* #1101009 "EMS IT/Data Specialist"
* #1101011 "EMS Medical Director"
* #1101013 "EMS Quality/Performance Improvement Specialist"
* #1101015 "EMS Training/Education Specialist"
* #1101017 "Other"

// dContact.13 — Agency Medical Director Degree
* #1113001 "Doctor of Medicine"
* #1113003 "Doctor of Osteopathy"

// dContact.14 — Agency Medical Director Board Certification Type
* #1114001 "Allergy and Immunology"
* #1114003 "Anesthesiology"
* #1114005 "Colon and Rectal Surgery"
* #1114007 "Dermatology"
* #1114009 "Emergency Medicine"
* #1114011 "Family Medicine"
* #1114013 "Internal Medicine"
* #1114015 "Neurological Surgery"
* #1114017 "Neurology"
* #1114019 "None (Not Board Certified)"
* #1114021 "Obstetrics and Gynecology"
* #1114023 "Ophthalmology"
* #1114025 "Orthopedic Surgery"
* #1114027 "Otolaryngology"
* #1114029 "Pediatrics"
* #1114031 "Physical Medicine and Rehabilitation"
* #1114033 "Plastic Surgery"
* #1114035 "Psychiatry"
* #1114037 "Surgery"
* #1114039 "Thoracic Surgery"
* #1114041 "Urology"
* #1114043 "Vascular Surgery"

// dContact.15 — Medical Director Compensation
* #1115001 "Compensated"
* #1115003 "Non-Compensated"

// dConfiguration.11 — EMS Agency Specialty Service Capability
* #1211001 "Air Rescue"
* #1211003 "CBRNE"
* #1211005 "Community Health Medicine"
* #1211007 "Disaster Medical Assistance Team (DMAT)"
* #1211009 "Disaster Mortuary (DMORT)"
* #1211011 "Dive Rescue"
* #1211013 "Farm Rescue"
* #1211015 "High Angle Rescue"
* #1211017 "Machinery Disentanglement"
* #1211019 "None"
* #1211021 "Ski / Snow Rescue"
* #1211023 "Tactical EMS"
* #1211025 "Trench / Confined Space Rescue"
* #1211027 "Urban Search and Rescue (USAR)"
* #1211029 "Vehicle Extrication"
* #1211031 "Veterinary Medical Assistance Team (VMAT)"
* #1211033 "Water or Ice Related Rescue (Incl Swift Water)"
* #1211035 "Wilderness Search and Rescue"

// dConfiguration.13 — EMD Provided to EMS Agency Service Area
* #1213001 "No"
* #1213003 "Yes, 100% of the EMS Agency's Service Area"
* #1213005 "Yes, Less than 100% of the EMS Agency's Service Area"

// dConfiguration.15 — Patient Monitoring Capability(ies)
* #1215001 "Capnography-Numeric"
* #1215003 "Capnography-Waveform"
* #1215005 "ECG-12 Lead or Greater"
* #1215007 "ECG-Less than 12 Lead (Cardiac Monitor)"
* #1215009 "Oximetry-Carbon Monoxide"
* #1215011 "Oximetry-Oxygen"
* #1215013 "Pressure Measurement-Invasive (Arterial, CVP, Swan, etc.)"
* #1215015 "Pressure Measurement-Non-Invasive (Blood Pressure, etc.)"
* #1215017 "Ventilator-Transport"
* #1215019 "Vital Sign Monitoring"

// dLocation.01 — EMS Location Type
* #1301001 "EMS Agency Headquarters"
* #1301003 "EMS Staging Area"
* #1301005 "EMS Station"
* #1301007 "Other"
