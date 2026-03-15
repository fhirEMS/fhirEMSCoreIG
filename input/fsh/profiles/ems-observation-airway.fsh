// ============================================================
// Profile: EMS Airway Management Observation
// NEMSIS 3.5.1.251001CP2 — eAirway section
// Parent: US Core Observation (Clinical Result)
// ============================================================

Profile: EMSObservationAirway
Id: ems-observation-airway
Title: "EMS Airway Management Observation"
Description: "Documents an airway management event during an EMS response. NEMSIS eAirway covers advanced airway device placement, confirmation, complications, and failure reasons. eAirway.01–11 are captured primarily through ext-ems-airway-context. The observation code identifies the airway procedure type (SNOMED). The crew member (eAirway.07) is captured via performer."
Parent: $us-core-observation

* ^url = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-observation-airway"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false

// ── Airway context extension ──────────────────────────────────
* extension contains $ext-ems-airway-context named airwayContext 0..1 MS
* extension[airwayContext]
  * ^short = "eAirway — Airway management details (NEMSIS eAirway.01–11)"
  * ^comment = "Complex extension containing all NEMSIS eAirway contextual elements."

// ── Status ────────────────────────────────────────────────────
* status MS
* status = #final
  * ^short = "Observation status — final"

// ── Category — procedure ─────────────────────────────────────
* category 1..* MS
* category[us-core] = $obs-cat#procedure "Procedure"
  * ^comment = "US Core requires category 1..*. Airway management events use 'procedure' category."

// ── Code — airway management procedure ───────────────────────
// SNOMED CT 182682004 (Airway management) used as the overarching code.
// More specific codes (e.g., 112798008 Endotracheal intubation) may be used
// by individual implementations.
* code 1..1 MS
* code = $snomed#182682004 "Airway management"
  * ^short = "eAirway — Airway management (SNOMED 182682004)"
  * ^comment = "NEMSIS eAirway. Overarching SNOMED code for the airway management event. Specific device or procedure details in extension[airwayContext]."

// ── Effective date/time — eAirway.02 ─────────────────────────
* effective[x] MS
* effectiveDateTime MS
  * ^short = "eAirway.02 - Date/Time Airway Device Placement Confirmed"
  * ^comment = "NEMSIS eAirway.02. Usage: Recommended. NV: NotRecorded. Also available in extension[airwayContext].confirmedDateTime."

// ── Subject and encounter ─────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
* encounter MS
* encounter only Reference(EMSEncounter)

// ── Performer — eAirway.07 (Crew Member ID) ───────────────────
* performer MS
* performer only Reference(EMSPractitioner)
  * ^short = "eAirway.07 - EMS Crew Member ID"
  * ^comment = "NEMSIS eAirway.07. Usage: Recommended. NV: NotRecorded. Reference to the practitioner who performed the airway management."

// ── Value / DataAbsentReason ──────────────────────────────────
// US Core Observation Clinical Result requires value[x] MS — must not be prohibited.
// Airway management details are in extension[airwayContext]; value[x] is not
// typically populated but must remain permitted for US Core conformance.
* value[x] MS
  * ^comment = "US Core requires value[x] MS; must not be prohibited (0..0 violates conformance). For airway management, detail is in extension[airwayContext]. Leave absent and populate dataAbsentReason when no scalar result applies."
* dataAbsentReason MS
  * ^comment = "Use dataAbsentReason when value[x] is not populated for airway management observations."

// ── Component: tube depth ─────────────────────────────────────
// eAirway.05 — Tube Depth can also be expressed as a component
// if systems prefer a component over extension
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains tubeDepth 0..1 MS

* component[tubeDepth].code = $loinc#19841-6 "Endotracheal tube position depth"
  * ^short = "eAirway.05 - Tube Depth (LOINC 19841-6)"
* component[tubeDepth].value[x] only Quantity
* component[tubeDepth].valueQuantity.system = "http://unitsofmeasure.org"
* component[tubeDepth].valueQuantity.code = #cm
  * ^short = "eAirway.05 - Tube depth in centimeters"
  * ^comment = "NEMSIS eAirway.05. Usage: Optional. Endotracheal tube depth measured at the lip in centimeters."
