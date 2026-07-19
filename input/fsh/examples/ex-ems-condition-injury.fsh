// ============================================================
// Example: EMS Injury Condition
// Scenario: Driver injured in MVA on I-15 — blunt trauma,
// significant intrusion requiring extrication, ACN telematics
// NEMSIS eInjury section
// ============================================================

Instance: ex-ems-condition-injury
InstanceOf: EMSConditionInjury
Title: "Example EMS Injury Condition"
Description: "Example injury Condition demonstrating the EMSConditionInjury profile. 35-year-old male driver in a motor vehicle accident: blunt mechanism, restrained with front airbag deployment, significant vehicle intrusion requiring extrication, motor GCS 4, with ACN telematics data from the vehicle."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-condition-injury"

// eInjury.01 - Cause of Injury (ICD-10-CM external cause)
* code.coding[0] = $icd10cm#V89.2XXA "Person injured in unspecified motor-vehicle accident, traffic, initial encounter"
* code.text = "Motor vehicle traffic accident, driver"

* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active

* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed

* category[us-core].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[us-core].coding[0].code = #encounter-diagnosis
* category[us-core].coding[0].display = "Encounter Diagnosis"

* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* recorder = Reference(ex-ems-practitioner)

// Time of the collision (matches ACN incident date/time)
* onsetDateTime = "2026-03-14T14:02:00-08:00"
* recordedDate = "2026-03-14T14:25:00-08:00"

// ── eInjury Context Extension ─────────────────────────────────
// eInjury.02 - Mechanism of Injury → Blunt
* extension[injuryContext].extension[mechanismOfInjury].valueCodeableConcept
    = $nemsis-injury#2902001 "Blunt"

// eInjury.03 - Trauma Triage High Risk → Unable to follow commands (motor GCS < 6)
* extension[injuryContext].extension[traumaTriageHighRisk].valueCodeableConcept
    = $nemsis-injury#2903041 "Unable to follow commands (motor GCS < 6)"

// eInjury.04 - Trauma Triage Moderate Risk → Significant intrusion / extrication
* extension[injuryContext].extension[traumaTriageModerateRisk].valueCodeableConcept
    = $nemsis-injury#2904011 "Auto Crash: Significant intrusion (including roof): >12 inches occupant site; >18 inches any site; need for extrication"

// eInjury.05 - Main Area of Vehicle Impacted → 12 (frontal)
* extension[injuryContext].extension[vehicleImpactArea].valueInteger = 12

// eInjury.06 - Location of Patient in Vehicle → driver
* extension[injuryContext].extension[patientVehicleLocation].valueCodeableConcept
    = $nemsis-injury#2906001 "Front Seat-Left Side (or motorcycle driver)"

// eInjury.07 - Use of Occupant Safety Equipment → shoulder and lap belt
* extension[injuryContext].extension[safetyEquipment].valueCodeableConcept
    = $nemsis-injury#2907027 "Shoulder and Lap Belt Used"

// eInjury.08 - Airbag Deployment → front
* extension[injuryContext].extension[airbagDeployment].valueCodeableConcept
    = $nemsis-injury#2908001 "Airbag Deployed Front"

// ── ACN Incident Extension ────────────────────────────────────
// eInjury.11 - ACN Company
* extension[acnIncident].extension[company].valueString = "OnStar"
// eInjury.12 - ACN Incident ID
* extension[acnIncident].extension[incidentId].valueString = "ACN-2026-0314-88213"
// eInjury.14 - Date/Time of ACN Incident
* extension[acnIncident].extension[incidentDateTime].valueDateTime = "2026-03-14T14:02:00-08:00"
// eInjury.15 - ACN Incident Location (GPS lat,long)
* extension[acnIncident].extension[incidentLocation].valueString = "33.571412,-117.191256"
// eInjury.18/.19/.20 - Vehicle Make/Model/Year
* extension[acnIncident].extension[vehicleMake].valueString = "Chevrolet"
* extension[acnIncident].extension[vehicleModel].valueString = "Silverado 1500"
* extension[acnIncident].extension[vehicleModelYear].valueDate = "2024"
// eInjury.21 - Multiple Impacts → No
* extension[acnIncident].extension[multipleImpacts].valueBoolean = false
// eInjury.22 - Delta Velocity → 42 mph
* extension[acnIncident].extension[deltaVelocity].valueQuantity = 42 '[mi_i]/h' "miles per hour"
// eInjury.23 - High Probability of Injury → Yes
* extension[acnIncident].extension[highProbabilityOfInjury].valueBoolean = true
// eInjury.24 - PDOF → 12 (frontal)
* extension[acnIncident].extension[pdof].valueInteger = 12
// eInjury.25 - Rollover → No
* extension[acnIncident].extension[rollover].valueBoolean = false
// eInjury.26 - ACN Seat Location → driver front seat
* extension[acnIncident].extension[seatLocation].valueCodeableConcept
    = $nemsis-injury#2926001 "Driver Front Seat"
// eInjury.27 - Seat Occupied → Yes
* extension[acnIncident].extension[seatOccupied].valueBoolean = true
// eInjury.28 - Seatbelt Use → Yes
* extension[acnIncident].extension[seatbeltUse].valueBoolean = true
// eInjury.29 - Airbag Deployed → Yes
* extension[acnIncident].extension[airbagDeployed].valueBoolean = true
