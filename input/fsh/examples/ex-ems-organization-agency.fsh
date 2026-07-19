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

// ── dContact - Agency Contact (Medical Director) ─────────────
* contact[0].purpose = $nemsis-dem#1101011 "EMS Medical Director"
* contact[0].name.family = "Reyes"
* contact[0].name.given[0] = "Maria"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "951-555-0180"
* contact[0].telecom[1].system = #email
* contact[0].telecom[1].value = "medical.director@rcfd.example.org"

// dContact.13-.16 - Medical Director credentials
* extension[medicalDirector].extension[degree].valueCodeableConcept
    = $nemsis-dem#1113001 "Doctor of Medicine"
* extension[medicalDirector].extension[boardCertificationType][0].valueCodeableConcept
    = $nemsis-dem#1114009 "Emergency Medicine"
* extension[medicalDirector].extension[compensation].valueCodeableConcept
    = $nemsis-dem#1115001 "Compensated"
* extension[medicalDirector].extension[boardCertifiedEligible].valueBoolean = true

// ── dConfiguration - Agency Configuration (California) ───────
* extension[agencyConfiguration][0].extension[state].valueString = "CA"
* extension[agencyConfiguration][0].extension[procedure][0].extension[code].valueCodeableConcept
    = $snomed#232674004 "Orotracheal intubation"
* extension[agencyConfiguration][0].extension[procedure][0].extension[permittedLevel][0].valueCodeableConcept
    = $nemsis-personnel-level#9925007 "Paramedic"
* extension[agencyConfiguration][0].extension[medication][0].extension[code].valueCodeableConcept.coding[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* extension[agencyConfiguration][0].extension[medication][0].extension[code].valueCodeableConcept.coding[0].code = #7242
* extension[agencyConfiguration][0].extension[medication][0].extension[code].valueCodeableConcept.coding[0].display = "naloxone"
* extension[agencyConfiguration][0].extension[medication][0].extension[permittedLevel][0].valueCodeableConcept
    = $nemsis-personnel-level#9925007 "Paramedic"
* extension[agencyConfiguration][0].extension[protocol][0].valueCodeableConcept
    = $nemsis-procedures#9914001 "Airway"
* extension[agencyConfiguration][0].extension[specialtyCapability][0].valueCodeableConcept
    = $nemsis-dem#1211029 "Vehicle Extrication"
* extension[agencyConfiguration][0].extension[billingStatus].valueBoolean = true
* extension[agencyConfiguration][0].extension[emdProvided].valueCodeableConcept
    = $nemsis-dem#1213003 "Yes, 100% of the EMS Agency's Service Area"
* extension[agencyConfiguration][0].extension[monitoringCapability][0].valueCodeableConcept
    = $nemsis-dem#1215003 "Capnography-Waveform"
* extension[agencyConfiguration][0].extension[crewCallSign][0].valueString = "Medic 7"
* extension[agencyConfiguration][0].extension[dispatchCenter][0].valueString
    = "Riverside County Emergency Communications Center"
