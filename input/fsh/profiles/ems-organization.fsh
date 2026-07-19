// ============================================================
// EMS Organization (EMS Agency)
// NEMSIS Section: dAgency
// Derived from: US Core Organization (6.1.0)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSOrganization
Parent: $us-core-organization
Id: ems-organization
Title: "EMS Organization"
Description: """
  EMS agency organizational information derived from US Core Organization.
  Maps to NEMSIS dAgency section (Version 3.5.1.251001CP2). Captures agency
  identifiers, name, state, organizational type, service type, and level of service.
"""

// ── Agency Details Extension ─────────────────────────────────
* extension contains
    EMSAgencyDetails named agencyDetails 0..1 MS and
    EMSMedicalDirector named medicalDirector 0..1 MS and
    EMSAgencyConfiguration named agencyConfiguration 0..*
* extension[agencyDetails]
  * ^short = "dAgency.09–12 - Service type, level of service, org status"
  * ^comment = "NEMSIS dAgency.09 (Primary Service Type, Mandatory), dAgency.10 (Other Service Types, Recommended), dAgency.11 (Level of Service, Mandatory), dAgency.12 (Organization Status, Mandatory)."
* extension[medicalDirector]
  * ^short = "dContact.13–.16 - Agency medical director credentials"
* extension[agencyConfiguration]
  * ^short = "dConfiguration - State-configured capabilities (one repetition per state)"

// ── dAgency.01 / dAgency.02 / dAgency.25 - Identifiers ───────
// US Core Organization provides identifier slicing (pattern:$this).
// NPI slice (dAgency.25): system = http://hl7.org/fhir/sid/us-npi
// State agency ID (dAgency.01): use agency-assigned system URL (open identifier)
// Fire Department ID (dAgency.26): use NFIRS/agency system URL (open identifier)
* identifier MS

* identifier[NPI]
  * ^short = "dAgency.25 - National Provider Identifier (NPI)"
  * ^comment = "NEMSIS dAgency.25. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. System: http://hl7.org/fhir/sid/us-npi."
  * system 1..1 MS
  * system = $npi
  * value 1..1 MS

// ── dAgency.03 - EMS Agency Name ─────────────────────────────
* name 1..1 MS
  * ^short = "dAgency.03 - EMS Agency Name"
  * ^comment = "NEMSIS dAgency.03. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable."

// ── dAgency.13 - Organizational Type ─────────────────────────
* type MS
  * ^short = "dAgency.13 - Organizational Type"
  * ^comment = "NEMSIS dAgency.13. Usage: Mandatory/National. Not nillable. No NV or PN. Fire Department, Governmental Non-Fire, Hospital, Private, or Tribal."
* type from EMSAgencyOrgTypeVS (required)

// ── dAgency.04 - EMS Agency State ────────────────────────────
* address MS
* address.state MS
  * ^short = "dAgency.04 - EMS Agency State"
  * ^comment = "NEMSIS dAgency.04. Usage: Mandatory/National. Not nillable. ANSIStateCode → 2-letter USPS abbreviation per NDR-004."

// ── Telecom (US Core MS) ──────────────────────────────────────
* telecom MS
  * ^comment = "US Core Organization requires telecom MS."
* telecom.system MS
  * ^comment = "US Core requires telecom.system MS."
* telecom.value MS
  * ^comment = "US Core requires telecom.value MS."

// ── active (derived from dAgency.12 via extension) ───────────
* active 1..1 MS
  * ^short = "Agency active status (derived from dAgency.12 Organization Status)"
  * ^comment = "Set to true for active agencies. Detailed volunteer/non-volunteer status captured in extension[agencyDetails].organizationStatus."

// ── dContact.01–.12 - Agency Contacts ────────────────────────
* contact MS
  * ^short = "dContact - Agency contact persons"
  * ^comment = "One contact repetition per dContact ContactGroup."
* contact.purpose MS
* contact.purpose from EMSAgencyContactTypeVS (extensible)
  * ^short = "dContact.01 - Agency Contact Type"
* contact.name MS
  * ^short = "dContact.02/.03/.04 - Agency Contact Name"
* contact.address MS
  * ^short = "dContact.05–.09 - Agency Contact Address"
  * ^comment = "City (dContact.06, GNIS→name per NDR-003), state (dContact.07, ANSI→USPS per NDR-004)."
* contact.telecom MS
  * ^short = "dContact.10/.11/.12 - Phone, Email, Web Address"
