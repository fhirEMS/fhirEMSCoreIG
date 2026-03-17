// ============================================================
// Example: EMS Procedure
// Scenario: IV access established on MVA patient
// NEMSIS eProcedures section
// ============================================================

Instance: ex-ems-procedure
InstanceOf: EMSProcedure
Title: "Example EMS Procedure — IV Access"
Description: "Example procedure demonstrating the EMSProcedure profile. Peripheral IV access established on an MVA patient."
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/emscore/StructureDefinition/ems-procedure"

* status = #completed

// eProcedures.03 - Procedure (SNOMED CT)
// SNOMED 392230005 — Insertion of intravenous cannula
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #392230005
* code.coding[0].display = "Catheterization of vein (procedure)"

// eProcedures.01 - Date/Time Procedure Performed
* performedDateTime = "2026-03-14T14:40:00-08:00"

* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)

// eProcedures.09/10 - Performer
* performer[0].function.coding[0].system = "http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-medications"
* performer[0].function.coding[0].code = #9905007
* performer[0].function.coding[0].display = "Paramedic"
* performer[0].actor = Reference(ex-ems-practitioner)

// eProcedures.06 - Procedure Successful → outcome
* outcome.coding[0].system = "http://snomed.info/sct"
* outcome.coding[0].code = #385669000
* outcome.coding[0].display = "Successful"

// eProcedures.07 - Complication → None
* complication[0].coding[0].system = "http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-medications"
* complication[0].coding[0].code = #3907033
* complication[0].coding[0].display = "None"

// eProcedures.13 - Vascular Access Location → Antecubital-Left
* bodySite[0].coding[0].system = "http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-medications"
* bodySite[0].coding[0].code = #3913001
* bodySite[0].coding[0].display = "Antecubital-Left"

// EMSProcedureContext extension
* extension[procedureContext].extension[priorEMSCare].valueCodeableConcept
    = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* extension[procedureContext].extension[numberOfAttempts].valueInteger = 1
* extension[procedureContext].extension[response].valueCodeableConcept
    = $nemsis-medications#9916001 "Improved"
* extension[procedureContext].extension[authorization].valueCodeableConcept
    = $nemsis-medications#9918005 "Protocol (Standing Order)"
