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

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitioner"

* identifier[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].type.coding[0].code = #EI
* identifier[0].system = "http://example.org/ems/personnel-id"
* identifier[0].value = "P-20145"

* name[0].family = "Ramirez"
* name[0].given[0] = "Maria"
* name[0].given[1] = "J"

* gender = #female
* birthDate = "1988-04-15"

// State certification — Paramedic
* qualification[stateLicensure].code.coding[0].system = "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-personnel-level"
* qualification[stateLicensure].code.coding[0].code = #9925007
* qualification[stateLicensure].code.coding[0].display = "Paramedic"
* qualification[stateLicensure].identifier[0].system = "http://example.org/ems/cert-number"
* qualification[stateLicensure].identifier[0].value = "NREMT-P-456789"
* qualification[stateLicensure].period.start = "2018-06-01"
* qualification[stateLicensure].period.end = "2026-06-01"
