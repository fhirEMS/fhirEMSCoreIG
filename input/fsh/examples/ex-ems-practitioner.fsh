// ============================================================
// Example: EMS Practitioner (Paramedic)
// Scenario: Lead paramedic for the EMS call
// NEMSIS dPersonnel section
// ============================================================

Instance: ex-ems-practitioner
InstanceOf: EMSPractitioner
Title: "Example EMS Practitioner — Paramedic"
Description: "Example EMS crew member demonstrating the EMSPractitioner profile. Represents a licensed Paramedic with state certification."
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-practitioner"

* identifier[agencyId].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[agencyId].type.coding[0].code = #EI
* identifier[agencyId].system = "http://example.org/ems/personnel-id"
* identifier[agencyId].value = "P-20145"

* name[0].family = "Ramirez"
* name[0].given[0] = "Maria"
* name[0].given[1] = "J"

* gender = #female
* birthDate = "1988-04-15"

// State certification — Paramedic
* qualification[stateLicensure].code.coding[0].system = "http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-personnel-level"
* qualification[stateLicensure].code.coding[0].code = #9925007
* qualification[stateLicensure].code.coding[0].display = "Paramedic"
* qualification[stateLicensure].identifier[0].system = "http://example.org/ems/cert-number"
* qualification[stateLicensure].identifier[0].value = "NREMT-P-456789"
* qualification[stateLicensure].period.start = "2018-06-01"
* qualification[stateLicensure].period.end = "2026-06-01"
