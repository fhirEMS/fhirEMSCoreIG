// ============================================================
// NEMSIS ePatient CodeSystem
// NEMSIS 3.5.1.251001CP2 — ePatient section enumeration codes
// ============================================================

CodeSystem: NEMSISPatientCodes
Id: nemsis-patient
Title: "NEMSIS ePatient Codes"
Description: """
  Enumeration codes from the NEMSIS 3.5.1.251001CP2 ePatient section.
  Includes codes for Sex (ePatient.25), Age Units (ePatient.16),
  and Alternate Home Residence (ePatient.22).
  Race codes (ePatient.14) are mapped to OMB/CDC categories used in us-core-race.
"""
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.1.17"

// ── ePatient.25 - Sex ────────────────────────────────────────
* #9919001 "Female"
    "NEMSIS ePatient.25: Female sex as documented at the time of the EMS encounter."
* #9919003 "Male"
    "NEMSIS ePatient.25: Male sex as documented at the time of the EMS encounter."
* #9919005 "Unknown"
    "NEMSIS ePatient.25: Sex is unknown or unable to be determined."

// ── ePatient.16 - Age Units ──────────────────────────────────
* #2516001 "Days"
    "NEMSIS ePatient.16: Patient age expressed in days."
* #2516003 "Hours"
    "NEMSIS ePatient.16: Patient age expressed in hours."
* #2516005 "Minutes"
    "NEMSIS ePatient.16: Patient age expressed in minutes."
* #2516007 "Months"
    "NEMSIS ePatient.16: Patient age expressed in months."
* #2516009 "Years"
    "NEMSIS ePatient.16: Patient age expressed in years."

// ── ePatient.22 - Alternate Home Residence ───────────────────
* #2522001 "Homeless"
    "NEMSIS ePatient.22: Patient's primary residence is a shelter, street, or other location without permanent housing."
* #2522003 "Migrant Worker"
    "NEMSIS ePatient.22: Patient is a migrant worker without a fixed permanent address."
* #2522005 "Foreign Visitor"
    "NEMSIS ePatient.22: Patient is a visitor from a foreign country without a US home address."
