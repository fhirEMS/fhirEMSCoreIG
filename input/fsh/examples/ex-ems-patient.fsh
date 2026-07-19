// ============================================================
// Example: EMS Patient
// Scenario: 45-year-old male, MVA victim
// NEMSIS ePatient section
// ============================================================

Instance: ex-ems-patient
InstanceOf: EMSPatient
Title: "Example EMS Patient — MVA Victim"
Description: "Example patient demonstrating the EMSPatient profile. 45-year-old male involved in a motor vehicle accident."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"

// US Core Patient requires at least one identifier
* identifier[0].system = "http://example.org/ems/patients"
* identifier[0].value = "PAT-2026-0042"

// ePatient.03/04 - Name
* name[0].family = "Johnson"
* name[0].given[0] = "Robert"
* name[0].given[1] = "M"

// ePatient.11 - Gender → gender
* gender = #male

// ePatient.17 - Date of Birth
* birthDate = "1979-03-22"

// ePatient.05/07 - Address
* address[0].line[0] = "1425 Oak Grove Rd"
* address[0].city = "Moreno Valley"
* address[0].state = "CA"
* address[0].postalCode = "92553"
* address[0].country = "US"

// ePatient.19 - Race
* extension[us-core-race].extension[ombCategory].valueCoding
    = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[us-core-race].extension[text].valueString = "White"

// ePatient.40 - Sex (Biological)
* extension[us-core-birthsex].valueCode = #M

// Contact information (ePatient.21/22 - next of kin)
* contact[0].name.family = "Johnson"
* contact[0].name.given[0] = "Susan"
* contact[0].relationship[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[0].relationship[0].coding[0].code = #N
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "951-555-0147"

// ePatient.11 - Home Census Tract
* extension[censusTract].valueString = "06065042518"

// ePatient.15/.16 - Estimated Age (demonstration; use only when DOB unknown)
* extension[estimatedAge].extension[value].valueDecimal = 47
* extension[estimatedAge].extension[unit].valueCodeableConcept
    = $nemsis-patient-cs#2516009 "Years"

// ePatient.22 - Alternate Home Residence (demonstration value)
* extension[alternateResidence].valueCodeableConcept
    = $nemsis-patient-cs#2522001 "Homeless"

// eHistory.01 - Barriers to Patient Care → None Noted
* extension[EMSPatientBarrier].valueCodeableConcept
    = $nemsis-cs#3101009 "None Noted"

// NDR-001 demo: NEMSIS NV on an element without dataAbsentReason
// (marital status not recorded → NV.NotRecorded)
* maritalStatus.extension[EMSNotValue].valueCodeableConcept
    = $nemsis-nv#NV.NotRecorded "Not Recorded"
