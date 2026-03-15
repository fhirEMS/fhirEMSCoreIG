// ============================================================
// EMS Practitioner (EMS Personnel)
// NEMSIS Section: dPersonnel
// Derived from: US Core Practitioner (6.1.0)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSPractitioner
Parent: $us-core-practitioner
Id: ems-practitioner
Title: "EMS Practitioner"
Description: """
  EMS personnel demographics and licensure information derived from US Core Practitioner.
  Maps to NEMSIS dPersonnel section (Version 3.5.1.251001CP2). Captures name, state
  licensure, certification level, and demographic information.
"""

// ── dPersonnel.01/02/03 - Name ───────────────────────────────
* name 1..* MS
  * ^short = "dPersonnel.01/02/03 - Personnel Name"
  * ^comment = "NEMSIS dPersonnel.01 (Last Name), dPersonnel.02 (First Name), dPersonnel.03 (Middle Name/Initial). All Recommended. Nillable. NV: NotRecorded, NotApplicable."
* name.family 1..1 MS
  * ^short = "dPersonnel.01 - EMS Personnel's Last Name"
  * ^comment = "US Core Practitioner requires name.family 1..1 MS. NEMSIS dPersonnel.01."
* name.given MS
  * ^short = "dPersonnel.02/03 - First and Middle Name"

// ── dPersonnel.22/23/24 - State Licensure ────────────────────
// Represented as Practitioner.qualification per US Core pattern
* qualification MS
  * ^short = "dPersonnel.22–24 - State EMS Certification/Licensure"
  * ^comment = "NEMSIS dPersonnel.22 (State of Licensure), dPersonnel.23 (State Licensure ID Number), dPersonnel.24 (Certification Level). All Recommended. Nillable. NV: NotRecorded, NotApplicable."

* qualification ^slicing.discriminator.type = #pattern
* qualification ^slicing.discriminator.path = "code"
* qualification ^slicing.rules = #open

* qualification contains stateLicensure 0..* MS

* qualification[stateLicensure]
  * ^short = "dPersonnel.22/23/24 - State EMS Certification"
  * code MS
  * code from EMSCertificationLevelVS (required)
    * ^short = "dPersonnel.24 - State EMS Certification Licensure Level"
    * ^comment = "NEMSIS dPersonnel.24. Certification level code from EMSCertificationLevelVS."
  * identifier MS
    * ^short = "dPersonnel.23 - State's Licensure ID Number"
    * ^comment = "NEMSIS dPersonnel.23. The state-assigned EMS licensure identification number."
  * issuer MS
    * ^short = "dPersonnel.22 - State of Licensure"
    * ^comment = "NEMSIS dPersonnel.22. Reference to the state licensing authority. display = 2-letter USPS state abbreviation per NDR-004."
  * period MS
    * ^short = "dPersonnel.25/27 - Certification dates"
    * ^comment = "period.start = dPersonnel.25 (Current Certification Date, Optional). period.end = dPersonnel.27 (Expiration Date, Optional)."

// ── Telecom (US Core MS) ──────────────────────────────────────
* telecom MS
  * ^comment = "US Core Practitioner requires telecom MS."
* telecom.system MS
  * ^comment = "US Core requires telecom.system MS."
* telecom.value MS
  * ^comment = "US Core requires telecom.value MS."

// ── Address (US Core MS) ──────────────────────────────────────
* address MS
  * ^comment = "US Core Practitioner requires address MS."
* address.line MS
* address.city MS
* address.state MS
* address.postalCode MS

// ── dPersonnel.40 - Sex ───────────────────────────────────────
* gender MS
  * ^short = "dPersonnel.40 - EMS Personnel's Sex"
  * ^comment = "NEMSIS dPersonnel.40. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. Maps to FHIR gender. Note: dPersonnel.12 (Gender) is DEPRECATED in NEMSIS 3.5.1; use dPersonnel.40."

// ── dPersonnel.11 - Date of Birth ────────────────────────────
* birthDate MS
  * ^short = "dPersonnel.11 - EMS Personnel's Date of Birth"
  * ^comment = "NEMSIS dPersonnel.11. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable."

// ── dPersonnel.21 - Agency ID ────────────────────────────────
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open

* identifier contains agencyId 0..1 MS

* identifier[agencyId]
  * ^short = "dPersonnel.21 - EMS Personnel's Agency ID Number"
  * ^comment = "NEMSIS dPersonnel.21. Usage: Optional. The identifier assigned to this personnel member by their agency."
  * system 1..1 MS
    * ^comment = "US Core requires identifier.system 1..1 MS."
  * value 1..1 MS
    * ^comment = "US Core requires identifier.value 1..1 MS."
