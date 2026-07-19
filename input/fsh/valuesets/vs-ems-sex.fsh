// ============================================================
// EMS Sex ValueSet
// NEMSIS ePatient.25 - Sex
// ============================================================

ValueSet: EMSSexVS
Id: vs-ems-sex
Title: "EMS Sex"
Description: """
  NEMSIS ePatient.25 - The patient's sex as recorded by EMS.
  Used for documentation and mapping to Patient.gender and the us-core-birthsex extension.
  Note: ePatient.13 (Gender) is DEPRECATED in NEMSIS 3.5.1.251001CP2 — use ePatient.25 (Sex) instead.
"""
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-sex"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.114"

* $nemsis-patient-cs#9919001 "Female"
* $nemsis-patient-cs#9919003 "Male"
* $nemsis-patient-cs#9919005 "Unknown"
