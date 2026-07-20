# NEMSIS eOther Code System - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS eOther Code System**

## CodeSystem: NEMSIS eOther Code System 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-other | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISOther |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.19 | |

 
Enumeration codes from the NEMSIS 3.5.1 eOther section covering registry candidacy, crew personal protective equipment, work-related injury/exposure types, disaster types, external document types, and signature metadata (signer type, reason, patient representative, status). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSCrewPPEVS](ValueSet-vs-ems-crew-ppe.md)
* [EMSDisasterTypeVS](ValueSet-vs-ems-disaster-type.md)
* [EMSExternalDocumentTypeVS](ValueSet-vs-ems-external-document-type.md)
* [EMSPatientRepresentativeVS](ValueSet-vs-ems-patient-representative.md)
* [EMSRegistryCandidateVS](ValueSet-vs-ems-registry-candidate.md)
* [EMSSignatureReasonVS](ValueSet-vs-ems-signature-reason.md)
* [EMSSignatureStatusVS](ValueSet-vs-ems-signature-status.md)
* [EMSSignerTypeVS](ValueSet-vs-ems-signer-type.md)
* [EMSWorkInjuryExposureVS](ValueSet-vs-ems-work-injury-exposure.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-other",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-other",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.19"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISOther",
  "title" : "NEMSIS eOther Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-19T20:45:43-04:00",
  "publisher" : "fhirEMSCore Research Project (AI-Generated — Unofficial)",
  "contact" : [{
    "name" : "fhirEMSCore Research Project (AI-Generated — Unofficial)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/fhirEMS/fhirEMSCoreIG"
    }]
  },
  {
    "name" : "fhirEMSCore Research Project",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/fhirEMS/fhirEMSCoreIG"
    }]
  }],
  "description" : "Enumeration codes from the NEMSIS 3.5.1 eOther section covering registry candidacy, crew personal protective equipment, work-related injury/exposure types, disaster types, external document types, and signature metadata (signer type, reason, patient representative, status).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 144,
  "concept" : [{
    "code" : "4502001",
    "display" : "Airway"
  },
  {
    "code" : "4502003",
    "display" : "Burn"
  },
  {
    "code" : "4502005",
    "display" : "Cardiac/MI"
  },
  {
    "code" : "4502007",
    "display" : "CVA/Stroke"
  },
  {
    "code" : "4502009",
    "display" : "Drowning"
  },
  {
    "code" : "4502011",
    "display" : "Other"
  },
  {
    "code" : "4502013",
    "display" : "Spinal Cord Injury"
  },
  {
    "code" : "4502015",
    "display" : "STEMI/Acute Cardiac"
  },
  {
    "code" : "4502017",
    "display" : "Trauma"
  },
  {
    "code" : "4502019",
    "display" : "Traumatic Brain Injury"
  },
  {
    "code" : "4503001",
    "display" : "Eye Protection"
  },
  {
    "code" : "4503003",
    "display" : "Gloves"
  },
  {
    "code" : "4503005",
    "display" : "Helmet"
  },
  {
    "code" : "4503007",
    "display" : "Level A Suit"
  },
  {
    "code" : "4503009",
    "display" : "Level B Suit"
  },
  {
    "code" : "4503011",
    "display" : "Level C Suit"
  },
  {
    "code" : "4503013",
    "display" : "Level D Suit (Turn out gear)"
  },
  {
    "code" : "4503015",
    "display" : "Mask-N95"
  },
  {
    "code" : "4503017",
    "display" : "Mask-Surgical (Non-Fitted)"
  },
  {
    "code" : "4503019",
    "display" : "Other"
  },
  {
    "code" : "4503021",
    "display" : "PAPR"
  },
  {
    "code" : "4503023",
    "display" : "Reflective Vest"
  },
  {
    "code" : "4506001",
    "display" : "Death-Cardiac Arrest"
  },
  {
    "code" : "4506003",
    "display" : "Death-Injury Related"
  },
  {
    "code" : "4506005",
    "display" : "Death-Other"
  },
  {
    "code" : "4506007",
    "display" : "Exposure-Airborne Respiratory/Biological/Aerosolized Secretions"
  },
  {
    "code" : "4506009",
    "display" : "Exposure-Body Fluid Contact to Broken Skin"
  },
  {
    "code" : "4506011",
    "display" : "Exposure-Body Fluid Contact with Eye"
  },
  {
    "code" : "4506013",
    "display" : "Exposure-Body Fluid Contact with Intact Skin"
  },
  {
    "code" : "4506015",
    "display" : "Exposure-Body Fluid Contact with Mucosal Surface"
  },
  {
    "code" : "4506017",
    "display" : "Exposure-Needle Stick with Body Fluid Injection"
  },
  {
    "code" : "4506019",
    "display" : "Exposure-Needle Stick without Body Fluid Injection"
  },
  {
    "code" : "4506021",
    "display" : "Exposure-Toxin/Chemical/Hazmat"
  },
  {
    "code" : "4506023",
    "display" : "Injury-Lifting/Back/Musculoskeletal"
  },
  {
    "code" : "4506025",
    "display" : "Injury-Other"
  },
  {
    "code" : "4506027",
    "display" : "None"
  },
  {
    "code" : "4506029",
    "display" : "Other"
  },
  {
    "code" : "4506031",
    "display" : "Violence-Offensive, Intimidating, or Hateful Language"
  },
  {
    "code" : "4506033",
    "display" : "Violence-Physical Threat, or Threatening Behavior"
  },
  {
    "code" : "4506035",
    "display" : "Violence-Physical Attack or Attempt to Attack"
  },
  {
    "code" : "4506037",
    "display" : "Violence-Unwelcome Sexual Attention, Remarks, Jokes or Gestures"
  },
  {
    "code" : "4506039",
    "display" : "Violence-Unwanted Touching of a Sexual Nature"
  },
  {
    "code" : "4506041",
    "display" : "Struck by Vehicle Along Roadway"
  },
  {
    "code" : "4507001",
    "display" : "Biologic Agent"
  },
  {
    "code" : "4507003",
    "display" : "Building Failure"
  },
  {
    "code" : "4507005",
    "display" : "Chemical Agent"
  },
  {
    "code" : "4507007",
    "display" : "Explosive Device"
  },
  {
    "code" : "4507009",
    "display" : "Fire"
  },
  {
    "code" : "4507011",
    "display" : "Hostage Event"
  },
  {
    "code" : "4507013",
    "display" : "Mass Gathering"
  },
  {
    "code" : "4507015",
    "display" : "Mass Illness"
  },
  {
    "code" : "4507017",
    "display" : "Nuclear Agent"
  },
  {
    "code" : "4507019",
    "display" : "Radioactive Device"
  },
  {
    "code" : "4507021",
    "display" : "Secondary Destructive Device"
  },
  {
    "code" : "4507023",
    "display" : "Shooting/Sniper"
  },
  {
    "code" : "4507025",
    "display" : "Vehicular"
  },
  {
    "code" : "4507027",
    "display" : "Weather (Other)"
  },
  {
    "code" : "4507029",
    "display" : "Earthquake"
  },
  {
    "code" : "4507031",
    "display" : "Flood"
  },
  {
    "code" : "4507033",
    "display" : "Land Slide"
  },
  {
    "code" : "4507035",
    "display" : "Winter Storm"
  },
  {
    "code" : "4507037",
    "display" : "Tornado"
  },
  {
    "code" : "4507039",
    "display" : "Hurricane"
  },
  {
    "code" : "4509001",
    "display" : "Other Audio Recording"
  },
  {
    "code" : "4509003",
    "display" : "Billing Information"
  },
  {
    "code" : "4509005",
    "display" : "Diagnostic Image (CT, X-ray, US, etc.)"
  },
  {
    "code" : "4509006",
    "display" : "DNR"
  },
  {
    "code" : "4509008",
    "display" : "Living Will"
  },
  {
    "code" : "4509009",
    "display" : "ECG/Lab Results"
  },
  {
    "code" : "4509011",
    "display" : "Guardianship/Power of Attorney"
  },
  {
    "code" : "4509013",
    "display" : "Other Healthcare Record"
  },
  {
    "code" : "4509015",
    "display" : "Other"
  },
  {
    "code" : "4509017",
    "display" : "Patient Identification"
  },
  {
    "code" : "4509019",
    "display" : "Patient Refusal Sheet"
  },
  {
    "code" : "4509021",
    "display" : "Other Picture/Graphic"
  },
  {
    "code" : "4509025",
    "display" : "Other Video/Movie"
  },
  {
    "code" : "4509027",
    "display" : "ePCR"
  },
  {
    "code" : "4512001",
    "display" : "EMS Crew Member (Other)"
  },
  {
    "code" : "4512003",
    "display" : "EMS Primary Care Provider (for this event)"
  },
  {
    "code" : "4512005",
    "display" : "Healthcare Provider"
  },
  {
    "code" : "4512007",
    "display" : "Medical Director"
  },
  {
    "code" : "4512009",
    "display" : "Non-Healthcare Provider"
  },
  {
    "code" : "4512011",
    "display" : "Online Medical Control Healthcare Practitioner"
  },
  {
    "code" : "4512013",
    "display" : "Other"
  },
  {
    "code" : "4512015",
    "display" : "Patient"
  },
  {
    "code" : "4512017",
    "display" : "Patient Representative"
  },
  {
    "code" : "4512019",
    "display" : "Witness"
  },
  {
    "code" : "4513001",
    "display" : "HIPAA acknowledgement/Release"
  },
  {
    "code" : "4513003",
    "display" : "Permission to Treat"
  },
  {
    "code" : "4513005",
    "display" : "Release for Billing"
  },
  {
    "code" : "4513007",
    "display" : "Transfer of Patient Care"
  },
  {
    "code" : "4513009",
    "display" : "Refusal of Care"
  },
  {
    "code" : "4513011",
    "display" : "Controlled Substance, Administration"
  },
  {
    "code" : "4513013",
    "display" : "Controlled Substance, Waste"
  },
  {
    "code" : "4513015",
    "display" : "Airway Verification"
  },
  {
    "code" : "4513017",
    "display" : "Patient Belongings (Receipt)"
  },
  {
    "code" : "4513019",
    "display" : "Permission to Transport"
  },
  {
    "code" : "4513021",
    "display" : "Refusal of Transport"
  },
  {
    "code" : "4513023",
    "display" : "Other"
  },
  {
    "code" : "4514001",
    "display" : "Aunt"
  },
  {
    "code" : "4514003",
    "display" : "Brother"
  },
  {
    "code" : "4514005",
    "display" : "Daughter"
  },
  {
    "code" : "4514007",
    "display" : "Discharge Planner"
  },
  {
    "code" : "4514009",
    "display" : "Domestic Partner"
  },
  {
    "code" : "4514011",
    "display" : "Father"
  },
  {
    "code" : "4514013",
    "display" : "Friend"
  },
  {
    "code" : "4514015",
    "display" : "Grandfather"
  },
  {
    "code" : "4514017",
    "display" : "Grandmother"
  },
  {
    "code" : "4514019",
    "display" : "Guardian"
  },
  {
    "code" : "4514021",
    "display" : "Husband"
  },
  {
    "code" : "4514023",
    "display" : "Law Enforcement"
  },
  {
    "code" : "4514025",
    "display" : "MD/DO"
  },
  {
    "code" : "4514027",
    "display" : "Mother"
  },
  {
    "code" : "4514029",
    "display" : "Nurse (RN)"
  },
  {
    "code" : "4514031",
    "display" : "Nurse Practitioner (NP)"
  },
  {
    "code" : "4514033",
    "display" : "Other Care Provider (Home health, hospice, etc.)"
  },
  {
    "code" : "4514035",
    "display" : "Other"
  },
  {
    "code" : "4514037",
    "display" : "Physician's Assistant (PA)"
  },
  {
    "code" : "4514039",
    "display" : "Power of Attorney"
  },
  {
    "code" : "4514041",
    "display" : "Other Relative"
  },
  {
    "code" : "4514043",
    "display" : "Self"
  },
  {
    "code" : "4514045",
    "display" : "Sister"
  },
  {
    "code" : "4514047",
    "display" : "Son"
  },
  {
    "code" : "4514049",
    "display" : "Uncle"
  },
  {
    "code" : "4514051",
    "display" : "Wife"
  },
  {
    "code" : "4515001",
    "display" : "Not Signed - Crew Called out to another call"
  },
  {
    "code" : "4515003",
    "display" : "Not Signed - Deceased"
  },
  {
    "code" : "4515005",
    "display" : "Not Signed - Due to Distress Level"
  },
  {
    "code" : "4515007",
    "display" : "Not Signed - Equipment Failure"
  },
  {
    "code" : "4515009",
    "display" : "Not Signed - In Law Enforcement Custody"
  },
  {
    "code" : "4515011",
    "display" : "Not Signed - Language Barrier"
  },
  {
    "code" : "4515013",
    "display" : "Not Signed - Mental Status/Impaired"
  },
  {
    "code" : "4515015",
    "display" : "Not Signed - Minor/Child"
  },
  {
    "code" : "4515017",
    "display" : "Not Signed - Physical Impairment of Extremities"
  },
  {
    "code" : "4515019",
    "display" : "Not Signed - Refused"
  },
  {
    "code" : "4515021",
    "display" : "Not Signed - Transferred Care/No Access to Obtain Signature"
  },
  {
    "code" : "4515023",
    "display" : "Not Signed - Unconscious"
  },
  {
    "code" : "4515025",
    "display" : "Not Signed -Visually Impaired"
  },
  {
    "code" : "4515027",
    "display" : "Physical Signature/Paper Copy Obtained"
  },
  {
    "code" : "4515031",
    "display" : "Signed"
  },
  {
    "code" : "4515033",
    "display" : "Signed-Not Patient"
  },
  {
    "code" : "4515035",
    "display" : "Not Signed-Illiterate (Unable to Read)"
  },
  {
    "code" : "4515037",
    "display" : "Not Signed-Restrained"
  },
  {
    "code" : "4515039",
    "display" : "Not Signed-Combative or Uncooperative"
  }]
}

```
