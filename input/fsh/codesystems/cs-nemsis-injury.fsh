// ============================================================
// CodeSystem: NEMSIS eInjury Codes
// NEMSIS 3.5.1.251001CP2 — eInjury section
// ============================================================

CodeSystem: NEMSISInjury
Id: cs-nemsis-injury
Title: "NEMSIS eInjury Code System"
Description: "Enumeration codes from the NEMSIS 3.5.1 eInjury section covering mechanism of injury, CDC trauma triage criteria (high and moderate risk), vehicle occupant location, occupant safety equipment, airbag deployment, OSHA personal protective equipment, and ACN vehicle seat location."
* ^version = "3.5.1.251001CP2"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.1.6"
* ^caseSensitive = true
* ^content = #complete

// eInjury.02 — Mechanism of Injury
* #2902001 "Blunt"
* #2902003 "Burn"
* #2902005 "Other"
* #2902007 "Penetrating"

// eInjury.03 — Trauma Triage Criteria (High Risk for Serious Injury)
* #2903001 "Amputation proximal to wrist or ankle"
* #2903003 "Crushed, degloved, mangled, or pulseless extremity"
* #2903005 "Chest wall instability, deformity, or suspected flail chest"
* #2903007 "Glasgow Coma Score <= 13 (DEPRECATED)"
* #2903009 "Skull deformity, suspected skull fracture"
* #2903011 "Paralysis (DEPRECATED)"
* #2903013 "Suspected pelvic fracture"
* #2903015 "Penetrating injuries to head, neck, torso, and proximal extremities"
* #2903017 "Respiratory Rate <10 or >29 breaths per minute (<20 in infants aged <1 year) or need for ventilatory support (DEPRECATED)"
* #2903019 "Systolic Blood Pressure <90 mmHg (DEPRECATED)"
* #2903021 "Suspected fracture of two or more proximal long bones"
* #2903023 "Active bleeding requiring a tourniquet or wound packing with continuous pressure"
* #2903025 "Age >= 10 years: HR > SBP"
* #2903027 "Age >= 65 years: SBP < 110 mmHg"
* #2903029 "Age 0-9 years: SBP < 70mm Hg + (2 x age in years)"
* #2903031 "Age 10-64 years: SBP < 90 mmHg"
* #2903033 "Respiratory distress or need for respiratory support"
* #2903035 "Room-air pulse oximetry < 90%"
* #2903037 "RR < 10 or > 29 breaths/min"
* #2903039 "Suspected spinal injury with new motor or sensory loss"
* #2903041 "Unable to follow commands (motor GCS < 6)"

// eInjury.04 — Trauma Triage Criteria (Moderate Risk for Serious Injury)
* #2904001 "Pedestrian/bicycle rider thrown, run over, or with significant impact"
* #2904003 "Fall Adults: > 20 ft. (one story is equal to 10 ft.) (DEPRECATED)"
* #2904005 "Fall Children: > 10 ft. or 2-3 times the height of the child (DEPRECATED)"
* #2904007 "Auto Crash: Death in passenger compartment"
* #2904009 "Auto Crash: Partial or complete ejection"
* #2904011 "Auto Crash: Significant intrusion (including roof): >12 inches occupant site; >18 inches any site; need for extrication"
* #2904013 "Auto Crash: Vehicle telemetry data consistent with severe injury"
* #2904015 "Motorcycle Crash > 20 MPH (DEPRECATED)"
* #2904017 "SBP < 110 for age > 65 (DEPRECATED)"
* #2904019 "Anticoagulant use"
* #2904021 "Pregnancy > 20 weeks"
* #2904023 "Other EMS judgment"
* #2904025 "Burn, without other trauma (DEPRECATED)"
* #2904027 "Burns in conjunction with trauma"
* #2904029 "Auto Crash: Child (age 0-9 years) unrestrained or in unsecured child safety seat"
* #2904031 "Fall from height > 10 feet (all ages)"
* #2904033 "Low-level falls in young children (age <= 5 years) or older adults (age >= 65 years) with significant head impact"
* #2904035 "Rider separated from transport vehicle with significant impact (eg, motorcycle, ATV, horse, etc.)"
* #2904037 "Special, high-resource healthcare needs"
* #2904039 "Suspicion of child abuse"

// eInjury.06 — Location of Patient in Vehicle
* #2906001 "Front Seat-Left Side (or motorcycle driver)"
* #2906003 "Front Seat-Middle"
* #2906005 "Front Seat-Right Side"
* #2906007 "Passenger in other enclosed passenger or cargo area (non-trailing unit such as a bus, etc.)"
* #2906009 "Passenger in unenclosed passenger or cargo area (non-trailing unit such as a pickup, etc.)"
* #2906011 "Riding on Vehicle Exterior (non-trailing unit)"
* #2906013 "Second Seat-Left Side (or motorcycle passenger)"
* #2906015 "Second Seat-Middle"
* #2906017 "Second Seat-Right Side"
* #2906019 "Sleeper Section of Cab (truck)"
* #2906021 "Third Row-Left Side (or motorcycle passenger)"
* #2906023 "Third Row-Middle"
* #2906025 "Third Row-Right Side"
* #2906027 "Trailing Unit"
* #2906029 "Unknown"

// eInjury.07 — Use of Occupant Safety Equipment
* #2907001 "Child Booster Seat"
* #2907003 "Eye Protection"
* #2907005 "Helmet Worn"
* #2907007 "Infant Car Seat Forward Facing"
* #2907009 "Infant Car Seat Rear Facing"
* #2907015 "None"
* #2907017 "Other"
* #2907019 "Personal Floatation Device"
* #2907021 "Protective Clothing"
* #2907023 "Protective Non-Clothing Gear"
* #2907027 "Shoulder and Lap Belt Used"
* #2907029 "Lap Belt Only Used"
* #2907031 "Shoulder Belt Only Used"
* #2907033 "Unable to Determine"

// eInjury.08 — Airbag Deployment
* #2908001 "Airbag Deployed Front"
* #2908003 "Airbag Deployed Side"
* #2908005 "Airbag Deployed Other (knee, air belt, etc.)"
* #2908007 "No Airbag Deployed"
* #2908009 "No Airbag Present"

// eInjury.10 — OSHA Personal Protective Equipment Used
* #2910001 "Eye and Face Protection"
* #2910003 "Foot Protection"
* #2910005 "Head Protection"
* #2910007 "Hearing Protection"
* #2910009 "Respiratory Protection"
* #2910011 "Safety Belts, lifelines, and lanyards"
* #2910013 "Safety Nets"

// eInjury.26 — ACN Vehicle Seat Location
* #2926001 "Driver Front Seat"
* #2926003 "Front Row Middle Seat"
* #2926005 "Passenger Front Seat"
* #2926007 "Second Row Left Seat"
* #2926009 "Second Row Middle Seat"
* #2926011 "Second Row Right Seat"
* #2926013 "Third Row Left Seat"
* #2926015 "Third Row Middle Seat"
* #2926017 "Third Row Right Seat"
