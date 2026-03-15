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
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-sex"
* ^status = #active
* ^experimental = false

* $nemsis-patient-cs#9919001 "Female"
* $nemsis-patient-cs#9919003 "Male"
* $nemsis-patient-cs#9919005 "Unknown"
