// ============================================================
// Example: EMS Device (Vehicle)
// Scenario: Riverside County EMS ALS ambulance (dVehicle)
// NEMSIS dVehicle section
// ============================================================

Instance: ex-ems-device-vehicle
InstanceOf: EMSDeviceVehicle
Title: "Example EMS Device — ALS Ambulance"
Description: "Example vehicle device demonstrating the EMSDeviceVehicle profile. Riverside County EMS Unit 4321, a Type I ALS-equipped ground ambulance."
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-device-vehicle"

// dVehicle.01 - EMS Unit Number (use = official)
* identifier[unitNumber].use = #official
* identifier[unitNumber].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[unitNumber].type.coding[0].code = #VN
* identifier[unitNumber].system = "http://example.org/ems/units"
* identifier[unitNumber].value = "4321"

// dVehicle.02 - Vehicle Identification Number (use = secondary)
* identifier[vin].use = #secondary
* identifier[vin].system = "http://hl7.org/fhir/us/emscore/identifier/vin"
* identifier[vin].value = "1FDFE4FS0GDA12345"

// dVehicle.03 - EMS Unit Call Sign (use = usual)
* identifier[callSign].use = #usual
* identifier[callSign].system = "http://example.org/ems/callsigns"
* identifier[callSign].value = "Medic 21"

// dVehicle.04 - Vehicle Type → Ambulance
* type.coding[0].system = "http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-codes"
* type.coding[0].code = #1404001
* type.coding[0].display = "Ambulance"

// dVehicle.10 - Model Year
* manufactureDate = "2022-01-01"

// Owner — EMS agency
* owner = Reference(ex-ems-organization-agency)
