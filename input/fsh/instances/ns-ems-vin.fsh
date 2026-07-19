// ============================================================
// NamingSystem: EMS Vehicle Identification Number (VIN)
// Defines the identifier system for NEMSIS dVehicle.02 VIN
// ============================================================

Instance: ns-ems-vin
InstanceOf: NamingSystem
Title: "EMS Vehicle Identification Number (VIN) Identifier System"
Description: "Identifier system for the 17-character Vehicle Identification Number (VIN) used to uniquely identify EMS vehicles. NEMSIS dVehicle.02."
Usage: #definition

* name = "EMSVehicleVIN"
* status = #active
* kind = #identifier
* date = "2026-03-15"
* publisher = "fhirEMSCore"
* description = "Identifier system for the Vehicle Identification Number (VIN) as used in EMS vehicle (dVehicle.02) records within the fhirEMSCore Implementation Guide."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://fhirems.github.io/fhirEMSCoreIG/identifier/vin"
* uniqueId[0].preferred = true
