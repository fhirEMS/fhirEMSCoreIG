// ============================================================
// Example: EMS Cardiac Arrest Condition
// Scenario: Patient in cardiac arrest prior to EMS arrival (MVA)
// NEMSIS eArrest section — NDR-009
// ============================================================

Instance: ex-ems-condition-arrest
InstanceOf: EMSConditionArrest
Title: "Example EMS Cardiac Arrest Condition"
Description: "Example cardiac arrest Condition demonstrating the EMSConditionArrest profile. Patient found in cardiac arrest prior to EMS arrival; VF arrest; CPR and defibrillation performed; ROSC achieved prior to ED arrival."
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-condition-arrest"

// Fixed SNOMED code — Cardiac arrest (NDR-009)
* code = $snomed#410429000 "Cardiac arrest"

* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #resolved

* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed

* category[us-core].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[us-core].coding[0].code = #encounter-diagnosis
* category[us-core].coding[0].display = "Encounter Diagnosis"

* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* recorder = Reference(ex-ems-practitioner)

// eArrest.14 - Date/Time of Cardiac Arrest
* onsetDateTime = "2026-03-14T14:12:00-08:00"

// ── eArrest Context Extension ─────────────────────────────────
// eArrest.01 - Cardiac Arrest → Yes, Prior to Any EMS Arrival
* extension[arrestContext].extension[cardiacArrest].valueCodeableConcept
    = $nemsis-arrest#3001003 "Yes, Prior to Any EMS Arrival (includes Transport EMS & Medical First Responders)"

// eArrest.02 - Etiology → Cardiac (Presumed)
* extension[arrestContext].extension[etiology].valueCodeableConcept
    = $nemsis-arrest#3002001 "Cardiac (Presumed)"

// eArrest.03 - Resuscitation Attempted → Initiated Chest Compressions + Attempted Defibrillation
* extension[arrestContext].extension[resuscitationBy][+].valueCodeableConcept
    = $nemsis-arrest#3003005 "Initiated Chest Compressions"
* extension[arrestContext].extension[resuscitationBy][+].valueCodeableConcept
    = $nemsis-arrest#3003001 "Attempted Defibrillation"

// eArrest.04 - Witnessed By → Not Witnessed
* extension[arrestContext].extension[witnessedBy][+].valueCodeableConcept
    = $nemsis-arrest#3004001 "Not Witnessed"

// eArrest.07 - AED Use Prior to EMS Arrival → No
* extension[arrestContext].extension[aedUsePrior].valueCodeableConcept
    = $nemsis-arrest#3007001 "No"

// eArrest.09 - CPR Type → Compressions-Manual + Ventilation-Bag Valve Mask
* extension[arrestContext].extension[cprType][+].valueCodeableConcept
    = $nemsis-arrest#3009001 "Compressions-Manual"
* extension[arrestContext].extension[cprType][+].valueCodeableConcept
    = $nemsis-arrest#3009013 "Ventilation-Bag Valve Mask"

// eArrest.10 - Therapeutic Hypothermia → No
* extension[arrestContext].extension[therapeuticHypothermia].valueBoolean = false

// eArrest.11 - First Monitored Rhythm → Ventricular Fibrillation
* extension[arrestContext].extension[firstRhythm].valueCodeableConcept
    = $nemsis-arrest#3011011 "Ventricular Fibrillation"

// eArrest.12 - ROSC → Yes, Prior to Arrival at the ED
* extension[arrestContext].extension[rosc][+].valueCodeableConcept
    = $nemsis-arrest#3012005 "Yes, Prior to Arrival at the ED"

// eArrest.16 - Reason CPR Discontinued → ROSC
* extension[arrestContext].extension[cprDiscontinuedReason][+].valueCodeableConcept
    = $nemsis-arrest#3016011 "Return of Spontaneous Circulation (pulse or BP noted)"

// eArrest.17 - Rhythm at Destination → Sinus Tachycardia
* extension[arrestContext].extension[rhythmAtDestination][+].valueCodeableConcept
    = $nemsis-vitals#9901049 "Sinus Tachycardia"

// eArrest.18 - End of EMS Cardiac Arrest Event → ROSC in the Field
* extension[arrestContext].extension[endOfArrestEvent].valueCodeableConcept
    = $nemsis-arrest#3018007 "ROSC in the Field"

// eArrest.20 - Who First Initiated CPR → Bystander
* extension[arrestContext].extension[whoFirstCPR].valueCodeableConcept
    = $nemsis-arrest#3020001 "Bystander"

// eArrest.21/22 - Who First Applied AED / Defibrillated → First Responder (EMS)
* extension[arrestContext].extension[whoFirstAED].valueCodeableConcept
    = $nemsis-arrest#3021007 "First Responder (EMS)"
* extension[arrestContext].extension[whoFirstDefibrillated].valueCodeableConcept
    = $nemsis-arrest#3022007 "First Responder (EMS)"
