// ============================================================
// EMS Alternate Home Residence ValueSet
// NEMSIS ePatient.22 - Alternate Home Residence
// ============================================================

ValueSet: EMSAlternateResidenceVS
Id: vs-ems-alternate-residence
Title: "EMS Alternate Home Residence"
Description: "NEMSIS ePatient.22 - Codes describing a patient's alternate home residence situation when a standard home address is not applicable."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-alternate-residence"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.18"

* $nemsis-patient-cs#2522001 "Homeless"
* $nemsis-patient-cs#2522003 "Migrant Worker"
* $nemsis-patient-cs#2522005 "Foreign Visitor"
