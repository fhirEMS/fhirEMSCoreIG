# NEMSIS eArrest Code System - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS eArrest Code System**

## CodeSystem: NEMSIS eArrest Code System 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISArrest |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.2 | |

 
Enumeration codes from the NEMSIS 3.5.1 eArrest section covering cardiac arrest status, etiology, resuscitation attempts, CPR type, ROSC, neurological outcome, end-of-event disposition, and first-responder roles. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSAEDUseVS](ValueSet-vs-ems-aed-use.md)
* [EMSArrestEndEventVS](ValueSet-vs-ems-arrest-end-event.md)
* [EMSArrestEtiologyVS](ValueSet-vs-ems-arrest-etiology.md)
* [EMSArrestFirstResponderVS](ValueSet-vs-ems-arrest-first-responder.md)
* [EMSArrestWitnessedVS](ValueSet-vs-ems-arrest-witnessed.md)
* [EMSCardiacArrestVS](ValueSet-vs-ems-cardiac-arrest.md)
* [EMSCPRDiscontinuedReasonVS](ValueSet-vs-ems-cpr-discontinued-reason.md)
* [EMSCPRTypeVS](ValueSet-vs-ems-cpr-type.md)
* [EMSFirstRhythmVS](ValueSet-vs-ems-first-rhythm.md)
* [EMSNeurologicalOutcomeVS](ValueSet-vs-ems-neurological-outcome.md)
* [EMSResuscitationAttemptedVS](ValueSet-vs-ems-resuscitation-attempted.md)
* [EMSROSCVs](ValueSet-vs-ems-rosc.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-arrest",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-arrest",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.2"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISArrest",
  "title" : "NEMSIS eArrest Code System",
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
  "description" : "Enumeration codes from the NEMSIS 3.5.1 eArrest section covering cardiac arrest status, etiology, resuscitation attempts, CPR type, ROSC, neurological outcome, end-of-event disposition, and first-responder roles.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 85,
  "concept" : [{
    "code" : "3001001",
    "display" : "No"
  },
  {
    "code" : "3001003",
    "display" : "Yes, Prior to Any EMS Arrival (includes Transport EMS & Medical First Responders)"
  },
  {
    "code" : "3001005",
    "display" : "Yes, After Any EMS Arrival (includes Transport EMS & Medical First Responders)"
  },
  {
    "code" : "3002001",
    "display" : "Cardiac (Presumed)"
  },
  {
    "code" : "3002003",
    "display" : "Drowning/Submersion"
  },
  {
    "code" : "3002005",
    "display" : "Drug Overdose"
  },
  {
    "code" : "3002007",
    "display" : "Electrocution"
  },
  {
    "code" : "3002009",
    "display" : "Exsanguination-Medical (Non-Traumatic)"
  },
  {
    "code" : "3002011",
    "display" : "Other"
  },
  {
    "code" : "3002013",
    "display" : "Respiratory/Asphyxia"
  },
  {
    "code" : "3002015",
    "display" : "Traumatic Cause"
  },
  {
    "code" : "3003001",
    "display" : "Attempted Defibrillation"
  },
  {
    "code" : "3003003",
    "display" : "Attempted Ventilation"
  },
  {
    "code" : "3003005",
    "display" : "Initiated Chest Compressions"
  },
  {
    "code" : "3003007",
    "display" : "Not Attempted-Considered Futile"
  },
  {
    "code" : "3003009",
    "display" : "Not Attempted-DNR Orders"
  },
  {
    "code" : "3003011",
    "display" : "Not Attempted-Signs of Circulation"
  },
  {
    "code" : "3004001",
    "display" : "Not Witnessed"
  },
  {
    "code" : "3004003",
    "display" : "Witnessed by Family Member"
  },
  {
    "code" : "3004005",
    "display" : "Witnessed by Healthcare Provider"
  },
  {
    "code" : "3004007",
    "display" : "Witnessed by Bystander"
  },
  {
    "code" : "3007001",
    "display" : "No"
  },
  {
    "code" : "3007003",
    "display" : "Yes, Applied without Defibrillation"
  },
  {
    "code" : "3007005",
    "display" : "Yes, With Defibrillation"
  },
  {
    "code" : "3009001",
    "display" : "Compressions-Manual"
  },
  {
    "code" : "3009003",
    "display" : "Compressions-External Band Type Device"
  },
  {
    "code" : "3009005",
    "display" : "Compressions-External Plunger Type Device"
  },
  {
    "code" : "3009007",
    "display" : "Compressions-External Thumper Type Device"
  },
  {
    "code" : "3009009",
    "display" : "Compressions-Intermittent with Ventilation"
  },
  {
    "code" : "3009011",
    "display" : "Compressions-Other Device"
  },
  {
    "code" : "3009013",
    "display" : "Ventilation-Bag Valve Mask"
  },
  {
    "code" : "3009015",
    "display" : "Ventilation-Impedance Threshold Device"
  },
  {
    "code" : "3009017",
    "display" : "Ventilation-Mouth to Mouth"
  },
  {
    "code" : "3009019",
    "display" : "Ventilation-Pocket Mask"
  },
  {
    "code" : "3009021",
    "display" : "Compressions-Hands Only CPR (DEPRECATED)"
  },
  {
    "code" : "3009023",
    "display" : "Ventilation-with OPA/NPA"
  },
  {
    "code" : "3009025",
    "display" : "Ventilation-Advanced Airway Device"
  },
  {
    "code" : "3009027",
    "display" : "Ventilation-Passive Ventilation with Oxygen"
  },
  {
    "code" : "3011001",
    "display" : "Asystole"
  },
  {
    "code" : "3011005",
    "display" : "PEA"
  },
  {
    "code" : "3011007",
    "display" : "Unknown AED Non-Shockable Rhythm"
  },
  {
    "code" : "3011009",
    "display" : "Unknown AED Shockable Rhythm"
  },
  {
    "code" : "3011011",
    "display" : "Ventricular Fibrillation"
  },
  {
    "code" : "3011013",
    "display" : "Ventricular Tachycardia-Pulseless"
  },
  {
    "code" : "3012001",
    "display" : "No"
  },
  {
    "code" : "3012003",
    "display" : "Yes, At Arrival at the ED"
  },
  {
    "code" : "3012005",
    "display" : "Yes, Prior to Arrival at the ED"
  },
  {
    "code" : "3012007",
    "display" : "Yes, Sustained for 20 consecutive minutes"
  },
  {
    "code" : "3013001",
    "display" : "CPC 1 Good Cerebral Performance"
  },
  {
    "code" : "3013003",
    "display" : "CPC 2 Moderate Cerebral Disability"
  },
  {
    "code" : "3013005",
    "display" : "CPC 3 Severe Cerebral Disability"
  },
  {
    "code" : "3013007",
    "display" : "CPC 4 Coma or Vegetative State"
  },
  {
    "code" : "3016001",
    "display" : "DNR"
  },
  {
    "code" : "3016003",
    "display" : "Medical Control Order"
  },
  {
    "code" : "3016005",
    "display" : "Obvious Signs of Death"
  },
  {
    "code" : "3016007",
    "display" : "Physically Unable to Perform"
  },
  {
    "code" : "3016009",
    "display" : "Protocol/Policy Requirements Completed"
  },
  {
    "code" : "3016011",
    "display" : "Return of Spontaneous Circulation (pulse or BP noted)"
  },
  {
    "code" : "3018001",
    "display" : "Expired in ED"
  },
  {
    "code" : "3018003",
    "display" : "Expired in the Field"
  },
  {
    "code" : "3018005",
    "display" : "Ongoing Resuscitation in ED"
  },
  {
    "code" : "3018007",
    "display" : "ROSC in the Field"
  },
  {
    "code" : "3018009",
    "display" : "ROSC in the ED"
  },
  {
    "code" : "3018011",
    "display" : "Ongoing Resuscitation by Other EMS"
  },
  {
    "code" : "3020001",
    "display" : "Bystander"
  },
  {
    "code" : "3020003",
    "display" : "Family Member"
  },
  {
    "code" : "3020005",
    "display" : "Healthcare Provider (non-911 Responder)"
  },
  {
    "code" : "3020007",
    "display" : "First Responder (EMS)"
  },
  {
    "code" : "3020009",
    "display" : "First Responder (Law Enforcement)"
  },
  {
    "code" : "3020011",
    "display" : "First Responder (non-EMS Fire)"
  },
  {
    "code" : "3020013",
    "display" : "EMS Responder (transport EMS)"
  },
  {
    "code" : "3021001",
    "display" : "Bystander"
  },
  {
    "code" : "3021003",
    "display" : "Family Member"
  },
  {
    "code" : "3021005",
    "display" : "Healthcare Provider (non-911 Responder)"
  },
  {
    "code" : "3021007",
    "display" : "First Responder (EMS)"
  },
  {
    "code" : "3021009",
    "display" : "First Responder (Law Enforcement)"
  },
  {
    "code" : "3021011",
    "display" : "First Responder (non-EMS Fire)"
  },
  {
    "code" : "3021013",
    "display" : "EMS Responder (transport EMS)"
  },
  {
    "code" : "3022001",
    "display" : "Bystander"
  },
  {
    "code" : "3022003",
    "display" : "Family Member"
  },
  {
    "code" : "3022005",
    "display" : "Healthcare Provider (non-911 Responder)"
  },
  {
    "code" : "3022007",
    "display" : "First Responder (EMS)"
  },
  {
    "code" : "3022009",
    "display" : "First Responder (Law Enforcement)"
  },
  {
    "code" : "3022011",
    "display" : "First Responder (non-EMS Fire)"
  },
  {
    "code" : "3022013",
    "display" : "EMS Responder (transport EMS)"
  }]
}

```
