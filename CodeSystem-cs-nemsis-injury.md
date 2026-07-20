# NEMSIS eInjury Code System - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS eInjury Code System**

## CodeSystem: NEMSIS eInjury Code System 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-injury | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISInjury |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.6 | |

 
Enumeration codes from the NEMSIS 3.5.1 eInjury section covering mechanism of injury, CDC trauma triage criteria (high and moderate risk), vehicle occupant location, occupant safety equipment, airbag deployment, OSHA personal protective equipment, and ACN vehicle seat location. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSACNSeatLocationVS](ValueSet-vs-ems-acn-seat-location.md)
* [EMSAirbagDeploymentVS](ValueSet-vs-ems-airbag-deployment.md)
* [EMSMechanismOfInjuryVS](ValueSet-vs-ems-mechanism-of-injury.md)
* [EMSOSHAPPEVS](ValueSet-vs-ems-osha-ppe.md)
* [EMSSafetyEquipmentVS](ValueSet-vs-ems-safety-equipment.md)
* [EMSSeatRowLocationVS](ValueSet-vs-ems-seat-row-location.md)
* [EMSTraumaTriageHighRiskVS](ValueSet-vs-ems-trauma-triage-high-risk.md)
* [EMSTraumaTriageModerateRiskVS](ValueSet-vs-ems-trauma-triage-moderate-risk.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-injury",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-injury",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.6"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISInjury",
  "title" : "NEMSIS eInjury Code System",
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
  "description" : "Enumeration codes from the NEMSIS 3.5.1 eInjury section covering mechanism of injury, CDC trauma triage criteria (high and moderate risk), vehicle occupant location, occupant safety equipment, airbag deployment, OSHA personal protective equipment, and ACN vehicle seat location.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 95,
  "concept" : [{
    "code" : "2902001",
    "display" : "Blunt"
  },
  {
    "code" : "2902003",
    "display" : "Burn"
  },
  {
    "code" : "2902005",
    "display" : "Other"
  },
  {
    "code" : "2902007",
    "display" : "Penetrating"
  },
  {
    "code" : "2903001",
    "display" : "Amputation proximal to wrist or ankle"
  },
  {
    "code" : "2903003",
    "display" : "Crushed, degloved, mangled, or pulseless extremity"
  },
  {
    "code" : "2903005",
    "display" : "Chest wall instability, deformity, or suspected flail chest"
  },
  {
    "code" : "2903007",
    "display" : "Glasgow Coma Score <= 13 (DEPRECATED)"
  },
  {
    "code" : "2903009",
    "display" : "Skull deformity, suspected skull fracture"
  },
  {
    "code" : "2903011",
    "display" : "Paralysis (DEPRECATED)"
  },
  {
    "code" : "2903013",
    "display" : "Suspected pelvic fracture"
  },
  {
    "code" : "2903015",
    "display" : "Penetrating injuries to head, neck, torso, and proximal extremities"
  },
  {
    "code" : "2903017",
    "display" : "Respiratory Rate <10 or >29 breaths per minute (<20 in infants aged <1 year) or need for ventilatory support (DEPRECATED)"
  },
  {
    "code" : "2903019",
    "display" : "Systolic Blood Pressure <90 mmHg (DEPRECATED)"
  },
  {
    "code" : "2903021",
    "display" : "Suspected fracture of two or more proximal long bones"
  },
  {
    "code" : "2903023",
    "display" : "Active bleeding requiring a tourniquet or wound packing with continuous pressure"
  },
  {
    "code" : "2903025",
    "display" : "Age >= 10 years: HR > SBP"
  },
  {
    "code" : "2903027",
    "display" : "Age >= 65 years: SBP < 110 mmHg"
  },
  {
    "code" : "2903029",
    "display" : "Age 0-9 years: SBP < 70mm Hg + (2 x age in years)"
  },
  {
    "code" : "2903031",
    "display" : "Age 10-64 years: SBP < 90 mmHg"
  },
  {
    "code" : "2903033",
    "display" : "Respiratory distress or need for respiratory support"
  },
  {
    "code" : "2903035",
    "display" : "Room-air pulse oximetry < 90%"
  },
  {
    "code" : "2903037",
    "display" : "RR < 10 or > 29 breaths/min"
  },
  {
    "code" : "2903039",
    "display" : "Suspected spinal injury with new motor or sensory loss"
  },
  {
    "code" : "2903041",
    "display" : "Unable to follow commands (motor GCS < 6)"
  },
  {
    "code" : "2904001",
    "display" : "Pedestrian/bicycle rider thrown, run over, or with significant impact"
  },
  {
    "code" : "2904003",
    "display" : "Fall Adults: > 20 ft. (one story is equal to 10 ft.) (DEPRECATED)"
  },
  {
    "code" : "2904005",
    "display" : "Fall Children: > 10 ft. or 2-3 times the height of the child (DEPRECATED)"
  },
  {
    "code" : "2904007",
    "display" : "Auto Crash: Death in passenger compartment"
  },
  {
    "code" : "2904009",
    "display" : "Auto Crash: Partial or complete ejection"
  },
  {
    "code" : "2904011",
    "display" : "Auto Crash: Significant intrusion (including roof): >12 inches occupant site; >18 inches any site; need for extrication"
  },
  {
    "code" : "2904013",
    "display" : "Auto Crash: Vehicle telemetry data consistent with severe injury"
  },
  {
    "code" : "2904015",
    "display" : "Motorcycle Crash > 20 MPH (DEPRECATED)"
  },
  {
    "code" : "2904017",
    "display" : "SBP < 110 for age > 65 (DEPRECATED)"
  },
  {
    "code" : "2904019",
    "display" : "Anticoagulant use"
  },
  {
    "code" : "2904021",
    "display" : "Pregnancy > 20 weeks"
  },
  {
    "code" : "2904023",
    "display" : "Other EMS judgment"
  },
  {
    "code" : "2904025",
    "display" : "Burn, without other trauma (DEPRECATED)"
  },
  {
    "code" : "2904027",
    "display" : "Burns in conjunction with trauma"
  },
  {
    "code" : "2904029",
    "display" : "Auto Crash: Child (age 0-9 years) unrestrained or in unsecured child safety seat"
  },
  {
    "code" : "2904031",
    "display" : "Fall from height > 10 feet (all ages)"
  },
  {
    "code" : "2904033",
    "display" : "Low-level falls in young children (age <= 5 years) or older adults (age >= 65 years) with significant head impact"
  },
  {
    "code" : "2904035",
    "display" : "Rider separated from transport vehicle with significant impact (eg, motorcycle, ATV, horse, etc.)"
  },
  {
    "code" : "2904037",
    "display" : "Special, high-resource healthcare needs"
  },
  {
    "code" : "2904039",
    "display" : "Suspicion of child abuse"
  },
  {
    "code" : "2906001",
    "display" : "Front Seat-Left Side (or motorcycle driver)"
  },
  {
    "code" : "2906003",
    "display" : "Front Seat-Middle"
  },
  {
    "code" : "2906005",
    "display" : "Front Seat-Right Side"
  },
  {
    "code" : "2906007",
    "display" : "Passenger in other enclosed passenger or cargo area (non-trailing unit such as a bus, etc.)"
  },
  {
    "code" : "2906009",
    "display" : "Passenger in unenclosed passenger or cargo area (non-trailing unit such as a pickup, etc.)"
  },
  {
    "code" : "2906011",
    "display" : "Riding on Vehicle Exterior (non-trailing unit)"
  },
  {
    "code" : "2906013",
    "display" : "Second Seat-Left Side (or motorcycle passenger)"
  },
  {
    "code" : "2906015",
    "display" : "Second Seat-Middle"
  },
  {
    "code" : "2906017",
    "display" : "Second Seat-Right Side"
  },
  {
    "code" : "2906019",
    "display" : "Sleeper Section of Cab (truck)"
  },
  {
    "code" : "2906021",
    "display" : "Third Row-Left Side (or motorcycle passenger)"
  },
  {
    "code" : "2906023",
    "display" : "Third Row-Middle"
  },
  {
    "code" : "2906025",
    "display" : "Third Row-Right Side"
  },
  {
    "code" : "2906027",
    "display" : "Trailing Unit"
  },
  {
    "code" : "2906029",
    "display" : "Unknown"
  },
  {
    "code" : "2907001",
    "display" : "Child Booster Seat"
  },
  {
    "code" : "2907003",
    "display" : "Eye Protection"
  },
  {
    "code" : "2907005",
    "display" : "Helmet Worn"
  },
  {
    "code" : "2907007",
    "display" : "Infant Car Seat Forward Facing"
  },
  {
    "code" : "2907009",
    "display" : "Infant Car Seat Rear Facing"
  },
  {
    "code" : "2907015",
    "display" : "None"
  },
  {
    "code" : "2907017",
    "display" : "Other"
  },
  {
    "code" : "2907019",
    "display" : "Personal Floatation Device"
  },
  {
    "code" : "2907021",
    "display" : "Protective Clothing"
  },
  {
    "code" : "2907023",
    "display" : "Protective Non-Clothing Gear"
  },
  {
    "code" : "2907027",
    "display" : "Shoulder and Lap Belt Used"
  },
  {
    "code" : "2907029",
    "display" : "Lap Belt Only Used"
  },
  {
    "code" : "2907031",
    "display" : "Shoulder Belt Only Used"
  },
  {
    "code" : "2907033",
    "display" : "Unable to Determine"
  },
  {
    "code" : "2908001",
    "display" : "Airbag Deployed Front"
  },
  {
    "code" : "2908003",
    "display" : "Airbag Deployed Side"
  },
  {
    "code" : "2908005",
    "display" : "Airbag Deployed Other (knee, air belt, etc.)"
  },
  {
    "code" : "2908007",
    "display" : "No Airbag Deployed"
  },
  {
    "code" : "2908009",
    "display" : "No Airbag Present"
  },
  {
    "code" : "2910001",
    "display" : "Eye and Face Protection"
  },
  {
    "code" : "2910003",
    "display" : "Foot Protection"
  },
  {
    "code" : "2910005",
    "display" : "Head Protection"
  },
  {
    "code" : "2910007",
    "display" : "Hearing Protection"
  },
  {
    "code" : "2910009",
    "display" : "Respiratory Protection"
  },
  {
    "code" : "2910011",
    "display" : "Safety Belts, lifelines, and lanyards"
  },
  {
    "code" : "2910013",
    "display" : "Safety Nets"
  },
  {
    "code" : "2926001",
    "display" : "Driver Front Seat"
  },
  {
    "code" : "2926003",
    "display" : "Front Row Middle Seat"
  },
  {
    "code" : "2926005",
    "display" : "Passenger Front Seat"
  },
  {
    "code" : "2926007",
    "display" : "Second Row Left Seat"
  },
  {
    "code" : "2926009",
    "display" : "Second Row Middle Seat"
  },
  {
    "code" : "2926011",
    "display" : "Second Row Right Seat"
  },
  {
    "code" : "2926013",
    "display" : "Third Row Left Seat"
  },
  {
    "code" : "2926015",
    "display" : "Third Row Middle Seat"
  },
  {
    "code" : "2926017",
    "display" : "Third Row Right Seat"
  }]
}

```
