// ============================================================
// ValueSets: EMS Other (eOther)
// NEMSIS 3.5.1.251001CP2
// ============================================================

// eOther.02
ValueSet: EMSRegistryCandidateVS
Id: vs-ems-registry-candidate
Title: "EMS RegistryCandidate VS"
Description: "Potential system of care, specialty, or registry candidacy for the patient (eOther.02)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-registry-candidate"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.137"
* $nemsis-other#4502001 "Airway"
* $nemsis-other#4502003 "Burn"
* $nemsis-other#4502005 "Cardiac/MI"
* $nemsis-other#4502007 "CVA/Stroke"
* $nemsis-other#4502009 "Drowning"
* $nemsis-other#4502011 "Other"
* $nemsis-other#4502013 "Spinal Cord Injury"
* $nemsis-other#4502015 "STEMI/Acute Cardiac"
* $nemsis-other#4502017 "Trauma"
* $nemsis-other#4502019 "Traumatic Brain Injury"

// eOther.03
ValueSet: EMSCrewPPEVS
Id: vs-ems-crew-ppe
Title: "EMS CrewPPE VS"
Description: "Personal protective equipment used by the EMS crew member (eOther.03)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-crew-ppe"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.138"
* $nemsis-other#4503001 "Eye Protection"
* $nemsis-other#4503003 "Gloves"
* $nemsis-other#4503005 "Helmet"
* $nemsis-other#4503007 "Level A Suit"
* $nemsis-other#4503009 "Level B Suit"
* $nemsis-other#4503011 "Level C Suit"
* $nemsis-other#4503013 "Level D Suit (Turn out gear)"
* $nemsis-other#4503015 "Mask-N95"
* $nemsis-other#4503017 "Mask-Surgical (Non-Fitted)"
* $nemsis-other#4503019 "Other"
* $nemsis-other#4503021 "PAPR"
* $nemsis-other#4503023 "Reflective Vest"

// eOther.06
ValueSet: EMSWorkInjuryExposureVS
Id: vs-ems-work-injury-exposure
Title: "EMS WorkInjuryExposure VS"
Description: "Type of crew work-related injury, death, or suspected exposure (eOther.06)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-work-injury-exposure"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.139"
* $nemsis-other#4506001 "Death-Cardiac Arrest"
* $nemsis-other#4506003 "Death-Injury Related"
* $nemsis-other#4506005 "Death-Other"
* $nemsis-other#4506007 "Exposure-Airborne Respiratory/Biological/Aerosolized Secretions"
* $nemsis-other#4506009 "Exposure-Body Fluid Contact to Broken Skin"
* $nemsis-other#4506011 "Exposure-Body Fluid Contact with Eye"
* $nemsis-other#4506013 "Exposure-Body Fluid Contact with Intact Skin"
* $nemsis-other#4506015 "Exposure-Body Fluid Contact with Mucosal Surface"
* $nemsis-other#4506017 "Exposure-Needle Stick with Body Fluid Injection"
* $nemsis-other#4506019 "Exposure-Needle Stick without Body Fluid Injection"
* $nemsis-other#4506021 "Exposure-Toxin/Chemical/Hazmat"
* $nemsis-other#4506023 "Injury-Lifting/Back/Musculoskeletal"
* $nemsis-other#4506025 "Injury-Other"
* $nemsis-other#4506027 "None"
* $nemsis-other#4506029 "Other"
* $nemsis-other#4506031 "Violence-Offensive, Intimidating, or Hateful Language"
* $nemsis-other#4506033 "Violence-Physical Threat, or Threatening Behavior"
* $nemsis-other#4506035 "Violence-Physical Attack or Attempt to Attack"
* $nemsis-other#4506037 "Violence-Unwelcome Sexual Attention, Remarks, Jokes or Gestures"
* $nemsis-other#4506039 "Violence-Unwanted Touching of a Sexual Nature"
* $nemsis-other#4506041 "Struck by Vehicle Along Roadway"

// eOther.07
ValueSet: EMSDisasterTypeVS
Id: vs-ems-disaster-type
Title: "EMS DisasterType VS"
Description: "Natural, suspected, intentional, or unintentional disaster associated with the event (eOther.07)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-disaster-type"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.140"
* $nemsis-other#4507001 "Biologic Agent"
* $nemsis-other#4507003 "Building Failure"
* $nemsis-other#4507005 "Chemical Agent"
* $nemsis-other#4507007 "Explosive Device"
* $nemsis-other#4507009 "Fire"
* $nemsis-other#4507011 "Hostage Event"
* $nemsis-other#4507013 "Mass Gathering"
* $nemsis-other#4507015 "Mass Illness"
* $nemsis-other#4507017 "Nuclear Agent"
* $nemsis-other#4507019 "Radioactive Device"
* $nemsis-other#4507021 "Secondary Destructive Device"
* $nemsis-other#4507023 "Shooting/Sniper"
* $nemsis-other#4507025 "Vehicular"
* $nemsis-other#4507027 "Weather (Other)"
* $nemsis-other#4507029 "Earthquake"
* $nemsis-other#4507031 "Flood"
* $nemsis-other#4507033 "Land Slide"
* $nemsis-other#4507035 "Winter Storm"
* $nemsis-other#4507037 "Tornado"
* $nemsis-other#4507039 "Hurricane"

// eOther.09
ValueSet: EMSExternalDocumentTypeVS
Id: vs-ems-external-document-type
Title: "EMS ExternalDocumentType VS"
Description: "Type of external electronic document associated with the PCR (eOther.09)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-external-document-type"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.141"
* $nemsis-other#4509001 "Other Audio Recording"
* $nemsis-other#4509003 "Billing Information"
* $nemsis-other#4509005 "Diagnostic Image (CT, X-ray, US, etc.)"
* $nemsis-other#4509006 "DNR"
* $nemsis-other#4509008 "Living Will"
* $nemsis-other#4509009 "ECG/Lab Results"
* $nemsis-other#4509011 "Guardianship/Power of Attorney"
* $nemsis-other#4509013 "Other Healthcare Record"
* $nemsis-other#4509015 "Other"
* $nemsis-other#4509017 "Patient Identification"
* $nemsis-other#4509019 "Patient Refusal Sheet"
* $nemsis-other#4509021 "Other Picture/Graphic"
* $nemsis-other#4509025 "Other Video/Movie"
* $nemsis-other#4509027 "ePCR"

// eOther.12
ValueSet: EMSSignerTypeVS
Id: vs-ems-signer-type
Title: "EMS SignerType VS"
Description: "The type of person signing (eOther.12)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-signer-type"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.142"
* $nemsis-other#4512001 "EMS Crew Member (Other)"
* $nemsis-other#4512003 "EMS Primary Care Provider (for this event)"
* $nemsis-other#4512005 "Healthcare Provider"
* $nemsis-other#4512007 "Medical Director"
* $nemsis-other#4512009 "Non-Healthcare Provider"
* $nemsis-other#4512011 "Online Medical Control Healthcare Practitioner"
* $nemsis-other#4512013 "Other"
* $nemsis-other#4512015 "Patient"
* $nemsis-other#4512017 "Patient Representative"
* $nemsis-other#4512019 "Witness"

// eOther.13
ValueSet: EMSSignatureReasonVS
Id: vs-ems-signature-reason
Title: "EMS SignatureReason VS"
Description: "The reason a signature was obtained (eOther.13)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-signature-reason"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.143"
* $nemsis-other#4513001 "HIPAA acknowledgement/Release"
* $nemsis-other#4513003 "Permission to Treat"
* $nemsis-other#4513005 "Release for Billing"
* $nemsis-other#4513007 "Transfer of Patient Care"
* $nemsis-other#4513009 "Refusal of Care"
* $nemsis-other#4513011 "Controlled Substance, Administration"
* $nemsis-other#4513013 "Controlled Substance, Waste"
* $nemsis-other#4513015 "Airway Verification"
* $nemsis-other#4513017 "Patient Belongings (Receipt)"
* $nemsis-other#4513019 "Permission to Transport"
* $nemsis-other#4513021 "Refusal of Transport"
* $nemsis-other#4513023 "Other"

// eOther.14
ValueSet: EMSPatientRepresentativeVS
Id: vs-ems-patient-representative
Title: "EMS PatientRepresentative VS"
Description: "The relationship of the patient representative who signed (eOther.14)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-patient-representative"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.144"
* $nemsis-other#4514001 "Aunt"
* $nemsis-other#4514003 "Brother"
* $nemsis-other#4514005 "Daughter"
* $nemsis-other#4514007 "Discharge Planner"
* $nemsis-other#4514009 "Domestic Partner"
* $nemsis-other#4514011 "Father"
* $nemsis-other#4514013 "Friend"
* $nemsis-other#4514015 "Grandfather"
* $nemsis-other#4514017 "Grandmother"
* $nemsis-other#4514019 "Guardian"
* $nemsis-other#4514021 "Husband"
* $nemsis-other#4514023 "Law Enforcement"
* $nemsis-other#4514025 "MD/DO"
* $nemsis-other#4514027 "Mother"
* $nemsis-other#4514029 "Nurse (RN)"
* $nemsis-other#4514031 "Nurse Practitioner (NP)"
* $nemsis-other#4514033 "Other Care Provider (Home health, hospice, etc.)"
* $nemsis-other#4514035 "Other"
* $nemsis-other#4514037 "Physician's Assistant (PA)"
* $nemsis-other#4514039 "Power of Attorney"
* $nemsis-other#4514041 "Other Relative"
* $nemsis-other#4514043 "Self"
* $nemsis-other#4514045 "Sister"
* $nemsis-other#4514047 "Son"
* $nemsis-other#4514049 "Uncle"
* $nemsis-other#4514051 "Wife"

// eOther.15
ValueSet: EMSSignatureStatusVS
Id: vs-ems-signature-status
Title: "EMS SignatureStatus VS"
Description: "The status/disposition of the signature (eOther.15)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-signature-status"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.145"
* $nemsis-other#4515001 "Not Signed - Crew Called out to another call"
* $nemsis-other#4515003 "Not Signed - Deceased"
* $nemsis-other#4515005 "Not Signed - Due to Distress Level"
* $nemsis-other#4515007 "Not Signed - Equipment Failure"
* $nemsis-other#4515009 "Not Signed - In Law Enforcement Custody"
* $nemsis-other#4515011 "Not Signed - Language Barrier"
* $nemsis-other#4515013 "Not Signed - Mental Status/Impaired"
* $nemsis-other#4515015 "Not Signed - Minor/Child"
* $nemsis-other#4515017 "Not Signed - Physical Impairment of Extremities"
* $nemsis-other#4515019 "Not Signed - Refused"
* $nemsis-other#4515021 "Not Signed - Transferred Care/No Access to Obtain Signature"
* $nemsis-other#4515023 "Not Signed - Unconscious"
* $nemsis-other#4515025 "Not Signed -Visually Impaired"
* $nemsis-other#4515027 "Physical Signature/Paper Copy Obtained"
* $nemsis-other#4515031 "Signed"
* $nemsis-other#4515033 "Signed-Not Patient"
* $nemsis-other#4515035 "Not Signed-Illiterate (Unable to Read)"
* $nemsis-other#4515037 "Not Signed-Restrained"
* $nemsis-other#4515039 "Not Signed-Combative or Uncooperative"
