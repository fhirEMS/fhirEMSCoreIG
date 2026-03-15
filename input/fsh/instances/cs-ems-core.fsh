// ============================================================
// CapabilityStatement: EMS Core Server
// fhirEMSCore IG v0.1.0
// Defines the expected server capabilities for an EMS PCR
// data repository implementing this IG.
// ============================================================

Instance: CapabilityStatement-ems-core-server
InstanceOf: CapabilityStatement
Title: "EMS Core Server Capability Statement"
Description: "Defines the FHIR server capabilities required to implement the fhirEMSCore Implementation Guide. An EMS PCR repository SHALL support the profiles, interactions, and search parameters specified herein."
Usage: #definition

* url = "http://hl7.org/fhir/us/emscore/CapabilityStatement/CapabilityStatement-ems-core-server"
* name = "EMSCoreServerCapabilityStatement"
* title = "EMS Core Server Capability Statement"
* status = #draft
* experimental = false
* date = "2026-03-14"
* publisher = "HL7 International / EMS Work Group (placeholder)"
* description = "Expected FHIR R4 server capabilities for an EMS Patient Care Report (PCR) data repository implementing the fhirEMSCore IG v0.1.0."
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #json
* format[+] = #xml

* implementationGuide[+] = "http://hl7.org/fhir/us/emscore/ImplementationGuide/hl7.fhir.us.emscore"
* implementationGuide[+] = "http://hl7.org/fhir/us/core/ImplementationGuide/hl7.fhir.us.core"

// ── REST Server ───────────────────────────────────────────────
* rest[+].mode = #server
* rest[=].documentation = "EMS PCR Server. Supports creation and retrieval of EMS Patient Care Report resources."

// ── Composition (PCR) ─────────────────────────────────────────
* rest[=].resource[+].type = #Composition
* rest[=].resource[=].supportedProfile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-composition"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].searchParam[+].name = "patient"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[+].name = "date"
* rest[=].resource[=].searchParam[=].type = #date

// ── Patient ───────────────────────────────────────────────────
* rest[=].resource[+].type = #Patient
* rest[=].resource[=].supportedProfile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-patient"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].searchParam[+].name = "identifier"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[+].name = "birthdate"
* rest[=].resource[=].searchParam[=].type = #date
* rest[=].resource[=].searchParam[+].name = "name"
* rest[=].resource[=].searchParam[=].type = #string

// ── Encounter ─────────────────────────────────────────────────
* rest[=].resource[+].type = #Encounter
* rest[=].resource[=].supportedProfile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-encounter"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].searchParam[+].name = "patient"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[+].name = "date"
* rest[=].resource[=].searchParam[=].type = #date
* rest[=].resource[=].searchParam[+].name = "identifier"
* rest[=].resource[=].searchParam[=].type = #token

// ── Condition ─────────────────────────────────────────────────
* rest[=].resource[+].type = #Condition
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-condition"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-condition-arrest"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].searchParam[+].name = "patient"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[+].name = "encounter"
* rest[=].resource[=].searchParam[=].type = #reference

// ── Observation ───────────────────────────────────────────────
* rest[=].resource[+].type = #Observation
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-vitalsigns"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-bp"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-gcs"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-exam"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-airway"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-labs"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-outcome"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].searchParam[+].name = "patient"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[+].name = "encounter"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[+].name = "category"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[+].name = "code"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[+].name = "date"
* rest[=].resource[=].searchParam[=].type = #date

// ── Procedure ─────────────────────────────────────────────────
* rest[=].resource[+].type = #Procedure
* rest[=].resource[=].supportedProfile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-procedure"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].searchParam[+].name = "patient"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[+].name = "encounter"
* rest[=].resource[=].searchParam[=].type = #reference

// ── MedicationAdministration ──────────────────────────────────
* rest[=].resource[+].type = #MedicationAdministration
* rest[=].resource[=].supportedProfile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-medicationadministration"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].searchParam[+].name = "patient"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[+].name = "context"
* rest[=].resource[=].searchParam[=].type = #reference

// ── AllergyIntolerance ────────────────────────────────────────
* rest[=].resource[+].type = #AllergyIntolerance
* rest[=].resource[=].supportedProfile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-allergyintolerance"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].searchParam[+].name = "patient"
* rest[=].resource[=].searchParam[=].type = #reference

// ── Location ──────────────────────────────────────────────────
* rest[=].resource[+].type = #Location
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-location-scene"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-location-destination"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].searchParam[+].name = "name"
* rest[=].resource[=].searchParam[=].type = #string

// ── Organization ──────────────────────────────────────────────
* rest[=].resource[+].type = #Organization
* rest[=].resource[=].supportedProfile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-organization"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].searchParam[+].name = "identifier"
* rest[=].resource[=].searchParam[=].type = #token

// ── Practitioner ─────────────────────────────────────────────
* rest[=].resource[+].type = #Practitioner
* rest[=].resource[=].supportedProfile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-practitioner"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].searchParam[+].name = "identifier"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[+].name = "name"
* rest[=].resource[=].searchParam[=].type = #string

// ── PractitionerRole ──────────────────────────────────────────
* rest[=].resource[+].type = #PractitionerRole
* rest[=].resource[=].supportedProfile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-practitionerrole"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].searchParam[+].name = "practitioner"
* rest[=].resource[=].searchParam[=].type = #reference

// ── Device ────────────────────────────────────────────────────
* rest[=].resource[+].type = #Device
* rest[=].resource[=].supportedProfile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-device-vehicle"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].searchParam[+].name = "identifier"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[+].name = "owner"
* rest[=].resource[=].searchParam[=].type = #reference
