// ============================================================
// Profile: EMS Location — Agency Station/Base
// NEMSIS 3.5.1.251001CP2 — dLocation
// Parent: US Core Location
// ============================================================

Profile: EMSLocationAgency
Id: ems-location-agency
Title: "EMS Location — Agency Station"
Description: "An EMS agency location — headquarters, station, or staging area (NEMSIS dLocation). One resource per agency location, managed by the EMSOrganization."
Parent: $us-core-location

* ^url = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-agency"
* ^version = "0.2.0"
* ^status = #active
* ^experimental = false

// ── dLocation.05 - USNG coordinates ──────────────────────────
* extension contains $ext-ems-usng named usng 0..1
* extension[usng]
  * ^short = "dLocation.05 - EMS Location US National Grid Coordinates"

// ── dLocation.01 - Location Type ─────────────────────────────
* type MS
* type from EMSAgencyLocationTypeVS (extensible)
  * ^short = "dLocation.01 - EMS Location Type"
  * ^comment = "NEMSIS dLocation.01. Usage: Optional. Headquarters, station, or staging area."

// ── dLocation.02/.03 - Name and Number ───────────────────────
* name MS
  * ^short = "dLocation.02 - EMS Location Name"
* identifier MS
  * ^short = "dLocation.03 - EMS Location Number"
  * ^comment = "NEMSIS dLocation.03. Agency-assigned station number."

// ── dLocation.04 - GPS ───────────────────────────────────────
* position MS
* position.latitude MS
* position.longitude MS
  * ^comment = "NEMSIS dLocation.04 (GPSLocation) split into decimal latitude/longitude."

// ── dLocation.06–.11 - Address ───────────────────────────────
* address MS
* address.line MS
  * ^short = "dLocation.06 - EMS Location Address"
* address.city MS
  * ^short = "dLocation.07 - EMS Location City"
  * ^comment = "NEMSIS dLocation.07 (CityGnisCode) resolved to city name per NDR-003."
* address.state MS
  * ^short = "dLocation.08 - EMS Location State"
  * ^comment = "NEMSIS dLocation.08 (ANSIStateCode) as 2-letter USPS abbreviation per NDR-004."
* address.postalCode MS
  * ^short = "dLocation.09 - EMS Station or Location ZIP Code"
* address.district MS
  * ^short = "dLocation.10 - EMS Location County"
  * ^comment = "NEMSIS dLocation.10. 5-digit ANSI/FIPS county code."
* address.country MS
  * ^short = "dLocation.11 - EMS Location Country"

// ── dLocation.12 - Phone ─────────────────────────────────────
* telecom MS
  * ^short = "dLocation.12 - EMS Location Phone Number"

// ── Managing organization ────────────────────────────────────
* managingOrganization MS
* managingOrganization only Reference(EMSOrganization)
