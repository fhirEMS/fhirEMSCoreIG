# NEMSIS General Codes - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS General Codes**

## CodeSystem: NEMSIS General Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISCodes |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.3 | |

 
General NEMSIS enumeration codes for sections without a dedicated CodeSystem. Currently covers eHistory (eHistory.01 - Barriers to Patient Care). NEMSIS 3.5.1.251001CP2. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSAgencyLevelOfServiceVS](ValueSet-vs-ems-agency-level-of-service.md)
* [EMSAgencyOrgStatusVS](ValueSet-vs-ems-agency-org-status.md)
* [EMSAgencyOrgTypeVS](ValueSet-vs-ems-agency-org-type.md)
* [EMSAgencyServiceTypeVS](ValueSet-vs-ems-agency-service-type.md)
* [EMSBarrierToPatientCareVS](ValueSet-vs-ems-barrier-to-patient-care.md)
* [EMSCrewRoleVS](ValueSet-vs-ems-crew-role.md)
* [EMSExternalReportTypeVS](ValueSet-vs-ems-external-report-type.md)
* [EMSInitialAcuityVS](ValueSet-vs-ems-initial-acuity.md)
* [EMSMCITriageClassVS](ValueSet-vs-ems-mci-triage-class.md)
* [EMSSituationOrganSystemVS](ValueSet-vs-ems-situation-organ-system.md)
* [EMSTransferReasonVS](ValueSet-vs-ems-transfer-reason.md)
* [EMSVehicleTypeVS](ValueSet-vs-ems-vehicle-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-codes",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.3"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISCodes",
  "title" : "NEMSIS General Codes",
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
  "description" : "General NEMSIS enumeration codes for sections without a dedicated CodeSystem. Currently covers eHistory (eHistory.01 - Barriers to Patient Care). NEMSIS 3.5.1.251001CP2.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 126,
  "concept" : [{
    "code" : "section-eResponse",
    "display" : "EMS Response"
  },
  {
    "code" : "section-eTimes",
    "display" : "EMS Times"
  },
  {
    "code" : "section-eScene",
    "display" : "EMS Scene"
  },
  {
    "code" : "section-eSituation",
    "display" : "EMS Patient Situation"
  },
  {
    "code" : "section-eAirway",
    "display" : "EMS Airway Management"
  },
  {
    "code" : "section-eArrest",
    "display" : "EMS Cardiac Arrest"
  },
  {
    "code" : "section-eExam",
    "display" : "EMS Physical Exam"
  },
  {
    "code" : "section-eLabs",
    "display" : "EMS Labs"
  },
  {
    "code" : "section-eCrew",
    "display" : "EMS Crew"
  },
  {
    "code" : "9920001",
    "display" : "911 Response (Scene) with Transport Capability"
  },
  {
    "code" : "9920003",
    "display" : "911 Response (Scene) without Transport Capability"
  },
  {
    "code" : "9920005",
    "display" : "Air Medical"
  },
  {
    "code" : "9920007",
    "display" : "ALS Intercept"
  },
  {
    "code" : "9920011",
    "display" : "Hazmat"
  },
  {
    "code" : "9920013",
    "display" : "Medical Transport (Convalescent, Interfacility Transfer Hospital and Nursing Home)"
  },
  {
    "code" : "9920015",
    "display" : "Rescue"
  },
  {
    "code" : "9920017",
    "display" : "Community Paramedicine"
  },
  {
    "code" : "9920019",
    "display" : "Critical Care (Ground)"
  },
  {
    "code" : "9917001",
    "display" : "Advanced Emergency Medical Technician (AEMT)"
  },
  {
    "code" : "9917002",
    "display" : "Emergency Medical Technician - Intermediate"
  },
  {
    "code" : "9917003",
    "display" : "Emergency Medical Responder (EMR)"
  },
  {
    "code" : "9917005",
    "display" : "Emergency Medical Technician (EMT)"
  },
  {
    "code" : "9917007",
    "display" : "Paramedic"
  },
  {
    "code" : "9917019",
    "display" : "Physician"
  },
  {
    "code" : "9917021",
    "display" : "Critical Care Paramedic"
  },
  {
    "code" : "9917023",
    "display" : "Community Paramedicine"
  },
  {
    "code" : "9917025",
    "display" : "Nurse Practitioner"
  },
  {
    "code" : "9917027",
    "display" : "Physician Assistant"
  },
  {
    "code" : "9917029",
    "display" : "Licensed Practical Nurse (LPN)"
  },
  {
    "code" : "9917031",
    "display" : "Registered Nurse"
  },
  {
    "code" : "1016001",
    "display" : "Mixed"
  },
  {
    "code" : "1016003",
    "display" : "Non-Volunteer"
  },
  {
    "code" : "1016005",
    "display" : "Volunteer"
  },
  {
    "code" : "9912001",
    "display" : "Fire Department"
  },
  {
    "code" : "9912003",
    "display" : "Governmental, Non-Fire"
  },
  {
    "code" : "9912005",
    "display" : "Hospital"
  },
  {
    "code" : "9912007",
    "display" : "Private, Nonhospital"
  },
  {
    "code" : "9912009",
    "display" : "Tribal"
  },
  {
    "code" : "2403001",
    "display" : "Driver/Pilot-Response"
  },
  {
    "code" : "2403003",
    "display" : "Driver/Pilot-Transport"
  },
  {
    "code" : "2403005",
    "display" : "Other"
  },
  {
    "code" : "2403007",
    "display" : "Other Patient Caregiver-At Scene"
  },
  {
    "code" : "2403009",
    "display" : "Other Patient Caregiver-Transport"
  },
  {
    "code" : "2403011",
    "display" : "Primary Patient Caregiver-At Scene"
  },
  {
    "code" : "2403013",
    "display" : "Primary Patient Caregiver-Transport"
  },
  {
    "code" : "2708001",
    "display" : "Red - Immediate"
  },
  {
    "code" : "2708003",
    "display" : "Yellow - Delayed"
  },
  {
    "code" : "2708005",
    "display" : "Green - Minimal (Minor)"
  },
  {
    "code" : "2708007",
    "display" : "Gray - Expectant"
  },
  {
    "code" : "2708009",
    "display" : "Black - Deceased"
  },
  {
    "code" : "2808001",
    "display" : "Behavioral/Psychiatric"
  },
  {
    "code" : "2808003",
    "display" : "Cardiovascular"
  },
  {
    "code" : "2808005",
    "display" : "CNS/Neuro"
  },
  {
    "code" : "2808007",
    "display" : "Endocrine/Metabolic"
  },
  {
    "code" : "2808009",
    "display" : "GI"
  },
  {
    "code" : "2808011",
    "display" : "Global/General"
  },
  {
    "code" : "2808013",
    "display" : "Lymphatic/Immune"
  },
  {
    "code" : "2808015",
    "display" : "Musculoskeletal/Skin"
  },
  {
    "code" : "2808017",
    "display" : "Reproductive"
  },
  {
    "code" : "2808019",
    "display" : "Pulmonary"
  },
  {
    "code" : "2808021",
    "display" : "Renal"
  },
  {
    "code" : "2813001",
    "display" : "Critical (Red)"
  },
  {
    "code" : "2813003",
    "display" : "Emergent (Yellow)"
  },
  {
    "code" : "2813005",
    "display" : "Lower Acuity (Green)"
  },
  {
    "code" : "2813007",
    "display" : "Dead without Resuscitation Efforts (Black)"
  },
  {
    "code" : "2813009",
    "display" : "Non-Acute/Routine"
  },
  {
    "code" : "2820001",
    "display" : "Cardiac Specialty"
  },
  {
    "code" : "2820003",
    "display" : "Convenience Transfer (Patient Request)"
  },
  {
    "code" : "2820005",
    "display" : "Diagnostic Testing"
  },
  {
    "code" : "2820007",
    "display" : "Dialysis"
  },
  {
    "code" : "2820009",
    "display" : "Drug and/or Alcohol Rehabilitation Care"
  },
  {
    "code" : "2820011",
    "display" : "Extended Care"
  },
  {
    "code" : "2820013",
    "display" : "Maternal/Neonatal"
  },
  {
    "code" : "2820015",
    "display" : "Medical Specialty Care (Other, Not Listed)"
  },
  {
    "code" : "2820017",
    "display" : "Neurological Specialty Care"
  },
  {
    "code" : "2820019",
    "display" : "Palliative/Hospice Care (Home or Facility)"
  },
  {
    "code" : "2820021",
    "display" : "Pediatric Specialty Care"
  },
  {
    "code" : "2820023",
    "display" : "Psychiatric/Behavioral Care"
  },
  {
    "code" : "2820025",
    "display" : "Physical Rehabilitation Care"
  },
  {
    "code" : "2820027",
    "display" : "Return to Home/Residence"
  },
  {
    "code" : "2820029",
    "display" : "Surgical Specialty Care (Other, Not Listed)"
  },
  {
    "code" : "2820031",
    "display" : "Trauma/Orthopedic Specialty Care"
  },
  {
    "code" : "3101001",
    "display" : "Cultural, Custom, Religious"
  },
  {
    "code" : "3101003",
    "display" : "Developmentally Impaired"
  },
  {
    "code" : "3101005",
    "display" : "Hearing Impaired"
  },
  {
    "code" : "3101007",
    "display" : "Language"
  },
  {
    "code" : "3101009",
    "display" : "None Noted"
  },
  {
    "code" : "3101011",
    "display" : "Obesity"
  },
  {
    "code" : "3101013",
    "display" : "Physical Barrier (Unable to Access Patient)"
  },
  {
    "code" : "3101015",
    "display" : "Physically Impaired"
  },
  {
    "code" : "3101017",
    "display" : "Physically Restrained"
  },
  {
    "code" : "3101019",
    "display" : "Psychologically Impaired"
  },
  {
    "code" : "3101021",
    "display" : "Sight Impaired"
  },
  {
    "code" : "3101023",
    "display" : "Speech Impaired"
  },
  {
    "code" : "3101025",
    "display" : "Unattended or Unsupervised (including minors)"
  },
  {
    "code" : "3101027",
    "display" : "Unconscious"
  },
  {
    "code" : "3101029",
    "display" : "Uncooperative"
  },
  {
    "code" : "3101031",
    "display" : "State of Emotional Distress"
  },
  {
    "code" : "3101033",
    "display" : "Alcohol Use, Suspected"
  },
  {
    "code" : "3101035",
    "display" : "Drug Use, Suspected"
  },
  {
    "code" : "4303001",
    "display" : "Disaster Tag"
  },
  {
    "code" : "4303003",
    "display" : "Fire Incident Report"
  },
  {
    "code" : "4303005",
    "display" : "Hospital-Receiving"
  },
  {
    "code" : "4303007",
    "display" : "Hospital-Transferring"
  },
  {
    "code" : "4303009",
    "display" : "Law Enforcement Report"
  },
  {
    "code" : "4303011",
    "display" : "Other"
  },
  {
    "code" : "4303013",
    "display" : "Other Registry"
  },
  {
    "code" : "4303015",
    "display" : "Other Report"
  },
  {
    "code" : "4303017",
    "display" : "Patient ID"
  },
  {
    "code" : "4303019",
    "display" : "Prior EMS Patient Care Report"
  },
  {
    "code" : "4303021",
    "display" : "STEMI Registry"
  },
  {
    "code" : "4303023",
    "display" : "Stroke Registry"
  },
  {
    "code" : "4303025",
    "display" : "Trauma Registry"
  },
  {
    "code" : "1404001",
    "display" : "Ambulance"
  },
  {
    "code" : "1404003",
    "display" : "ATV"
  },
  {
    "code" : "1404005",
    "display" : "Bicycle"
  },
  {
    "code" : "1404007",
    "display" : "Fire Apparatus"
  },
  {
    "code" : "1404009",
    "display" : "Fixed Wing"
  },
  {
    "code" : "1404011",
    "display" : "Motorcycle"
  },
  {
    "code" : "1404013",
    "display" : "Other"
  },
  {
    "code" : "1404015",
    "display" : "Personal Vehicle"
  },
  {
    "code" : "1404017",
    "display" : "Quick Response Vehicle (Non-Transport Vehicle other than Fire Apparatus)"
  },
  {
    "code" : "1404019",
    "display" : "Rescue"
  },
  {
    "code" : "1404021",
    "display" : "Rotor Craft"
  },
  {
    "code" : "1404023",
    "display" : "Snow Vehicle"
  },
  {
    "code" : "1404025",
    "display" : "Watercraft"
  }]
}

```
