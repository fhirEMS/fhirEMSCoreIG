// ============================================================
// Example: EMS PractitionerRole
// Scenario: Paramedic crew member on MVA response
// NEMSIS eCrew section
// ============================================================

Instance: ex-ems-practitionerrole
InstanceOf: EMSPractitionerRole
Title: "Example EMS PractitionerRole — Paramedic Crew Member"
Description: "Example PractitionerRole demonstrating the EMSPractitionerRole profile. Paramedic Maria Ramirez serving as Primary Patient Caregiver on MVA response."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitionerrole"

// eCrew.01 - Crew Member ID
* identifier[0].system = "http://example.org/ems/crew"
* identifier[0].value = "CR-2026-0042-1"

// eCrew.02 - Crew Member Level (Paramedic)
* extension[certificationLevel].valueCodeableConcept
    = $nemsis-personnel-level#9925007 "Paramedic"

// Practitioner and Organization references
* practitioner = Reference(ex-ems-practitioner)
* organization = Reference(ex-ems-organization-agency)

// eCrew.03 - Crew Member Response Role → Primary Patient Caregiver-At Scene
* code[0].coding[0].system = "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes"
* code[0].coding[0].code = #2403011
* code[0].coding[0].display = "Primary Patient Caregiver-At Scene"

* active = true

// pd-1: SHALL have contact information or a reference to an Endpoint
* telecom[0].system = #phone
* telecom[0].value = "951-555-0142"
* telecom[0].use = #work
