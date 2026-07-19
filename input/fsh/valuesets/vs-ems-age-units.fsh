// ============================================================
// EMS Age Units ValueSet
// NEMSIS ePatient.16 - Age Units
// ============================================================

ValueSet: EMSAgeUnitsVS
Id: vs-ems-age-units
Title: "EMS Age Units"
Description: "NEMSIS ePatient.16 - Units of measure for the patient's age when exact date of birth is unknown. Used alongside ePatient.15 (Age)."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-age-units"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.5"

* $nemsis-patient-cs#2516001 "Days"
* $nemsis-patient-cs#2516003 "Hours"
* $nemsis-patient-cs#2516005 "Minutes"
* $nemsis-patient-cs#2516007 "Months"
* $nemsis-patient-cs#2516009 "Years"
