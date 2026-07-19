// ============================================================
// EMS Vehicle ValueSets
// NEMSIS dVehicle section — NEMSIS 3.5.1.251001CP2
// ============================================================

// ── EMSVehicleTypeVS ──────────────────────────────────────────
// NEMSIS: dVehicle.04 - Vehicle Type (Recommended)
ValueSet: EMSVehicleTypeVS
Id: vs-ems-vehicle-type
Title: "EMS Vehicle Type"
Description: "NEMSIS dVehicle.04 - The type of EMS vehicle."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-vehicle-type"
* ^status = #active
* ^experimental = true
* $nemsis-cs#1404001 "Ambulance"
* $nemsis-cs#1404003 "ATV"
* $nemsis-cs#1404005 "Bicycle"
* $nemsis-cs#1404007 "Fire Apparatus"
* $nemsis-cs#1404009 "Fixed Wing"
* $nemsis-cs#1404011 "Motorcycle"
* $nemsis-cs#1404013 "Other"
* $nemsis-cs#1404015 "Personal Vehicle"
* $nemsis-cs#1404017 "Quick Response Vehicle (Non-Transport Vehicle other than Fire Apparatus)"
* $nemsis-cs#1404019 "Rescue"
* $nemsis-cs#1404021 "Rotor Craft"
* $nemsis-cs#1404023 "Snow Vehicle"
* $nemsis-cs#1404025 "Watercraft"
