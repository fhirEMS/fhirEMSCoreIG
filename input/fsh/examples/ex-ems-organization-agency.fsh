// ============================================================
// Example: EMS Organization (Agency)
// Scenario: Riverside County EMS Agency
// NEMSIS dAgency section
// ============================================================

Instance: ex-ems-organization-agency
InstanceOf: EMSOrganization
Title: "Example EMS Organization — Riverside County EMS"
Description: "Example EMS agency organization demonstrating the EMSOrganization profile. Represents a county EMS agency with NPI, state agency ID, and service configuration."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-organization"

// Identifiers
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1548456411"

// dAgency.01 - State Agency ID (not formally sliced; open identifier)
* identifier[+].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[=].type.coding[0].code = #XX
* identifier[=].system = "http://example.org/ems/state-agency-id"
* identifier[=].value = "CA-4065"

// Agency name and contact
* active = true
* name = "Riverside County EMS Agency"
* address.line[0] = "3990 Lemon Street"
* address.city = "Riverside"
* address.state = "CA"
* address.postalCode = "92501"

// dAgency type
* type[0].coding[0].system = "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes"
* type[0].coding[0].code = #9912003
* type[0].coding[0].display = "Governmental, Non-Fire"

// Agency details extension (dAgency.09–12)
* extension[agencyDetails].extension[primaryServiceType].valueCodeableConcept
    = $nemsis-cs#9920001 "911 Response (Scene) with Transport Capability"
* extension[agencyDetails].extension[levelOfService].valueCodeableConcept
    = $nemsis-cs#9917007 "Paramedic"
* extension[agencyDetails].extension[organizationStatus].valueCodeableConcept
    = $nemsis-cs#1016003 "Non-Volunteer"
