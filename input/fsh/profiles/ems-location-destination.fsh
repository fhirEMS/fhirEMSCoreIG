// ============================================================
// EMS Location — Destination
// NEMSIS Section: eDisposition.01–10
// Derived from: US Core Location (6.1.0)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSLocationDestination
Parent: $us-core-location
Id: ems-location-destination
Title: "EMS Destination Location"
Description: """
  Represents the facility or location to which the patient was transported.
  Derived from US Core Location. Maps to NEMSIS eDisposition address elements
  eDisposition.01–10 (Version 3.5.1.251001CP2). Destination type, capability,
  and pre-arrival alert are captured in the EMSDestinationDetails extension on
  the parent EMSEncounter.
"""

// ── US Core Location MS elements ─────────────────────────────
* status MS
  * ^comment = "US Core Location requires status MS."
* telecom MS
  * ^comment = "US Core Location requires telecom MS."
* managingOrganization MS
  * ^comment = "US Core Location requires managingOrganization MS."

// ── eDisposition.02 - Destination Code ───────────────────────
* identifier MS
  * ^short = "eDisposition.02 - Destination/Transferred To, Code"
  * ^comment = "NEMSIS eDisposition.02. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. Facility code (e.g., FIPS, state registry ID) for the destination."

// ── eDisposition.01 - Destination Name ───────────────────────
* name MS
  * ^short = "eDisposition.01 - Destination/Transferred To, Name"
  * ^comment = "NEMSIS eDisposition.01. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. The name of the receiving facility."

// ── eDisposition.03/04 - Street Address and City ─────────────
* address MS
* address.line MS
  * ^short = "eDisposition.03 - Destination Street Address"
  * ^comment = "NEMSIS eDisposition.03. Usage: Optional."

* address.city MS
  * ^short = "eDisposition.04 - Destination City"
  * ^comment = "NEMSIS eDisposition.04. Usage: Optional. Plain text city name."

// ── eDisposition.05 - Destination State ──────────────────────
* address.state MS
  * ^short = "eDisposition.05 - Destination State"
  * ^comment = "NEMSIS eDisposition.05. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. ANSIStateCode → 2-letter USPS abbreviation per NDR-004."

// ── eDisposition.06 - Destination County ─────────────────────
* address.district MS
  * ^short = "eDisposition.06 - Destination County"
  * ^comment = "NEMSIS eDisposition.06. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. 5-digit FIPS county code."

// ── eDisposition.07 - Destination ZIP Code ───────────────────
* address.postalCode MS
  * ^short = "eDisposition.07 - Destination ZIP Code"
  * ^comment = "NEMSIS eDisposition.07. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."

// ── eDisposition.09 - Destination GPS ────────────────────────
* position MS
* position.latitude MS
  * ^short = "eDisposition.09 - Destination GPS Latitude"
  * ^comment = "NEMSIS eDisposition.09. Usage: Optional. Decimal degrees latitude."
* position.longitude MS
  * ^short = "eDisposition.09 - Destination GPS Longitude"
  * ^comment = "NEMSIS eDisposition.09. Usage: Optional. Decimal degrees longitude."
