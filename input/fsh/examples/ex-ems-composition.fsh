// ============================================================
// Example: EMS Composition (PCR Document)
// Scenario: Complete PCR — MVA with cardiac arrest
// NEMSIS eRecord section
// ============================================================

Instance: ex-ems-composition
InstanceOf: EMSComposition
Title: "Example EMS Composition — PCR Document"
Description: "Example PCR composition demonstrating the EMSComposition profile. Assembles all resources from the MVA cardiac arrest scenario into a complete EMS Patient Care Report document."
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-composition"

// ── Document metadata ─────────────────────────────────────────
// eRecord.01 - Patient Care Report Number
* identifier.system = "http://example.org/ems/pcr"
* identifier.value = "PCR-2026-03-14-0042"

* status = #final
* date = "2026-03-14T18:45:00-08:00"
* title = "EMS Patient Care Report"

// ── Subject and Encounter ─────────────────────────────────────
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)

// ── Author (EMS Practitioner and Agency) ──────────────────────
* author[0] = Reference(ex-ems-practitioner)
* author[1] = Reference(ex-ems-organization-agency)

// ── Attester ──────────────────────────────────────────────────
* attester[0].mode = #legal
* attester[0].party = Reference(ex-ems-practitioner)
* attester[0].time = "2026-03-14T19:30:00-08:00"

// ── Custodian ─────────────────────────────────────────────────
* custodian = Reference(ex-ems-organization-agency)

// ── Sections ──────────────────────────────────────────────────
// Required sections (1..1): eResponse, eTimes, ePatient, eScene, eSituation, eDisposition

// eResponse section (code fixed by profile: nemsis-codes#section-eResponse)
* section[eResponse].entry[0] = Reference(ex-ems-encounter)

// eTimes section (code fixed by profile: nemsis-codes#section-eTimes)
// Times carried in EMSTimes extension on EMSEncounter
* section[eTimes].entry[0] = Reference(ex-ems-encounter)

// ePatient section (code fixed by profile: LOINC 29762-2)
* section[ePatient].entry[0] = Reference(ex-ems-patient)

// eScene section (code fixed by profile: nemsis-codes#section-eScene)
* section[eScene].entry[0] = Reference(ex-ems-location-scene)

// eSituation section (code fixed by profile: LOINC 55110-1)
* section[eSituation].entry[0] = Reference(ex-ems-condition)

// eDisposition section (code fixed by profile: LOINC 18776-5)
* section[eDisposition].entry[0] = Reference(ex-ems-location-destination)

// ── Optional sections ──────────────────────────────────────────

// eVitals section
* section[eVitals][0].entry[0] = Reference(ex-ems-observation-bp)
* section[eVitals][0].entry[1] = Reference(ex-ems-heart-rate)
* section[eVitals][0].entry[2] = Reference(ex-ems-spo2)
* section[eVitals][0].entry[3] = Reference(ex-ems-respiratory-rate)
* section[eVitals][0].entry[4] = Reference(ex-ems-observation-gcs)

// eProcedures section
* section[eProcedures][0].entry[0] = Reference(ex-ems-procedure)

// eMedications section
* section[eMedications][0].entry[0] = Reference(ex-ems-medicationadministration)

// eAirway section
* section[eAirway].entry[0] = Reference(ex-ems-observation-airway)

// eArrest section
* section[eArrest].entry[0] = Reference(ex-ems-condition-arrest)
