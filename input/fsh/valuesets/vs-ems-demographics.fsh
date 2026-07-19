// ============================================================
// ValueSets: EMS DEM Demographics (dContact/dConfiguration/dLocation)
// NEMSIS 3.5.1.251001CP2
// ============================================================

// dContact.01
ValueSet: EMSAgencyContactTypeVS
Id: vs-ems-agency-contact-type
Title: "EMS AgencyContactType VS"
Description: "The role/type of the agency contact person (dContact.01)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-contact-type"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.146"
* $nemsis-dem#1101001 "Administrative Assistant"
* $nemsis-dem#1101003 "EMS Agency Director/Chief/Lead Administrator/CEO"
* $nemsis-dem#1101005 "EMS Assistant Agency Director/Chief/Administrator/CEO"
* $nemsis-dem#1101007 "EMS Assistant Medical Director"
* $nemsis-dem#1101009 "EMS IT/Data Specialist"
* $nemsis-dem#1101011 "EMS Medical Director"
* $nemsis-dem#1101013 "EMS Quality/Performance Improvement Specialist"
* $nemsis-dem#1101015 "EMS Training/Education Specialist"
* $nemsis-dem#1101017 "Other"

// dContact.13
ValueSet: EMSMedicalDirectorDegreeVS
Id: vs-ems-medical-director-degree
Title: "EMS MedicalDirectorDegree VS"
Description: "The agency medical director degree (dContact.13)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medical-director-degree"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.147"
* $nemsis-dem#1113001 "Doctor of Medicine"
* $nemsis-dem#1113003 "Doctor of Osteopathy"

// dContact.14
ValueSet: EMSMedicalDirectorBoardCertVS
Id: vs-ems-medical-director-board-cert
Title: "EMS MedicalDirectorBoardCert VS"
Description: "The agency medical director board certification type (dContact.14)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medical-director-board-cert"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.148"
* $nemsis-dem#1114001 "Allergy and Immunology"
* $nemsis-dem#1114003 "Anesthesiology"
* $nemsis-dem#1114005 "Colon and Rectal Surgery"
* $nemsis-dem#1114007 "Dermatology"
* $nemsis-dem#1114009 "Emergency Medicine"
* $nemsis-dem#1114011 "Family Medicine"
* $nemsis-dem#1114013 "Internal Medicine"
* $nemsis-dem#1114015 "Neurological Surgery"
* $nemsis-dem#1114017 "Neurology"
* $nemsis-dem#1114019 "None (Not Board Certified)"
* $nemsis-dem#1114021 "Obstetrics and Gynecology"
* $nemsis-dem#1114023 "Ophthalmology"
* $nemsis-dem#1114025 "Orthopedic Surgery"
* $nemsis-dem#1114027 "Otolaryngology"
* $nemsis-dem#1114029 "Pediatrics"
* $nemsis-dem#1114031 "Physical Medicine and Rehabilitation"
* $nemsis-dem#1114033 "Plastic Surgery"
* $nemsis-dem#1114035 "Psychiatry"
* $nemsis-dem#1114037 "Surgery"
* $nemsis-dem#1114039 "Thoracic Surgery"
* $nemsis-dem#1114041 "Urology"
* $nemsis-dem#1114043 "Vascular Surgery"

// dContact.15
ValueSet: EMSDirectorCompensationVS
Id: vs-ems-director-compensation
Title: "EMS DirectorCompensation VS"
Description: "Whether the medical director is compensated (dContact.15)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-director-compensation"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.149"
* $nemsis-dem#1115001 "Compensated"
* $nemsis-dem#1115003 "Non-Compensated"

// dConfiguration.11
ValueSet: EMSSpecialtyServiceCapabilityVS
Id: vs-ems-specialty-service-capability
Title: "EMS SpecialtyServiceCapability VS"
Description: "EMS agency specialty service capabilities (dConfiguration.11)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-specialty-service-capability"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.150"
* $nemsis-dem#1211001 "Air Rescue"
* $nemsis-dem#1211003 "CBRNE"
* $nemsis-dem#1211005 "Community Health Medicine"
* $nemsis-dem#1211007 "Disaster Medical Assistance Team (DMAT)"
* $nemsis-dem#1211009 "Disaster Mortuary (DMORT)"
* $nemsis-dem#1211011 "Dive Rescue"
* $nemsis-dem#1211013 "Farm Rescue"
* $nemsis-dem#1211015 "High Angle Rescue"
* $nemsis-dem#1211017 "Machinery Disentanglement"
* $nemsis-dem#1211019 "None"
* $nemsis-dem#1211021 "Ski / Snow Rescue"
* $nemsis-dem#1211023 "Tactical EMS"
* $nemsis-dem#1211025 "Trench / Confined Space Rescue"
* $nemsis-dem#1211027 "Urban Search and Rescue (USAR)"
* $nemsis-dem#1211029 "Vehicle Extrication"
* $nemsis-dem#1211031 "Veterinary Medical Assistance Team (VMAT)"
* $nemsis-dem#1211033 "Water or Ice Related Rescue (Incl Swift Water)"
* $nemsis-dem#1211035 "Wilderness Search and Rescue"

// dConfiguration.13
ValueSet: EMSEMDProvidedVS
Id: vs-ems-emd-provided
Title: "EMS EMDProvided VS"
Description: "Whether EMD is provided to the agency service area (dConfiguration.13)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-emd-provided"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.151"
* $nemsis-dem#1213001 "No"
* $nemsis-dem#1213003 "Yes, 100% of the EMS Agency's Service Area"
* $nemsis-dem#1213005 "Yes, Less than 100% of the EMS Agency's Service Area"

// dConfiguration.15
ValueSet: EMSMonitoringCapabilityVS
Id: vs-ems-monitoring-capability
Title: "EMS MonitoringCapability VS"
Description: "Patient monitoring capabilities of the agency (dConfiguration.15)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-monitoring-capability"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.152"
* $nemsis-dem#1215001 "Capnography-Numeric"
* $nemsis-dem#1215003 "Capnography-Waveform"
* $nemsis-dem#1215005 "ECG-12 Lead or Greater"
* $nemsis-dem#1215007 "ECG-Less than 12 Lead (Cardiac Monitor)"
* $nemsis-dem#1215009 "Oximetry-Carbon Monoxide"
* $nemsis-dem#1215011 "Oximetry-Oxygen"
* $nemsis-dem#1215013 "Pressure Measurement-Invasive (Arterial, CVP, Swan, etc.)"
* $nemsis-dem#1215015 "Pressure Measurement-Non-Invasive (Blood Pressure, etc.)"
* $nemsis-dem#1215017 "Ventilator-Transport"
* $nemsis-dem#1215019 "Vital Sign Monitoring"

// dLocation.01
ValueSet: EMSAgencyLocationTypeVS
Id: vs-ems-agency-location-type
Title: "EMS AgencyLocationType VS"
Description: "The type of EMS agency location/station (dLocation.01)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-location-type"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.153"
* $nemsis-dem#1301001 "EMS Agency Headquarters"
* $nemsis-dem#1301003 "EMS Staging Area"
* $nemsis-dem#1301005 "EMS Station"
* $nemsis-dem#1301007 "Other"
