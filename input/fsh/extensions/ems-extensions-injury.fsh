// ============================================================
// Extensions: EMS Injury (eInjury)
// NEMSIS 3.5.1.251001CP2 — eInjury.02–.29
// eInjury.01 (Cause of Injury) maps directly to Condition.code.
// ============================================================

// ── Extension: EMS Injury Context ────────────────────────────
// Groups NEMSIS eInjury elements that have no direct FHIR base
// element — attached to the injury Condition resource.
Extension: EMSInjuryContext
Id: ext-ems-injury-context
Title: "EMS Injury Context"
Description: "Contextual data for NEMSIS eInjury not directly representable in FHIR Condition: mechanism of injury, CDC trauma triage criteria (high and moderate risk), vehicle impact area, patient location in vehicle, occupant safety equipment, airbag deployment, height of fall, and OSHA personal protective equipment."
Context: Condition
* extension contains
    mechanismOfInjury        0..* MS and   // eInjury.02
    traumaTriageHighRisk     0..* MS and   // eInjury.03
    traumaTriageModerateRisk 0..* MS and   // eInjury.04
    vehicleImpactArea        0..1    and   // eInjury.05
    patientVehicleLocation   0..1    and   // eInjury.06
    safetyEquipment          0..* MS and   // eInjury.07
    airbagDeployment         0..*    and   // eInjury.08
    heightOfFall             0..1    and   // eInjury.09
    oshaPPE                  0..*          // eInjury.10

* extension[mechanismOfInjury]
  * ^short = "eInjury.02 - Mechanism of Injury"
  * ^comment = "NEMSIS eInjury.02. Usage: Recommended. Nillable. NV: NotRecorded. Repeating (0..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSMechanismOfInjuryVS (required)

* extension[traumaTriageHighRisk]
  * ^short = "eInjury.03 - Trauma Triage Criteria (High Risk for Serious Injury)"
  * ^comment = "NEMSIS eInjury.03. Usage: Required/National. Nillable. NV: NotRecorded. PN: ExamFindingNotPresent. CDC Field Triage Guideline red criteria. Repeating (1..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSTraumaTriageHighRiskVS (required)

* extension[traumaTriageModerateRisk]
  * ^short = "eInjury.04 - Trauma Triage Criteria (Moderate Risk for Serious Injury)"
  * ^comment = "NEMSIS eInjury.04. Usage: Required/National. Nillable. NV: NotRecorded. PN: ExamFindingNotPresent. CDC Field Triage Guideline yellow criteria. Repeating (1..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSTraumaTriageModerateRiskVS (required)

* extension[vehicleImpactArea]
  * ^short = "eInjury.05 - Main Area of the Vehicle Impacted by the Collision"
  * ^comment = "NEMSIS eInjury.05. Usage: Optional (State). 12-point clock diagram: 12 = front of vehicle, 3 = passenger (right) side, 6 = rear. Integer 1–12."
  * value[x] only integer

* extension[patientVehicleLocation]
  * ^short = "eInjury.06 - Location of Patient in Vehicle"
  * ^comment = "NEMSIS eInjury.06. Usage: Optional. Seat row location of the patient at the time of the crash."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSSeatRowLocationVS (required)

* extension[safetyEquipment]
  * ^short = "eInjury.07 - Use of Occupant Safety Equipment"
  * ^comment = "NEMSIS eInjury.07. Usage: Recommended. Nillable. NV: NotRecorded. Repeating (0..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSSafetyEquipmentVS (required)

* extension[airbagDeployment]
  * ^short = "eInjury.08 - Airbag Deployment"
  * ^comment = "NEMSIS eInjury.08. Usage: Optional. Repeating (0..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAirbagDeploymentVS (required)

* extension[heightOfFall]
  * ^short = "eInjury.09 - Height of Fall (feet)"
  * ^comment = "NEMSIS eInjury.09. Usage: Optional (State). Distance in feet the patient fell, measured from the lowest point of the patient to the ground. Classify same-level falls as 0 feet. UCUM unit [ft_i]."
  * value[x] only Quantity
  * valueQuantity.system = $ucum (exactly)
  * valueQuantity.code = #[ft_i] (exactly)

* extension[oshaPPE]
  * ^short = "eInjury.10 - OSHA Personal Protective Equipment Used"
  * ^comment = "NEMSIS eInjury.10. Usage: Optional. PPE in use by the patient at the time of a work-related injury. Repeating (0..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSOSHAPPEVS (required)

// ── Extension: EMS ACN Incident ──────────────────────────────
// NEMSIS eInjury.11–.29 — Automated Collision Notification
// (ACN/AACN) telematics data received from the vehicle or a
// telematics provider (e.g., OnStar).
Extension: EMSACNIncident
Id: ext-ems-acn-incident
Title: "EMS ACN Incident"
Description: "Automated Collision Notification (ACN) telematics data for NEMSIS eInjury.11–.29: providing company, incident identifiers, date/time, GPS location, vehicle description, impact and delta velocity data, rollover, seat location, seatbelt use, and airbag deployment reported by the vehicle telematics system."
Context: Condition
* extension contains
    company                  0..1 and   // eInjury.11
    incidentId               0..1 and   // eInjury.12
    callbackPhone            0..* and   // eInjury.13
    incidentDateTime         0..1 and   // eInjury.14
    incidentLocation         0..1 and   // eInjury.15
    vehicleBodyType          0..1 and   // eInjury.16
    vehicleManufacturer      0..1 and   // eInjury.17
    vehicleMake              0..1 and   // eInjury.18
    vehicleModel             0..1 and   // eInjury.19
    vehicleModelYear         0..1 and   // eInjury.20
    multipleImpacts          0..1 and   // eInjury.21
    deltaVelocity            0..* and   // eInjury.22
    highProbabilityOfInjury  0..1 and   // eInjury.23
    pdof                     0..1 and   // eInjury.24
    rollover                 0..1 and   // eInjury.25
    seatLocation             0..1 and   // eInjury.26
    seatOccupied             0..1 and   // eInjury.27
    seatbeltUse              0..1 and   // eInjury.28
    airbagDeployed           0..1      // eInjury.29

* extension[company]
  * ^short = "eInjury.11 - ACN System/Company Providing ACN Data"
  * ^comment = "NEMSIS eInjury.11. Usage: Optional. Name of the telematics company providing the ACN data."
  * value[x] only string

* extension[incidentId]
  * ^short = "eInjury.12 - ACN Incident ID"
  * ^comment = "NEMSIS eInjury.12. Usage: Optional. Unique incident identifier assigned by the ACN provider."
  * value[x] only string

* extension[callbackPhone]
  * ^short = "eInjury.13 - ACN Call Back Phone Number"
  * ^comment = "NEMSIS eInjury.13. Usage: Optional. Phone number for contacting the ACN provider or vehicle occupants. Repeating (0..M)."
  * value[x] only ContactPoint

* extension[incidentDateTime]
  * ^short = "eInjury.14 - Date/Time of ACN Incident"
  * ^comment = "NEMSIS eInjury.14. Usage: Optional. Date/time of the collision as reported by the telematics system."
  * value[x] only dateTime

* extension[incidentLocation]
  * ^short = "eInjury.15 - ACN Incident Location (GPS)"
  * ^comment = "NEMSIS eInjury.15. Usage: Optional. GPS coordinates reported by the telematics system in NEMSIS GPSLocation format: 'latitude,longitude' in signed decimal degrees."
  * value[x] only string

* extension[vehicleBodyType]
  * ^short = "eInjury.16 - ACN Incident Vehicle Body Type"
  * ^comment = "NEMSIS eInjury.16. Usage: Optional."
  * value[x] only string

* extension[vehicleManufacturer]
  * ^short = "eInjury.17 - ACN Incident Vehicle Manufacturer"
  * ^comment = "NEMSIS eInjury.17. Usage: Optional."
  * value[x] only string

* extension[vehicleMake]
  * ^short = "eInjury.18 - ACN Incident Vehicle Make"
  * ^comment = "NEMSIS eInjury.18. Usage: Optional."
  * value[x] only string

* extension[vehicleModel]
  * ^short = "eInjury.19 - ACN Incident Vehicle Model"
  * ^comment = "NEMSIS eInjury.19. Usage: Optional."
  * value[x] only string

* extension[vehicleModelYear]
  * ^short = "eInjury.20 - ACN Incident Vehicle Model Year"
  * ^comment = "NEMSIS eInjury.20. Usage: Optional. Year-precision date (e.g., 2024)."
  * value[x] only date

* extension[multipleImpacts]
  * ^short = "eInjury.21 - ACN Incident Multiple Impacts"
  * ^comment = "NEMSIS eInjury.21. Usage: Optional. NEMSIS YesNoValues (9923001 No / 9923003 Yes) mapped to boolean."
  * value[x] only boolean

* extension[deltaVelocity]
  * ^short = "eInjury.22 - ACN Incident Delta Velocity"
  * ^comment = "NEMSIS eInjury.22. Usage: Optional. Change in velocity at impact reported by vehicle telemetry; NEMSIS VelocityUnit attribute determines MPH (UCUM [mi_i]/h) or KPH (km/h). Repeating (0..M) — one repetition per impact."
  * value[x] only Quantity
  * valueQuantity.system = $ucum (exactly)

* extension[highProbabilityOfInjury]
  * ^short = "eInjury.23 - ACN High Probability of Injury"
  * ^comment = "NEMSIS eInjury.23. Usage: Optional. Telemetry-predicted high probability of severe injury. NEMSIS YesNoValues mapped to boolean."
  * value[x] only boolean

* extension[pdof]
  * ^short = "eInjury.24 - ACN Incident PDOF"
  * ^comment = "NEMSIS eInjury.24. Usage: Optional. Principal Direction of Force to nearest clock reading: integer 1–12 (12 = frontal collision, 3 = passenger/right side)."
  * value[x] only integer

* extension[rollover]
  * ^short = "eInjury.25 - ACN Incident Rollover"
  * ^comment = "NEMSIS eInjury.25. Usage: Optional. ACNYesNoType (Y/N) mapped to boolean."
  * value[x] only boolean

* extension[seatLocation]
  * ^short = "eInjury.26 - ACN Vehicle Seat Location"
  * ^comment = "NEMSIS eInjury.26. Usage: Optional. Patient seat location reported by vehicle telemetry."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSACNSeatLocationVS (required)

* extension[seatOccupied]
  * ^short = "eInjury.27 - Seat Occupied"
  * ^comment = "NEMSIS eInjury.27. Usage: Optional. ACNYesNoType (Y/N) mapped to boolean."
  * value[x] only boolean

* extension[seatbeltUse]
  * ^short = "eInjury.28 - ACN Incident Seatbelt Use"
  * ^comment = "NEMSIS eInjury.28. Usage: Optional. ACNYesNoType (Y/N) mapped to boolean."
  * value[x] only boolean

* extension[airbagDeployed]
  * ^short = "eInjury.29 - ACN Incident Airbag Deployed"
  * ^comment = "NEMSIS eInjury.29. Usage: Optional. ACNYesNoType (Y/N) mapped to boolean."
  * value[x] only boolean
