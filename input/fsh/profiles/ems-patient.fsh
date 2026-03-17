// ============================================================
// EMS Patient Profile
// Maps to: NEMSIS ePatient section (ePatient.01–ePatient.25)
// Derived from: US Core Patient 6.1.0
// FHIR R4 / US Core 6.1.0 / NEMSIS 3.5.1.251001CP2
// ============================================================

Profile: EMSPatient
Parent: $us-core-patient
Id: ems-patient
Title: "EMS Patient"
Description: """
  Constraints on US Core Patient for the NEMSIS 3.5.1.251001CP2 ePatient section
  (25 elements). Adds three EMS-specific extensions: census tract (ePatient.11),
  alternate home residence (ePatient.22), and estimated age (ePatient.15/16) for
  use when date of birth is unknown. See the EMS Patient mapping page for the
  full NEMSIS element → FHIR cross-reference.
"""

// ─────────────────────────────────────────────────────────────
// EMS EXTENSIONS — all declared together
// ePatient.11 / ePatient.15–16 / ePatient.22
// ─────────────────────────────────────────────────────────────

* extension contains
    EMSCensusTract named censusTract 0..1 and
    EMSPatientAge named estimatedAge 0..1 MS and
    EMSAlternateResidence named alternateResidence 0..1 MS

// ePatient.11 - Patient Home Census Tract (Optional)
* extension[censusTract]
  * ^short = "ePatient.11 - Patient Home Census Tract"
  * ^comment = "NEMSIS ePatient.11. Usage: Optional. US Census Bureau census tract string for the patient's home address. No NV or PN."

// ePatient.15 + ePatient.16 - Age / Age Units (Required/National)
* extension[estimatedAge]
  * ^short = "ePatient.15/16 - Patient Age and Age Units"
  * ^comment = """
    NEMSIS ePatient.15 (Age value) and ePatient.16 (Age Units). Both Required/National.
    Populate this extension only when birthDate (ePatient.17) is unknown or unavailable.
    When birthDate is known, derive age computationally at the time of the encounter.
    See EMSPatientAge extension definition for NV/PN details on each sub-element.
  """

// ePatient.22 - Alternate Home Residence (Recommended)
* extension[alternateResidence]
  * ^short = "ePatient.22 - Alternate Home Residence"
  * ^comment = "NEMSIS ePatient.22. Usage: Recommended/Nillable. NV: NotRecorded, NotApplicable. Codes: Homeless (2522001), Migrant Worker (2522003), Foreign Visitor (2522005). Use when a standard home ZIP code is not applicable."

// ─────────────────────────────────────────────────────────────
// IDENTIFIERS
// ePatient.01 / ePatient.12 / ePatient.20–21
// ─────────────────────────────────────────────────────────────
// No formal slicing — R4 discriminator evaluation for type-based
// identifier slices is unreliable and causes validation errors.
// ePatient.01: EMS Patient ID — system = agency-assigned URL, type = MR
// ePatient.12: SSN — system = http://hl7.org/fhir/sid/us-ssn, type = SS
// ePatient.20/21: Driver's License — system = state-specific URL, type = DL

// ─────────────────────────────────────────────────────────────
// NAME — ePatient.02, 03, 04, 23
// ─────────────────────────────────────────────────────────────

* name 1..* MS
* name
  * ^short = "ePatient.02/03/04/23 - Patient name"
  * ^comment = "Last (ePatient.02, Recommended), First (ePatient.03, Recommended), Middle (ePatient.04, Optional), Suffix (ePatient.23, Optional). NV/PN apply to ePatient.02 and ePatient.03 only."

* name.family MS
* name.family
  * ^short = "ePatient.02 - Last Name"
  * ^comment = "NEMSIS ePatient.02. Usage: Recommended/Nillable. NV: NotReporting, NotRecorded, NotApplicable. PN: UnableToComplete, Refused."

* name.given MS
* name.given
  * ^short = "ePatient.03/04 - First Name (given[0]) / Middle Initial or Name (given[1])"
  * ^comment = "NEMSIS ePatient.03 (given[0], Recommended/Nillable) and ePatient.04 (given[1], Optional). NV: NotReporting, NotRecorded, NotApplicable (ePatient.03 only). PN: UnableToComplete, Refused (ePatient.03 only)."

* name.suffix MS
* name.suffix
  * ^short = "ePatient.23 - Name Suffix"
  * ^comment = "NEMSIS ePatient.23. Usage: Optional. No NV or PN. Examples: Jr., Sr., II, III."

// ─────────────────────────────────────────────────────────────
// SEX — ePatient.25 (Required/National)
// NOTE: ePatient.13 (Gender) DEPRECATED in NEMSIS 3.5.1 — use ePatient.25 only.
// ─────────────────────────────────────────────────────────────

* gender 1..1 MS
* gender
  * ^short = "ePatient.25 - Sex"
  * ^comment = """
    NEMSIS ePatient.25. Usage: Required/National/Nillable.
    NV: NotReporting, NotRecorded, NotApplicable. PN: UnableToComplete, Refused.

    NEMSIS code → FHIR AdministrativeGender:
      9919001 Female  → #female
      9919003 Male    → #male
      9919005 Unknown → #unknown

    ePatient.13 (Gender) is DEPRECATED in NEMSIS 3.5.1.251001CP2.
    Do not populate ePatient.13. Use ePatient.25 exclusively.
  """

* extension[us-core-birthsex] MS
* extension[us-core-birthsex]
  * ^short = "ePatient.25 - Sex (us-core-birthsex)"
  * ^comment = "NEMSIS ePatient.25 → us-core-birthsex. Female(9919001)→F, Male(9919003)→M, Unknown(9919005)→UNK."

// ─────────────────────────────────────────────────────────────
// RACE AND ETHNICITY — ePatient.14 (Required/National)
// ─────────────────────────────────────────────────────────────

* extension[us-core-race] MS
* extension[us-core-race]
  * ^short = "ePatient.14 - Race"
  * ^comment = """
    NEMSIS ePatient.14. Usage: Required/National. Repeating (1..M). Nillable.
    NV: NotRecorded, NotApplicable. PN: UnableToComplete, Unresponsive, Refused.

    NEMSIS code → OMB/CDC race (urn:oid:2.16.840.1.113883.6.238):
      2514001 American Indian or Alaska Native    → #1002-5
      2514003 Asian                               → #2028-9
      2514005 Black or African American           → #2054-5
      2514009 Native Hawaiian or Pacific Islander → #2076-8
      2514011 White                               → #2106-3
      2514013 Middle Eastern or North African     → #2131-1 (Other Race)
      2514007 Hispanic or Latino                  → use extension[us-core-ethnicity]
  """

* extension[us-core-ethnicity] MS
* extension[us-core-ethnicity]
  * ^short = "ePatient.14 - Ethnicity (Hispanic or Latino)"
  * ^comment = "NEMSIS ePatient.14 code 2514007. When present, populate with urn:oid:2.16.840.1.113883.6.238#2135-2 (Hispanic or Latino)."

// ─────────────────────────────────────────────────────────────
// DATE OF BIRTH — ePatient.17 (Recommended)
// When unknown, populate extension[estimatedAge] with ePatient.15/16 values.
// ─────────────────────────────────────────────────────────────

* birthDate MS
* birthDate
  * ^short = "ePatient.17 - Date of Birth"
  * ^comment = """
    NEMSIS ePatient.17. Usage: Recommended/Nillable.
    NV: NotReporting, NotRecorded, NotApplicable. PN: UnableToComplete, Refused.

    When birthDate is known: derive ePatient.15 (Age) and ePatient.16 (Age Units)
    computationally at the time of the encounter.
    When birthDate is unknown: populate extension[estimatedAge] with the
    NEMSIS-reported age value (ePatient.15) and age units (ePatient.16).
  """

// ─────────────────────────────────────────────────────────────
// ADDRESS — ePatient.05–10
// ─────────────────────────────────────────────────────────────

* address MS
* address
  * ^short = "ePatient.05–10 - Patient home address"
  * ^comment = "ePatient.05 line, ePatient.06 city, ePatient.07 county, ePatient.08 state, ePatient.09 ZIP, ePatient.10 country."

* address.line MS
* address.line
  * ^short = "ePatient.05 - Patient's Home Address"
  * ^comment = "NEMSIS ePatient.05. Usage: Optional/Nillable. PN: UnableToComplete. No NV."

* address.city MS
* address.city
  * ^short = "ePatient.06 - Patient's Home City"
  * ^comment = "NEMSIS ePatient.06. Usage: Optional/Nillable. DataType: CityGnisCode — convert GNIS numeric code to plain text city name (NDR-003). PN: UnableToComplete. No NV."

* address.district MS
* address.district
  * ^short = "ePatient.07 - Patient's Home County"
  * ^comment = "NEMSIS ePatient.07. Usage: Required/National/Nillable. DataType: ANSICountyCode (5-digit FIPS string). NV: NotRecorded, NotApplicable. No PN."

* address.state MS
* address.state from http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state (extensible)
* address.state
  * ^short = "ePatient.08 - Patient's Home State"
  * ^comment = "NEMSIS ePatient.08. Usage: Required/National/Nillable. DataType: ANSIStateCode — convert 2-digit ANSI numeric to 2-letter USPS abbreviation (NDR-004). NV: NotRecorded, NotApplicable. No PN. US Core extensible binding to us-core-usps-state ValueSet."

* address.postalCode MS
* address.postalCode
  * ^short = "ePatient.09 - Patient's Home ZIP Code"
  * ^comment = "NEMSIS ePatient.09. Usage: Required/National/Nillable. NV: NotRecorded, NotApplicable. No PN. 5-digit or ZIP+4 format."

* address.country MS
* address.country
  * ^short = "ePatient.10 - Patient's Country of Residence"
  * ^comment = "NEMSIS ePatient.10. Usage: Optional. DataType: ANSICountryCode. Use ISO 3166-1 alpha-2 (e.g., 'US'). No NV or PN."

// ─────────────────────────────────────────────────────────────
// CONTACT INFORMATION — ePatient.18 (Phone), ePatient.19 (Email)
// ─────────────────────────────────────────────────────────────

* telecom MS
* telecom
  * ^short = "ePatient.18/19 - Phone Number and Email Address"
  * ^comment = "ePatient.18: phone, 0..M, nillable, PN: UnableToComplete — telecom.system = 'phone'. ePatient.19: email, 0..M, not nillable, no NV/PN — telecom.system = 'email'."
* telecom.system 1..1 MS
* telecom.system from http://hl7.org/fhir/ValueSet/contact-point-system (required)
  * ^comment = "US Core requires telecom.system 1..1 with required binding. Use 'phone' for ePatient.18, 'email' for ePatient.19."
* telecom.value 1..1 MS
  * ^comment = "US Core requires telecom.value 1..1."
* telecom.use MS
* telecom.use from http://hl7.org/fhir/ValueSet/contact-point-use (required)
  * ^comment = "US Core requires required binding on telecom.use."

// ─────────────────────────────────────────────────────────────
// LANGUAGE — ePatient.24 (Optional)
// ─────────────────────────────────────────────────────────────

* communication MS
* communication
  * ^short = "ePatient.24 - Patient's Preferred Language(s)"
  * ^comment = "NEMSIS ePatient.24. Usage: Optional. Repeating (0..M). Not nillable. No NV or PN. NEMSIS uses ISO 639-2/B 3-letter codes (e.g., 'eng', 'spa') — map to BCP-47 for FHIR (e.g., 'en', 'es')."
* communication.language MS
* communication.language from http://hl7.org/fhir/us/core/ValueSet/simple-language (extensible)
  * ^comment = "US Core requires extensible binding to simple-language ValueSet. Map NEMSIS ISO 639-2/B 3-letter codes to BCP-47 (e.g., 'eng' → 'en', 'spa' → 'es')."
