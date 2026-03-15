// ============================================================
// EMS PractitionerRole (Crew Member on Response)
// NEMSIS Section: eCrew
// Derived from: US Core PractitionerRole (6.1.0)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSPractitionerRole
Parent: $us-core-pract-role
Id: ems-practitionerrole
Title: "EMS PractitionerRole"
Description: """
  Represents an EMS crew member's role during a specific EMS response.
  Derived from US Core PractitionerRole. Maps to NEMSIS eCrew section
  (eCrew.01–03) combined with dPersonnel certification data (Version 3.5.1.251001CP2).
  One PractitionerRole resource per crew member per response.
"""

// ── Extensions ───────────────────────────────────────────────
* extension contains EMSCertificationLevel named certificationLevel 0..1 MS
  * ^short = "eCrew.02 - Crew Member Level"
  * ^comment = "NEMSIS eCrew.02. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. The EMS certification/licensure level active during this response."

// ── eCrew.01 - Crew Member ID ─────────────────────────────────
* identifier MS
  * ^short = "eCrew.01 - Crew Member ID"
  * ^comment = "NEMSIS eCrew.01. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. The unique identifier for this crew member during this response (may be agency-assigned or state-issued)."

// ── Practitioner Reference ───────────────────────────────────
* practitioner 1..1 MS
* practitioner only Reference(EMSPractitioner)
  * ^short = "Reference to the EMS personnel record"

// ── Organization Reference ───────────────────────────────────
* organization 1..1 MS
* organization only Reference(EMSOrganization)
  * ^short = "The EMS agency this crew member responded for"

// ── US Core PractitionerRole MS elements ─────────────────────
* specialty MS
  * ^comment = "US Core PractitionerRole requires specialty MS."
* location MS
  * ^comment = "US Core PractitionerRole requires location MS."
* telecom MS
  * ^comment = "US Core PractitionerRole requires telecom MS."
* telecom.system 1..1 MS
  * ^comment = "US Core requires telecom.system 1..1 MS."
* telecom.value 1..1 MS
  * ^comment = "US Core requires telecom.value 1..1 MS."
* endpoint MS
  * ^comment = "US Core PractitionerRole requires endpoint MS."

// ── eCrew.03 - Crew Member Response Role ─────────────────────
* code 1..* MS
  * ^short = "eCrew.03 - Crew Member Response Role"
  * ^comment = "NEMSIS eCrew.03. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. The crew member's functional role during this response (e.g., Primary Patient Caregiver, Driver/Pilot)."
* code from EMSCrewRoleVS (required)
