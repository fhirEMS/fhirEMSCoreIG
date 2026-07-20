# NEMSIS eAirway Code System - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS eAirway Code System**

## CodeSystem: NEMSIS eAirway Code System 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-airway | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISAirway |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.1 | |

 
Enumeration codes from the NEMSIS 3.5.1 eAirway section covering airway management indications, device types, confirmation methods, confirming personnel, complications, and reasons for failed management. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSAirwayComplicationsVS](ValueSet-vs-ems-airway-complications.md)
* [EMSAirwayConfirmationMethodVS](ValueSet-vs-ems-airway-confirmation-method.md)
* [EMSAirwayConfirmingPersonVS](ValueSet-vs-ems-airway-confirming-person.md)
* [EMSAirwayDeviceVS](ValueSet-vs-ems-airway-device.md)
* [EMSAirwayFailureReasonsVS](ValueSet-vs-ems-airway-failure-reasons.md)
* [EMSAirwayIndicationsVS](ValueSet-vs-ems-airway-indications.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-airway",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-airway",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.1"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISAirway",
  "title" : "NEMSIS eAirway Code System",
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
  "description" : "Enumeration codes from the NEMSIS 3.5.1 eAirway section covering airway management indications, device types, confirmation methods, confirming personnel, complications, and reasons for failed management.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 53,
  "concept" : [{
    "code" : "4001001",
    "display" : "Adequate Airway Reflexes/Effort, Potential for Compromise"
  },
  {
    "code" : "4001003",
    "display" : "Airway Reflex Compromised"
  },
  {
    "code" : "4001005",
    "display" : "Apnea or Agonal Respirations"
  },
  {
    "code" : "4001007",
    "display" : "Illness Involving Airway"
  },
  {
    "code" : "4001009",
    "display" : "Injury Involving Airway"
  },
  {
    "code" : "4001011",
    "display" : "Other"
  },
  {
    "code" : "4001013",
    "display" : "Ventilatory Effort Compromised"
  },
  {
    "code" : "4003001",
    "display" : "Cricothyrotomy Tube"
  },
  {
    "code" : "4003003",
    "display" : "Endotracheal Tube"
  },
  {
    "code" : "4003005",
    "display" : "Other-Invasive Airway"
  },
  {
    "code" : "4003007",
    "display" : "SAD-Combitube"
  },
  {
    "code" : "4003009",
    "display" : "SAD-King"
  },
  {
    "code" : "4003011",
    "display" : "SAD-LMA"
  },
  {
    "code" : "4003013",
    "display" : "SAD-Other"
  },
  {
    "code" : "4003015",
    "display" : "Tracheostomy Tube"
  },
  {
    "code" : "4004001",
    "display" : "Auscultation"
  },
  {
    "code" : "4004003",
    "display" : "Bulb/Syringe Aspiration"
  },
  {
    "code" : "4004005",
    "display" : "Colorimetric ETCO2"
  },
  {
    "code" : "4004007",
    "display" : "Condensation in Tube"
  },
  {
    "code" : "4004009",
    "display" : "Digital (Numeric) ETCO2"
  },
  {
    "code" : "4004011",
    "display" : "Direct Re-Visualization of Tube in Place"
  },
  {
    "code" : "4004013",
    "display" : "Endotracheal Tube Whistle (BAAM, etc.)"
  },
  {
    "code" : "4004015",
    "display" : "Other"
  },
  {
    "code" : "4004017",
    "display" : "Visualization of Vocal Cords"
  },
  {
    "code" : "4004019",
    "display" : "Waveform ETCO2"
  },
  {
    "code" : "4004021",
    "display" : "Chest Rise"
  },
  {
    "code" : "4006001",
    "display" : "Another Person on the Same Crew"
  },
  {
    "code" : "4006003",
    "display" : "Other"
  },
  {
    "code" : "4006005",
    "display" : "Person Performing Intubation"
  },
  {
    "code" : "4006007",
    "display" : "Receiving Air Medical/EMS Crew"
  },
  {
    "code" : "4006009",
    "display" : "Receiving Hospital Team"
  },
  {
    "code" : "4008001",
    "display" : "Adverse Event from Facilitating Drugs"
  },
  {
    "code" : "4008003",
    "display" : "Bradycardia (<50)"
  },
  {
    "code" : "4008005",
    "display" : "Cardiac Arrest"
  },
  {
    "code" : "4008007",
    "display" : "Esophageal Intubation-Delayed Detection (After Tube Secured)"
  },
  {
    "code" : "4008009",
    "display" : "Esophageal Intubation-Detected in Emergency Department"
  },
  {
    "code" : "4008011",
    "display" : "Failed Intubation Effort"
  },
  {
    "code" : "4008013",
    "display" : "Injury or Trauma to Patient from Airway Management Effort"
  },
  {
    "code" : "4008015",
    "display" : "Other"
  },
  {
    "code" : "4008017",
    "display" : "Oxygen Desaturation (<90%)"
  },
  {
    "code" : "4008019",
    "display" : "Patient Vomiting/Aspiration"
  },
  {
    "code" : "4008021",
    "display" : "Tube Dislodged During Transport/Patient Care"
  },
  {
    "code" : "4008023",
    "display" : "Tube Was Not in Correct Position when EMS Crew/Team Assumed Care of the Patient"
  },
  {
    "code" : "4009001",
    "display" : "Difficult Patient Airway Anatomy"
  },
  {
    "code" : "4009003",
    "display" : "ETI Attempted, but Arrived At Destination Facility Before Accomplished"
  },
  {
    "code" : "4009005",
    "display" : "Facial or Oral Trauma"
  },
  {
    "code" : "4009007",
    "display" : "Inability to Expose Vocal Cords"
  },
  {
    "code" : "4009009",
    "display" : "Inadequate Patient Relaxation/Presence of Protective Airway Reflexes"
  },
  {
    "code" : "4009011",
    "display" : "Jaw Clenched (Trismus)"
  },
  {
    "code" : "4009013",
    "display" : "Other"
  },
  {
    "code" : "4009015",
    "display" : "Poor Patient Access"
  },
  {
    "code" : "4009017",
    "display" : "Secretions/Blood/Vomit"
  },
  {
    "code" : "4009019",
    "display" : "Unable to Position or Access Patient"
  }]
}

```
