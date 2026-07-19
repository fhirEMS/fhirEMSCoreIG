// ============================================================
// ValueSets: EMS Injury (eInjury)
// NEMSIS 3.5.1.251001CP2
// ============================================================

// eInjury.02 — Mechanism of Injury
ValueSet: EMSMechanismOfInjuryVS
Id: vs-ems-mechanism-of-injury
Title: "EMS Mechanism of Injury VS"
Description: "The mechanism of the event which caused the injury (eInjury.02)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-mechanism-of-injury"
* ^status = #active
* ^experimental = false
* $nemsis-injury#2902001 "Blunt"
* $nemsis-injury#2902003 "Burn"
* $nemsis-injury#2902005 "Other"
* $nemsis-injury#2902007 "Penetrating"

// eInjury.03 — Trauma Triage Criteria (High Risk for Serious Injury)
ValueSet: EMSTraumaTriageHighRiskVS
Id: vs-ems-trauma-triage-high-risk
Title: "EMS Trauma Triage High Risk VS"
Description: "Trauma triage criteria indicating high risk for serious injury — CDC Field Triage Guideline red criteria (injury patterns and physiologic instability) (eInjury.03)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-trauma-triage-high-risk"
* ^status = #active
* ^experimental = false
* $nemsis-injury#2903001 "Amputation proximal to wrist or ankle"
* $nemsis-injury#2903003 "Crushed, degloved, mangled, or pulseless extremity"
* $nemsis-injury#2903005 "Chest wall instability, deformity, or suspected flail chest"
* $nemsis-injury#2903007 "Glasgow Coma Score <= 13 (DEPRECATED)"
* $nemsis-injury#2903009 "Skull deformity, suspected skull fracture"
* $nemsis-injury#2903011 "Paralysis (DEPRECATED)"
* $nemsis-injury#2903013 "Suspected pelvic fracture"
* $nemsis-injury#2903015 "Penetrating injuries to head, neck, torso, and proximal extremities"
* $nemsis-injury#2903017 "Respiratory Rate <10 or >29 breaths per minute (<20 in infants aged <1 year) or need for ventilatory support (DEPRECATED)"
* $nemsis-injury#2903019 "Systolic Blood Pressure <90 mmHg (DEPRECATED)"
* $nemsis-injury#2903021 "Suspected fracture of two or more proximal long bones"
* $nemsis-injury#2903023 "Active bleeding requiring a tourniquet or wound packing with continuous pressure"
* $nemsis-injury#2903025 "Age >= 10 years: HR > SBP"
* $nemsis-injury#2903027 "Age >= 65 years: SBP < 110 mmHg"
* $nemsis-injury#2903029 "Age 0-9 years: SBP < 70mm Hg + (2 x age in years)"
* $nemsis-injury#2903031 "Age 10-64 years: SBP < 90 mmHg"
* $nemsis-injury#2903033 "Respiratory distress or need for respiratory support"
* $nemsis-injury#2903035 "Room-air pulse oximetry < 90%"
* $nemsis-injury#2903037 "RR < 10 or > 29 breaths/min"
* $nemsis-injury#2903039 "Suspected spinal injury with new motor or sensory loss"
* $nemsis-injury#2903041 "Unable to follow commands (motor GCS < 6)"

// eInjury.04 — Trauma Triage Criteria (Moderate Risk for Serious Injury)
ValueSet: EMSTraumaTriageModerateRiskVS
Id: vs-ems-trauma-triage-moderate-risk
Title: "EMS Trauma Triage Moderate Risk VS"
Description: "Trauma triage criteria indicating moderate risk for serious injury — CDC Field Triage Guideline yellow criteria (mechanism of injury and EMS judgment) (eInjury.04)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-trauma-triage-moderate-risk"
* ^status = #active
* ^experimental = false
* $nemsis-injury#2904001 "Pedestrian/bicycle rider thrown, run over, or with significant impact"
* $nemsis-injury#2904003 "Fall Adults: > 20 ft. (one story is equal to 10 ft.) (DEPRECATED)"
* $nemsis-injury#2904005 "Fall Children: > 10 ft. or 2-3 times the height of the child (DEPRECATED)"
* $nemsis-injury#2904007 "Auto Crash: Death in passenger compartment"
* $nemsis-injury#2904009 "Auto Crash: Partial or complete ejection"
* $nemsis-injury#2904011 "Auto Crash: Significant intrusion (including roof): >12 inches occupant site; >18 inches any site; need for extrication"
* $nemsis-injury#2904013 "Auto Crash: Vehicle telemetry data consistent with severe injury"
* $nemsis-injury#2904015 "Motorcycle Crash > 20 MPH (DEPRECATED)"
* $nemsis-injury#2904017 "SBP < 110 for age > 65 (DEPRECATED)"
* $nemsis-injury#2904019 "Anticoagulant use"
* $nemsis-injury#2904021 "Pregnancy > 20 weeks"
* $nemsis-injury#2904023 "Other EMS judgment"
* $nemsis-injury#2904025 "Burn, without other trauma (DEPRECATED)"
* $nemsis-injury#2904027 "Burns in conjunction with trauma"
* $nemsis-injury#2904029 "Auto Crash: Child (age 0-9 years) unrestrained or in unsecured child safety seat"
* $nemsis-injury#2904031 "Fall from height > 10 feet (all ages)"
* $nemsis-injury#2904033 "Low-level falls in young children (age <= 5 years) or older adults (age >= 65 years) with significant head impact"
* $nemsis-injury#2904035 "Rider separated from transport vehicle with significant impact (eg, motorcycle, ATV, horse, etc.)"
* $nemsis-injury#2904037 "Special, high-resource healthcare needs"
* $nemsis-injury#2904039 "Suspicion of child abuse"

// eInjury.06 — Location of Patient in Vehicle
ValueSet: EMSSeatRowLocationVS
Id: vs-ems-seat-row-location
Title: "EMS Seat Row Location VS"
Description: "The seat row location of the patient in the vehicle at the time of the crash (eInjury.06)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-seat-row-location"
* ^status = #active
* ^experimental = false
* $nemsis-injury#2906001 "Front Seat-Left Side (or motorcycle driver)"
* $nemsis-injury#2906003 "Front Seat-Middle"
* $nemsis-injury#2906005 "Front Seat-Right Side"
* $nemsis-injury#2906007 "Passenger in other enclosed passenger or cargo area (non-trailing unit such as a bus, etc.)"
* $nemsis-injury#2906009 "Passenger in unenclosed passenger or cargo area (non-trailing unit such as a pickup, etc.)"
* $nemsis-injury#2906011 "Riding on Vehicle Exterior (non-trailing unit)"
* $nemsis-injury#2906013 "Second Seat-Left Side (or motorcycle passenger)"
* $nemsis-injury#2906015 "Second Seat-Middle"
* $nemsis-injury#2906017 "Second Seat-Right Side"
* $nemsis-injury#2906019 "Sleeper Section of Cab (truck)"
* $nemsis-injury#2906021 "Third Row-Left Side (or motorcycle passenger)"
* $nemsis-injury#2906023 "Third Row-Middle"
* $nemsis-injury#2906025 "Third Row-Right Side"
* $nemsis-injury#2906027 "Trailing Unit"
* $nemsis-injury#2906029 "Unknown"

// eInjury.07 — Use of Occupant Safety Equipment
ValueSet: EMSSafetyEquipmentVS
Id: vs-ems-safety-equipment
Title: "EMS Occupant Safety Equipment VS"
Description: "Occupant safety equipment in use by the patient at the time of the injury (eInjury.07)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-safety-equipment"
* ^status = #active
* ^experimental = false
* $nemsis-injury#2907001 "Child Booster Seat"
* $nemsis-injury#2907003 "Eye Protection"
* $nemsis-injury#2907005 "Helmet Worn"
* $nemsis-injury#2907007 "Infant Car Seat Forward Facing"
* $nemsis-injury#2907009 "Infant Car Seat Rear Facing"
* $nemsis-injury#2907015 "None"
* $nemsis-injury#2907017 "Other"
* $nemsis-injury#2907019 "Personal Floatation Device"
* $nemsis-injury#2907021 "Protective Clothing"
* $nemsis-injury#2907023 "Protective Non-Clothing Gear"
* $nemsis-injury#2907027 "Shoulder and Lap Belt Used"
* $nemsis-injury#2907029 "Lap Belt Only Used"
* $nemsis-injury#2907031 "Shoulder Belt Only Used"
* $nemsis-injury#2907033 "Unable to Determine"

// eInjury.08 — Airbag Deployment
ValueSet: EMSAirbagDeploymentVS
Id: vs-ems-airbag-deployment
Title: "EMS Airbag Deployment VS"
Description: "Airbag deployment status observed at the crash (eInjury.08)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-airbag-deployment"
* ^status = #active
* ^experimental = false
* $nemsis-injury#2908001 "Airbag Deployed Front"
* $nemsis-injury#2908003 "Airbag Deployed Side"
* $nemsis-injury#2908005 "Airbag Deployed Other (knee, air belt, etc.)"
* $nemsis-injury#2908007 "No Airbag Deployed"
* $nemsis-injury#2908009 "No Airbag Present"

// eInjury.10 — OSHA Personal Protective Equipment Used
ValueSet: EMSOSHAPPEVS
Id: vs-ems-osha-ppe
Title: "EMS OSHA Personal Protective Equipment VS"
Description: "OSHA-defined personal protective equipment in use by the patient at the time of a work-related injury (eInjury.10)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-osha-ppe"
* ^status = #active
* ^experimental = false
* $nemsis-injury#2910001 "Eye and Face Protection"
* $nemsis-injury#2910003 "Foot Protection"
* $nemsis-injury#2910005 "Head Protection"
* $nemsis-injury#2910007 "Hearing Protection"
* $nemsis-injury#2910009 "Respiratory Protection"
* $nemsis-injury#2910011 "Safety Belts, lifelines, and lanyards"
* $nemsis-injury#2910013 "Safety Nets"

// eInjury.26 — ACN Vehicle Seat Location
ValueSet: EMSACNSeatLocationVS
Id: vs-ems-acn-seat-location
Title: "EMS ACN Vehicle Seat Location VS"
Description: "Automated Collision Notification (ACN) vehicle seat location of the patient (eInjury.26)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-acn-seat-location"
* ^status = #active
* ^experimental = false
* $nemsis-injury#2926001 "Driver Front Seat"
* $nemsis-injury#2926003 "Front Row Middle Seat"
* $nemsis-injury#2926005 "Passenger Front Seat"
* $nemsis-injury#2926007 "Second Row Left Seat"
* $nemsis-injury#2926009 "Second Row Middle Seat"
* $nemsis-injury#2926011 "Second Row Right Seat"
* $nemsis-injury#2926013 "Third Row Left Seat"
* $nemsis-injury#2926015 "Third Row Middle Seat"
* $nemsis-injury#2926017 "Third Row Right Seat"
