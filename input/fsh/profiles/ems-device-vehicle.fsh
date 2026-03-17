// ============================================================
// EMS Device — Vehicle
// NEMSIS: dVehicle section (13 elements)
// Derived from: FHIR R4 Device (no US Core profile)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSDeviceVehicle
Parent: Device
Id: ems-device-vehicle
Title: "EMS Vehicle Device"
Description: """
  EMS vehicle/unit Device derived directly from FHIR R4 Device.
  No US Core profile exists for Device. Represents NEMSIS dVehicle
  section (Version 3.5.1.251001CP2) — agency-level demographics
  about the EMS vehicle/unit.

  dVehicle elements that are Optional or Recommended are represented
  as MS only when Recommended per NEMSIS.
"""

// ── Identifier ────────────────────────────────────────────────
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open

* identifier contains
    unitNumber  0..1 MS and
    vin         0..1 MS and
    callSign    0..1 MS

* identifier[unitNumber]
  * ^short = "dVehicle.01 - Unit/Vehicle Number"
  * ^comment = "NEMSIS dVehicle.01. Usage: Recommended. Agency-assigned vehicle number."
  * use = #official
  * type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
  * type.coding.code = #VN

* identifier[vin]
  * ^short = "dVehicle.02 - Vehicle Identification Number (VIN)"
  * ^comment = "NEMSIS dVehicle.02. Usage: Optional. 17-character vehicle identification number."
  * use = #secondary
  * system = "http://hl7.org/fhir/us/emscore/identifier/vin"

* identifier[callSign]
  * ^short = "dVehicle.03 - EMS Unit Call Sign"
  * ^comment = "NEMSIS dVehicle.03. Usage: Optional. Radio call sign for the unit."
  * use = #usual

// ── dVehicle.04 - Vehicle Type ────────────────────────────────
* type MS
* type from EMSVehicleTypeVS (required)
  * ^short = "dVehicle.04 - Vehicle Type"
  * ^comment = "NEMSIS dVehicle.04. Usage: Recommended. The type of EMS vehicle."

// ── dVehicle.10 - Vehicle Model Year ─────────────────────────
* manufactureDate MS
  * ^short = "dVehicle.10 - Vehicle Model Year"
  * ^comment = "NEMSIS dVehicle.10. Usage: Recommended. Set to the first day of the model year (e.g., 2020-01-01)."

// ── Owner Organization ────────────────────────────────────────
* owner MS
* owner only Reference(EMSOrganization)
  * ^short = "EMS agency that owns/operates this vehicle"

// ── Status ────────────────────────────────────────────────────
* status MS
  * ^comment = "Use 'active' for vehicles currently in service."
