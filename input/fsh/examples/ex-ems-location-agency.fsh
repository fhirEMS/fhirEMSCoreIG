// ============================================================
// Example: EMS Location — Agency Station
// NEMSIS dLocation
// ============================================================

Instance: ex-ems-location-agency
InstanceOf: EMSLocationAgency
Title: "Example EMS Agency Station — Station 7"
Description: "Example agency station demonstrating the EMSLocationAgency profile: Riverside County Fire Station 7 in Murrieta, CA, with GPS, USNG, and station number."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-agency"

* status = #active

// dLocation.01/.02/.03
* type[0].coding[0] = $nemsis-dem#1301005 "EMS Station"
* name = "Riverside County Fire Station 7"
* identifier[0].system = "http://example.org/ems/stations"
* identifier[0].value = "STA-7"

// dLocation.04/.05 - GPS and USNG
* position.latitude = 33.554700
* position.longitude = -117.213800
* extension[usng].valueString = "11SMT8236514637"

// dLocation.06-.12
* address.line[0] = "28155 Baxter Rd"
* address.city = "Murrieta"
* address.state = "CA"
* address.postalCode = "92563"
* address.district = "06065"
* address.country = "US"
* telecom[0].system = #phone
* telecom[0].value = "951-555-0107"

* managingOrganization = Reference(ex-ems-organization-agency)
