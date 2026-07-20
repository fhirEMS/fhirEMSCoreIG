# NEMSIS Encounter Codes - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS Encounter Codes**

## CodeSystem: NEMSIS Encounter Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISEncounter |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.4 | |

 
Enumeration codes from the NEMSIS eResponse, eDispatch, and eDisposition sections (NEMSIS 3.5.1.251001CP2). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSAdditionalResponseModeVS](ValueSet-vs-ems-additional-response-mode.md)
* [EMSAdditionalTransportModeVS](ValueSet-vs-ems-additional-transport-mode.md)
* [EMSCrewDispositionVS](ValueSet-vs-ems-crew-disposition.md)
* [EMSDestinationReasonVS](ValueSet-vs-ems-destination-reason.md)
* [EMSDestinationTypeVS](ValueSet-vs-ems-destination-type.md)
* [EMSDispatchDelayVS](ValueSet-vs-ems-dispatch-delay.md)
* [EMSDispatchPriorityVS](ValueSet-vs-ems-dispatch-priority.md)
* [EMSDispositionInstructionsVS](ValueSet-vs-ems-disposition-instructions.md)
* [EMSEMDPerformedVS](ValueSet-vs-ems-emd-performed.md)
* [EMSHospitalCapabilityVS](ValueSet-vs-ems-hospital-capability.md)
* [EMSHospitalDestinationVS](ValueSet-vs-ems-hospital-destination.md)
* [EMSLevelOfCareVS](ValueSet-vs-ems-level-of-care.md)
* [EMSPatientAcuityVS](ValueSet-vs-ems-patient-acuity.md)
* [EMSPatientEvalCareVS](ValueSet-vs-ems-patient-eval-care.md)
* [EMSPreArrivalAlertVS](ValueSet-vs-ems-pre-arrival-alert.md)
* [EMSReasonForRefusalVS](ValueSet-vs-ems-reason-for-refusal.md)
* [EMSResponseDelayVS](ValueSet-vs-ems-response-delay.md)
* [EMSResponseModeVS](ValueSet-vs-ems-response-mode.md)
* [EMSResponseTypeVS](ValueSet-vs-ems-response-type.md)
* [EMSSceneDelayVS](ValueSet-vs-ems-scene-delay.md)
* [EMSTransportDelayVS](ValueSet-vs-ems-transport-delay.md)
* [EMSTransportDispositionVS](ValueSet-vs-ems-transport-disposition.md)
* [EMSTransportMethodVS](ValueSet-vs-ems-transport-method.md)
* [EMSTransportModeVS](ValueSet-vs-ems-transport-mode.md)
* [EMSTurnAroundDelayVS](ValueSet-vs-ems-turn-around-delay.md)
* [EMSUnitDispositionVS](ValueSet-vs-ems-unit-disposition.md)
* [EMSUnitTypeVS](ValueSet-vs-ems-unit-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-encounter",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-encounter",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.4"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISEncounter",
  "title" : "NEMSIS Encounter Codes",
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
  "description" : "Enumeration codes from the NEMSIS eResponse, eDispatch, and eDisposition sections (NEMSIS 3.5.1.251001CP2).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 306,
  "concept" : [{
    "code" : "2205001",
    "display" : "Emergency Response (Primary Response Area)"
  },
  {
    "code" : "2205003",
    "display" : "Emergency Response (Intercept)"
  },
  {
    "code" : "2205009",
    "display" : "Emergency Response (Mutual Aid)"
  },
  {
    "code" : "2205005",
    "display" : "Hospital-to-Hospital Transfer"
  },
  {
    "code" : "2205015",
    "display" : "Hospital to Non-Hospital Facility Transfer"
  },
  {
    "code" : "2205017",
    "display" : "Non-Hospital Facility to Non-Hospital Facility Transfer"
  },
  {
    "code" : "2205019",
    "display" : "Non-Hospital Facility to Hospital Transfer"
  },
  {
    "code" : "2205007",
    "display" : "Other Routine Medical Transport"
  },
  {
    "code" : "2205011",
    "display" : "Public Assistance"
  },
  {
    "code" : "2205013",
    "display" : "Standby"
  },
  {
    "code" : "2205021",
    "display" : "Support Services"
  },
  {
    "code" : "2205023",
    "display" : "Non-Patient Care Rescue/Extrication"
  },
  {
    "code" : "2205025",
    "display" : "Crew Transport Only"
  },
  {
    "code" : "2205027",
    "display" : "Transport of Organs or Body Parts"
  },
  {
    "code" : "2205029",
    "display" : "Mortuary Services"
  },
  {
    "code" : "2205031",
    "display" : "Mobile Integrated Health Care Encounter"
  },
  {
    "code" : "2205033",
    "display" : "Evaluation for Special Referral/Intake Programs"
  },
  {
    "code" : "2205035",
    "display" : "Administrative Operations"
  },
  {
    "code" : "2207011",
    "display" : "Air Transport-Helicopter"
  },
  {
    "code" : "2207013",
    "display" : "Air Transport-Fixed Wing"
  },
  {
    "code" : "2207015",
    "display" : "Ground Transport (ALS Equipped)"
  },
  {
    "code" : "2207017",
    "display" : "Ground Transport (BLS Equipped)"
  },
  {
    "code" : "2207019",
    "display" : "Ground Transport (Critical Care Equipped)"
  },
  {
    "code" : "2207021",
    "display" : "Non-Transport-Medical Treatment (ALS Equipped)"
  },
  {
    "code" : "2207023",
    "display" : "Non-Transport-Medical Treatment (BLS Equipped)"
  },
  {
    "code" : "2207025",
    "display" : "Wheel Chair Van/Ambulette"
  },
  {
    "code" : "2207027",
    "display" : "Non-Transport-No Medical Equipment"
  },
  {
    "code" : "2208001",
    "display" : "Caller (Uncooperative)"
  },
  {
    "code" : "2208003",
    "display" : "Diversion/Failure (of previous unit)"
  },
  {
    "code" : "2208005",
    "display" : "High Call Volume"
  },
  {
    "code" : "2208007",
    "display" : "Language Barrier"
  },
  {
    "code" : "2208009",
    "display" : "Incomplete Address Information Provided"
  },
  {
    "code" : "2208011",
    "display" : "No EMS Vehicles (Units) Available"
  },
  {
    "code" : "2208013",
    "display" : "None/No Delay"
  },
  {
    "code" : "2208015",
    "display" : "Other"
  },
  {
    "code" : "2208017",
    "display" : "Technical Failure (Computer, Phone etc.)"
  },
  {
    "code" : "2208019",
    "display" : "Communication Specialist-Assignment Error"
  },
  {
    "code" : "2208021",
    "display" : "No Receiving MD, Bed, Hospital"
  },
  {
    "code" : "2208023",
    "display" : "Specialty Team Delay"
  },
  {
    "code" : "2209001",
    "display" : "Crowd"
  },
  {
    "code" : "2209003",
    "display" : "Directions/Unable to Locate"
  },
  {
    "code" : "2209005",
    "display" : "Distance"
  },
  {
    "code" : "2209007",
    "display" : "Diversion (Different Incident)"
  },
  {
    "code" : "2209009",
    "display" : "HazMat"
  },
  {
    "code" : "2209011",
    "display" : "None/No Delay"
  },
  {
    "code" : "2209013",
    "display" : "Other"
  },
  {
    "code" : "2209015",
    "display" : "Rendezvous Transport Unavailable"
  },
  {
    "code" : "2209017",
    "display" : "Route Obstruction (e.g., Train)"
  },
  {
    "code" : "2209019",
    "display" : "Scene Safety (Not Secure for EMS)"
  },
  {
    "code" : "2209021",
    "display" : "Staff Delay"
  },
  {
    "code" : "2209023",
    "display" : "Traffic"
  },
  {
    "code" : "2209025",
    "display" : "Vehicle Crash Involving this Unit"
  },
  {
    "code" : "2209027",
    "display" : "Vehicle Failure of this Unit"
  },
  {
    "code" : "2209029",
    "display" : "Weather"
  },
  {
    "code" : "2209031",
    "display" : "Mechanical Issue-Unit, Equipment, etc."
  },
  {
    "code" : "2209033",
    "display" : "Flight Planning"
  },
  {
    "code" : "2209035",
    "display" : "Out of Service Area Response"
  },
  {
    "code" : "2210001",
    "display" : "Awaiting Air Unit"
  },
  {
    "code" : "2210003",
    "display" : "Awaiting Ground Unit"
  },
  {
    "code" : "2210005",
    "display" : "Crowd"
  },
  {
    "code" : "2210007",
    "display" : "Directions/Unable to Locate"
  },
  {
    "code" : "2210009",
    "display" : "Distance"
  },
  {
    "code" : "2210011",
    "display" : "Extrication"
  },
  {
    "code" : "2210013",
    "display" : "HazMat"
  },
  {
    "code" : "2210015",
    "display" : "Language Barrier"
  },
  {
    "code" : "2210017",
    "display" : "None/No Delay"
  },
  {
    "code" : "2210019",
    "display" : "Other"
  },
  {
    "code" : "2210021",
    "display" : "Patient Access"
  },
  {
    "code" : "2210023",
    "display" : "Safety-Crew/Staging"
  },
  {
    "code" : "2210025",
    "display" : "Safety-Patient"
  },
  {
    "code" : "2210027",
    "display" : "Staff Delay"
  },
  {
    "code" : "2210029",
    "display" : "Traffic"
  },
  {
    "code" : "2210031",
    "display" : "Triage/Multiple Patients"
  },
  {
    "code" : "2210033",
    "display" : "Vehicle Crash Involving this Unit"
  },
  {
    "code" : "2210035",
    "display" : "Vehicle Failure of this Unit"
  },
  {
    "code" : "2210037",
    "display" : "Weather"
  },
  {
    "code" : "2210039",
    "display" : "Mechanical Issue-Unit, Equipment, etc."
  },
  {
    "code" : "2211001",
    "display" : "Crowd"
  },
  {
    "code" : "2211003",
    "display" : "Directions/Unable to Locate"
  },
  {
    "code" : "2211005",
    "display" : "Distance"
  },
  {
    "code" : "2211007",
    "display" : "Diversion"
  },
  {
    "code" : "2211009",
    "display" : "HazMat"
  },
  {
    "code" : "2211011",
    "display" : "None/No Delay"
  },
  {
    "code" : "2211013",
    "display" : "Other"
  },
  {
    "code" : "2211015",
    "display" : "Rendezvous Transport Unavailable"
  },
  {
    "code" : "2211017",
    "display" : "Route Obstruction (e.g., Train)"
  },
  {
    "code" : "2211019",
    "display" : "Safety"
  },
  {
    "code" : "2211021",
    "display" : "Staff Delay"
  },
  {
    "code" : "2211023",
    "display" : "Traffic"
  },
  {
    "code" : "2211025",
    "display" : "Vehicle Crash Involving this Unit"
  },
  {
    "code" : "2211027",
    "display" : "Vehicle Failure of this Unit"
  },
  {
    "code" : "2211029",
    "display" : "Weather"
  },
  {
    "code" : "2211031",
    "display" : "Patient Condition Change (e.g., Unit Stopped)"
  },
  {
    "code" : "2212001",
    "display" : "Clean-up"
  },
  {
    "code" : "2212003",
    "display" : "Decontamination"
  },
  {
    "code" : "2212005",
    "display" : "Distance"
  },
  {
    "code" : "2212007",
    "display" : "Documentation"
  },
  {
    "code" : "2212009",
    "display" : "ED Overcrowding / Transfer of Care"
  },
  {
    "code" : "2212011",
    "display" : "Equipment Failure"
  },
  {
    "code" : "2212013",
    "display" : "Equipment/Supply Replenishment"
  },
  {
    "code" : "2212015",
    "display" : "None/No Delay"
  },
  {
    "code" : "2212017",
    "display" : "Other"
  },
  {
    "code" : "2212019",
    "display" : "Rendezvous Transport Unavailable"
  },
  {
    "code" : "2212021",
    "display" : "Route Obstruction (e.g., Train)"
  },
  {
    "code" : "2212023",
    "display" : "Staff Delay"
  },
  {
    "code" : "2212025",
    "display" : "Traffic"
  },
  {
    "code" : "2212027",
    "display" : "Vehicle Crash of this Unit"
  },
  {
    "code" : "2212029",
    "display" : "Vehicle Failure of this Unit"
  },
  {
    "code" : "2212031",
    "display" : "Weather"
  },
  {
    "code" : "2212033",
    "display" : "EMS Crew Accompanies Patient for Facility Procedure"
  },
  {
    "code" : "2223001",
    "display" : "Emergent (Immediate Response)"
  },
  {
    "code" : "2223003",
    "display" : "Emergent Downgraded to Non-Emergent"
  },
  {
    "code" : "2223005",
    "display" : "Non-Emergent"
  },
  {
    "code" : "2223007",
    "display" : "Non-Emergent Upgraded to Emergent"
  },
  {
    "code" : "2224001",
    "display" : "Intersection Navigation-Against Normal Light Patterns"
  },
  {
    "code" : "2224003",
    "display" : "Intersection Navigation-With Automated Light Changing Technology"
  },
  {
    "code" : "2224005",
    "display" : "Intersection Navigation-With Normal Light Patterns"
  },
  {
    "code" : "2224007",
    "display" : "Scheduled"
  },
  {
    "code" : "2224009",
    "display" : "Speed-Enhanced per Local Policy"
  },
  {
    "code" : "2224011",
    "display" : "Speed-Normal Traffic"
  },
  {
    "code" : "2224013",
    "display" : "Unscheduled"
  },
  {
    "code" : "2224015",
    "display" : "Lights and Sirens"
  },
  {
    "code" : "2224017",
    "display" : "Lights and No Sirens"
  },
  {
    "code" : "2224019",
    "display" : "No Lights or Sirens"
  },
  {
    "code" : "2224021",
    "display" : "Initial No Lights or Sirens, Upgraded to Lights and Sirens"
  },
  {
    "code" : "2224023",
    "display" : "Initial Lights and Sirens, Downgraded to No Lights or Sirens"
  },
  {
    "code" : "2302001",
    "display" : "No"
  },
  {
    "code" : "2302003",
    "display" : "Yes, With Pre-Arrival Instructions"
  },
  {
    "code" : "2302005",
    "display" : "Yes, Without Pre-Arrival Instructions"
  },
  {
    "code" : "2302007",
    "display" : "Yes, Unknown if Pre-Arrival Instructions Given"
  },
  {
    "code" : "2305001",
    "display" : "Critical"
  },
  {
    "code" : "2305003",
    "display" : "Emergent"
  },
  {
    "code" : "2305005",
    "display" : "Lower Acuity"
  },
  {
    "code" : "2305007",
    "display" : "Non-Acute (e.g., Scheduled Transfer or Standby)"
  },
  {
    "code" : "4216001",
    "display" : "Air Medical-Fixed Wing"
  },
  {
    "code" : "4216003",
    "display" : "Air Medical-Rotor Craft"
  },
  {
    "code" : "4216005",
    "display" : "Ground-Ambulance"
  },
  {
    "code" : "4216007",
    "display" : "Ground-ATV or Rescue Vehicle"
  },
  {
    "code" : "4216009",
    "display" : "Ground-Bariatric"
  },
  {
    "code" : "4216011",
    "display" : "Ground-Other Not Listed"
  },
  {
    "code" : "4216013",
    "display" : "Ground-Mass Casualty Bus/Vehicle"
  },
  {
    "code" : "4216015",
    "display" : "Ground-Wheelchair Van"
  },
  {
    "code" : "4216017",
    "display" : "Water-Boat"
  },
  {
    "code" : "4217001",
    "display" : "Emergent (Immediate Response)"
  },
  {
    "code" : "4217003",
    "display" : "Emergent Downgraded to Non-Emergent"
  },
  {
    "code" : "4217005",
    "display" : "Non-Emergent"
  },
  {
    "code" : "4217007",
    "display" : "Non-Emergent Upgraded to Emergent"
  },
  {
    "code" : "4218001",
    "display" : "Intersection Navigation-Against Normal Light Patterns"
  },
  {
    "code" : "4218003",
    "display" : "Intersection Navigation-With Automated Light Changing Technology"
  },
  {
    "code" : "4218005",
    "display" : "Intersection Navigation-With Normal Light Patterns"
  },
  {
    "code" : "4218007",
    "display" : "Speed-Enhanced per Local Policy"
  },
  {
    "code" : "4218009",
    "display" : "Speed-Normal Traffic"
  },
  {
    "code" : "4218011",
    "display" : "Lights and Sirens"
  },
  {
    "code" : "4218013",
    "display" : "Lights and No Sirens"
  },
  {
    "code" : "4218015",
    "display" : "No Lights or Sirens"
  },
  {
    "code" : "4218017",
    "display" : "Initial No Lights or Sirens, Upgraded to Lights and Sirens"
  },
  {
    "code" : "4218019",
    "display" : "Initial Lights and Sirens, Downgraded to No Lights or Sirens"
  },
  {
    "code" : "4219001",
    "display" : "Critical (Red)"
  },
  {
    "code" : "4219003",
    "display" : "Emergent (Yellow)"
  },
  {
    "code" : "4219005",
    "display" : "Lower Acuity (Green)"
  },
  {
    "code" : "4219007",
    "display" : "Dead without Resuscitation Efforts (Black)"
  },
  {
    "code" : "4219009",
    "display" : "Dead with Resuscitation Efforts (Black)"
  },
  {
    "code" : "4219011",
    "display" : "Non-Acute/Routine"
  },
  {
    "code" : "4220001",
    "display" : "Closest Facility"
  },
  {
    "code" : "4220003",
    "display" : "Diversion"
  },
  {
    "code" : "4220005",
    "display" : "Family Choice"
  },
  {
    "code" : "4220007",
    "display" : "Insurance Status/Requirement"
  },
  {
    "code" : "4220009",
    "display" : "Law Enforcement Choice"
  },
  {
    "code" : "4220011",
    "display" : "On-Line/On-Scene Medical Direction"
  },
  {
    "code" : "4220013",
    "display" : "Other"
  },
  {
    "code" : "4220015",
    "display" : "Patient's Choice"
  },
  {
    "code" : "4220017",
    "display" : "Patient's Physician's Choice"
  },
  {
    "code" : "4220019",
    "display" : "Protocol"
  },
  {
    "code" : "4220021",
    "display" : "Regional Specialty Center"
  },
  {
    "code" : "4221001",
    "display" : "Home"
  },
  {
    "code" : "4221003",
    "display" : "Hospital-Emergency Department"
  },
  {
    "code" : "4221005",
    "display" : "Hospital-Non-Emergency Department Bed"
  },
  {
    "code" : "4221007",
    "display" : "Clinic"
  },
  {
    "code" : "4221009",
    "display" : "Morgue/Mortuary"
  },
  {
    "code" : "4221013",
    "display" : "Other"
  },
  {
    "code" : "4221015",
    "display" : "Other EMS Responder (air)"
  },
  {
    "code" : "4221017",
    "display" : "Other EMS Responder (ground)"
  },
  {
    "code" : "4221019",
    "display" : "Police/Jail"
  },
  {
    "code" : "4221021",
    "display" : "Urgent Care"
  },
  {
    "code" : "4221023",
    "display" : "Freestanding Emergency Department"
  },
  {
    "code" : "4221025",
    "display" : "Dialysis Center"
  },
  {
    "code" : "4221027",
    "display" : "Diagnostic Services"
  },
  {
    "code" : "4221029",
    "display" : "Assisted Living Facility"
  },
  {
    "code" : "4221031",
    "display" : "Mental Health Facility"
  },
  {
    "code" : "4221033",
    "display" : "Nursing Home"
  },
  {
    "code" : "4221035",
    "display" : "Other Recurring Care Center"
  },
  {
    "code" : "4221037",
    "display" : "Physical Rehabilitation Facility"
  },
  {
    "code" : "4221039",
    "display" : "Drug and/or Alcohol Rehabilitation Facility"
  },
  {
    "code" : "4221041",
    "display" : "Skilled Nursing Facility"
  },
  {
    "code" : "4222001",
    "display" : "Hospital-Burn"
  },
  {
    "code" : "4222003",
    "display" : "Hospital-Cath Lab"
  },
  {
    "code" : "4222005",
    "display" : "Hospital-CCU"
  },
  {
    "code" : "4222007",
    "display" : "Hospital-Endoscopy"
  },
  {
    "code" : "4222009",
    "display" : "Hospital-Hospice"
  },
  {
    "code" : "4222011",
    "display" : "Hospital-Hyperbaric Oxygen Treatment"
  },
  {
    "code" : "4222013",
    "display" : "Hospital-ICU"
  },
  {
    "code" : "4222015",
    "display" : "Hospital-Labor and Delivery"
  },
  {
    "code" : "4222017",
    "display" : "Hospital-Med/Surg"
  },
  {
    "code" : "4222019",
    "display" : "Hospital-Mental Health"
  },
  {
    "code" : "4222021",
    "display" : "Hospital-MICU"
  },
  {
    "code" : "4222023",
    "display" : "Hospital-NICU"
  },
  {
    "code" : "4222025",
    "display" : "Hospital-Nursery"
  },
  {
    "code" : "4222027",
    "display" : "Hospital-Peds (General)"
  },
  {
    "code" : "4222029",
    "display" : "Hospital-Peds ICU"
  },
  {
    "code" : "4222031",
    "display" : "Hospital-OR"
  },
  {
    "code" : "4222033",
    "display" : "Hospital-Orthopedic"
  },
  {
    "code" : "4222035",
    "display" : "Hospital-Other"
  },
  {
    "code" : "4222037",
    "display" : "Hospital-Out-Patient Bed"
  },
  {
    "code" : "4222039",
    "display" : "Hospital-Radiology Services - MRI"
  },
  {
    "code" : "4222041",
    "display" : "Hospital-Radiology Services - CT/PET"
  },
  {
    "code" : "4222043",
    "display" : "Hospital-Radiology Services - X-Ray"
  },
  {
    "code" : "4222045",
    "display" : "Hospital-Radiation"
  },
  {
    "code" : "4222047",
    "display" : "Hospital-Rehab"
  },
  {
    "code" : "4222049",
    "display" : "Hospital-SICU"
  },
  {
    "code" : "4222051",
    "display" : "Hospital-Oncology"
  },
  {
    "code" : "4222053",
    "display" : "Hospital-Outpatient Surgery"
  },
  {
    "code" : "9908001",
    "display" : "Behavioral Health"
  },
  {
    "code" : "9908003",
    "display" : "Burn Center"
  },
  {
    "code" : "9908005",
    "display" : "Critical Access Hospital"
  },
  {
    "code" : "9908007",
    "display" : "Hospital (General)"
  },
  {
    "code" : "9908009",
    "display" : "Neonatal Center"
  },
  {
    "code" : "9908011",
    "display" : "Pediatric Center"
  },
  {
    "code" : "9908019",
    "display" : "Rehab Center"
  },
  {
    "code" : "9908021",
    "display" : "Trauma Center Level 1"
  },
  {
    "code" : "9908023",
    "display" : "Trauma Center Level 2"
  },
  {
    "code" : "9908025",
    "display" : "Trauma Center Level 3"
  },
  {
    "code" : "9908027",
    "display" : "Trauma Center Level 4"
  },
  {
    "code" : "9908029",
    "display" : "Trauma Center Level 5"
  },
  {
    "code" : "9908031",
    "display" : "Cardiac-STEMI/PCI Capable"
  },
  {
    "code" : "9908033",
    "display" : "Cardiac-STEMI/PCI Capable (24/7)"
  },
  {
    "code" : "9908035",
    "display" : "Cardiac-STEMI/Non-PCI Capable"
  },
  {
    "code" : "9908037",
    "display" : "Stroke-Acute Stroke Ready Hospital (ASRH)"
  },
  {
    "code" : "9908039",
    "display" : "Stroke-Primary Stroke Center (PSC)"
  },
  {
    "code" : "9908041",
    "display" : "Stroke-Thrombectomy-Capable Stroke Center (TSC)"
  },
  {
    "code" : "9908043",
    "display" : "Stroke-Comprehensive Stroke Center (CSC)"
  },
  {
    "code" : "9908045",
    "display" : "Cancer Center"
  },
  {
    "code" : "9908047",
    "display" : "Labor and Delivery"
  },
  {
    "code" : "4224001",
    "display" : "No"
  },
  {
    "code" : "4224003",
    "display" : "Yes-Adult Trauma"
  },
  {
    "code" : "4224005",
    "display" : "Yes-Cardiac Arrest"
  },
  {
    "code" : "4224007",
    "display" : "Yes-Obstetrics"
  },
  {
    "code" : "4224009",
    "display" : "Yes-Other"
  },
  {
    "code" : "4224011",
    "display" : "Yes-Pediatric Trauma"
  },
  {
    "code" : "4224013",
    "display" : "Yes-STEMI"
  },
  {
    "code" : "4224015",
    "display" : "Yes-Stroke"
  },
  {
    "code" : "4224017",
    "display" : "Yes-Trauma (General)"
  },
  {
    "code" : "4224019",
    "display" : "Yes-Sepsis"
  },
  {
    "code" : "4226001",
    "display" : "Contact 911 or see your Doctor if problem returns"
  },
  {
    "code" : "4226003",
    "display" : "Contact 911 or see your Doctor if problem worsens"
  },
  {
    "code" : "4226005",
    "display" : "Other Not Listed (Described in Narrative)"
  },
  {
    "code" : "4226007",
    "display" : "Problem Specific Instructions Provided"
  },
  {
    "code" : "4226009",
    "display" : "See Your Doctor or the Emergency Department immediately"
  },
  {
    "code" : "4226011",
    "display" : "See Your Doctor or the Emergency Department in the next 24 hours"
  },
  {
    "code" : "4226013",
    "display" : "See Your Doctor or the Emergency Department in the next 4 hours"
  },
  {
    "code" : "4226015",
    "display" : "See Your Doctor within the next one week"
  },
  {
    "code" : "4227001",
    "display" : "Patient Contact Made"
  },
  {
    "code" : "4227003",
    "display" : "Cancelled on Scene"
  },
  {
    "code" : "4227005",
    "display" : "Cancelled Prior to Arrival at Scene"
  },
  {
    "code" : "4227007",
    "display" : "No Patient Contact"
  },
  {
    "code" : "4227009",
    "display" : "No Patient Found"
  },
  {
    "code" : "4227011",
    "display" : "Non-Patient Incident (Not Otherwise Listed)"
  },
  {
    "code" : "4228001",
    "display" : "Patient Evaluated and Care Provided"
  },
  {
    "code" : "4228003",
    "display" : "Patient Evaluated and Refused Care"
  },
  {
    "code" : "4228005",
    "display" : "Patient Evaluated, No Care Required"
  },
  {
    "code" : "4228007",
    "display" : "Patient Refused Evaluation/Care"
  },
  {
    "code" : "4228009",
    "display" : "Patient Support Services Provided"
  },
  {
    "code" : "4229001",
    "display" : "Initiated and Continued Primary Care"
  },
  {
    "code" : "4229003",
    "display" : "Initiated Primary Care and Transferred to Another EMS Crew"
  },
  {
    "code" : "4229005",
    "display" : "Provided Care Supporting Primary EMS Crew"
  },
  {
    "code" : "4229007",
    "display" : "Assumed Primary Care from Another EMS Crew"
  },
  {
    "code" : "4229009",
    "display" : "Incident Support Services Provided (Including Standby)"
  },
  {
    "code" : "4229011",
    "display" : "Back in Service, No Care/Support Services Required"
  },
  {
    "code" : "4229013",
    "display" : "Back in Service, Care/Support Services Refused"
  },
  {
    "code" : "4230001",
    "display" : "Transport by This EMS Unit (This Crew Only)"
  },
  {
    "code" : "4230003",
    "display" : "Transport by This EMS Unit, with a Member of Another Crew"
  },
  {
    "code" : "4230005",
    "display" : "Transport by Another EMS Unit/Agency"
  },
  {
    "code" : "4230007",
    "display" : "Transport by Another EMS Unit/Agency, with a Member of This Crew"
  },
  {
    "code" : "4230009",
    "display" : "Patient Refused Transport"
  },
  {
    "code" : "4230011",
    "display" : "Non-Patient Transport (Not Otherwise Listed)"
  },
  {
    "code" : "4230013",
    "display" : "No Transport"
  },
  {
    "code" : "4231001",
    "display" : "Against Medical Advice"
  },
  {
    "code" : "4231003",
    "display" : "Patient/Guardian Indicates Ambulance Transport is Not Necessary"
  },
  {
    "code" : "4231005",
    "display" : "Released Following Protocol Guidelines"
  },
  {
    "code" : "4231007",
    "display" : "Released to Law Enforcement"
  },
  {
    "code" : "4231009",
    "display" : "Patient/Guardian States Intent to Transport by Other Means"
  },
  {
    "code" : "4231011",
    "display" : "DNR"
  },
  {
    "code" : "4231013",
    "display" : "Medical/Physician Orders for Life Sustaining Treatment"
  },
  {
    "code" : "4231015",
    "display" : "Other, Not Listed"
  },
  {
    "code" : "4231017",
    "display" : "Patient Elopement"
  },
  {
    "code" : "4232001",
    "display" : "BLS - All Levels"
  },
  {
    "code" : "4232003",
    "display" : "ALS - AEMT/Intermediate"
  },
  {
    "code" : "4232005",
    "display" : "ALS - Paramedic"
  },
  {
    "code" : "4232007",
    "display" : "EMS and Other Health-Care Staff"
  },
  {
    "code" : "4232009",
    "display" : "Critical Care"
  },
  {
    "code" : "4232011",
    "display" : "Integrated Health Care"
  },
  {
    "code" : "4232013",
    "display" : "No Care Provided"
  },
  {
    "code" : "eOutcomePanel",
    "display" : "EMS Outcome Observation Panel"
  },
  {
    "code" : "eOutcomeEDDisposition",
    "display" : "Emergency Department Patient Disposition"
  },
  {
    "code" : "eOutcomeEDArrivalDateTime",
    "display" : "Emergency Department Arrival Date and Time"
  },
  {
    "code" : "eOutcomeHospitalProcedure",
    "display" : "Hospital Procedure (ICD-10-PCS)"
  },
  {
    "code" : "eOutcomeInjurySeverityScore",
    "display" : "Injury Severity Score (ISS)"
  }]
}

```
