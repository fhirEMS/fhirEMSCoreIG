// ============================================================
// Example: EMS Destination Location
// Scenario: Riverside University Health System — Level I Trauma Center
// NEMSIS eDisposition section
// ============================================================

Instance: ex-ems-location-destination
InstanceOf: EMSLocationDestination
Title: "Example EMS Destination — Level I Trauma Center"
Description: "Example destination location demonstrating the EMSLocationDestination profile. Riverside University Health System Medical Center, a Level I Trauma Center."
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-location-destination"

* status = #active

// eDisposition.01 - Destination Name
* name = "Riverside University Health System Medical Center"

// eDisposition.02 - Destination Code (NPI-2 as identifier)
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "1508855538"

// eDisposition.03–07 - Destination Address
* address.use = #work
* address.type = #physical
* address.line[0] = "26520 Cactus Avenue"
* address.city = "Moreno Valley"
* address.state = "CA"
* address.postalCode = "92555"
* address.country = "US"

// eDisposition.10 - Hospital Capability (Level I Trauma)
* type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* type[0].coding[0].code = #HOSP
* type[0].coding[0].display = "Hospital"
