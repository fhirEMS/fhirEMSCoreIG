// ============================================================
// EMS Location — Scene
// NEMSIS Section: eScene
// Derived from: US Core Location (6.1.0)
// NEMSIS Version: 3.5.1.251001CP2
// ============================================================

Profile: EMSLocationScene
Parent: $us-core-location
Id: ems-location-scene
Title: "EMS Scene Location"
Description: """
  Represents the physical location where an EMS incident occurred.
  Derived from US Core Location. Maps to NEMSIS eScene section
  (Version 3.5.1.251001CP2). Captures scene address, GPS coordinates,
  incident location type, and scene context (number of patients, MCI status).
"""

// ── US Core Location MS elements ─────────────────────────────
* status MS
  * ^comment = "US Core Location requires status MS."
* name MS
  * ^comment = "US Core Location requires name MS."
* telecom MS
  * ^comment = "US Core Location requires telecom MS."
* managingOrganization MS
* managingOrganization only Reference(EMSOrganization)
  * ^comment = "US Core Location requires managingOrganization MS. Reference to the EMS agency responsible for this scene response."

// ── Scene Details Extension ───────────────────────────────────
* extension contains EMSSceneDetails named sceneDetails 0..1 MS
  * ^short = "eScene.01, .06, .07, .08, .13 - Scene context"
  * ^comment = "NEMSIS eScene.01 (First Unit on Scene), eScene.06 (Number of Patients), eScene.07 (Mass Casualty Incident), eScene.08 (MCI Triage Class), eScene.13 (Facility Name). All Required/National except eScene.13 (Optional)."

// ── Scene GPS Extension ───────────────────────────────────────
* extension contains EMSSceneGPS named sceneGPS 0..1 MS
  * ^short = "eScene.11 - Scene GPS Location"
  * ^comment = "NEMSIS eScene.11. Usage: Optional. Decimal latitude and longitude of the scene."

// ── eScene.09 - Incident Location Type ───────────────────────
// ICD-10-CM Y92.xxx codes (external cause - place of occurrence)
* type MS
  * ^short = "eScene.09 - Incident Location Type"
  * ^comment = "NEMSIS eScene.09. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. ICD-10-CM Y92 place-of-occurrence code describing where the incident happened (e.g., Y92.000 home, Y92.59 highway)."
* type from http://hl7.org/fhir/ValueSet/v3-ServiceDeliveryLocationRoleType (extensible)

// ── eScene.15/16 - Street Address ────────────────────────────
* address MS
* address.line MS
  * ^short = "eScene.15/16 - Incident Street Address and Apt/Suite/Room"
  * ^comment = "NEMSIS eScene.15 (Street Address, Recommended, NV) and eScene.16 (Apartment/Suite/Room, Recommended, NV). NDR-003 does not apply here (not GNIS code)."

// ── eScene.17 - Incident City ─────────────────────────────────
* address.city MS
  * ^short = "eScene.17 - Incident City"
  * ^comment = "NEMSIS eScene.17. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. NEMSIS stores CityGnisCode; convert to plain text city name per NDR-003."

// ── eScene.18 - Incident State ────────────────────────────────
* address.state MS
  * ^short = "eScene.18 - Incident State"
  * ^comment = "NEMSIS eScene.18. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. ANSIStateCode → 2-letter USPS abbreviation per NDR-004."

// ── eScene.19 - Incident ZIP Code ────────────────────────────
* address.postalCode MS
  * ^short = "eScene.19 - Incident ZIP Code"
  * ^comment = "NEMSIS eScene.19. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."

// ── eScene.21 - Incident County ──────────────────────────────
* address.district MS
  * ^short = "eScene.21 - Incident County"
  * ^comment = "NEMSIS eScene.21. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. NEMSIS stores ANSICountyCode (5-digit FIPS). Store as-is in district."

// ── eScene.14 - Mile Post or Major Roadway ────────────────────
// No direct FHIR address field; use address.text for highway/milepost scenes
* address.text MS
  * ^short = "eScene.14 - Mile Post or Major Roadway (when applicable)"
  * ^comment = "NEMSIS eScene.14. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. Use for highway milepost or major roadway description when a street address is not applicable."

// ── eScene.20 - Cross Street ──────────────────────────────────
// Carried in address.text or a separate extension; no FHIR standard field
