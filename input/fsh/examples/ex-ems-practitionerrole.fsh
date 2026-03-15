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

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-practitionerrole"

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
* code[0].coding[0].system = "http://hl7.org/fhir/us/emscore/CodeSystem/nemsis-codes"
* code[0].coding[0].code = #2403011
* code[0].coding[0].display = "Primary Patient Caregiver-At Scene"

* active = true
