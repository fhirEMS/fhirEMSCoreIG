// ============================================================
// Profile: EMS Questionnaire Response — Custom Element Results
// NEMSIS 3.5.1.251001CP2 — eCustomResults (NDR-010)
// Parent: FHIR R4 QuestionnaireResponse
// ============================================================

Profile: EMSQuestionnaireResponse
Id: ems-questionnaireresponse
Title: "EMS Questionnaire Response — Custom Element Results"
Description: "Carries collected values for agency- or state-specific custom data elements (NEMSIS eCustomResults) per NDR-010, answering an EMSQuestionnaire definition."
Parent: QuestionnaireResponse

* ^url = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-questionnaireresponse"
* ^version = "0.2.0"
* ^status = #active
* ^experimental = false

* questionnaire 1..1 MS
  * ^comment = "Canonical reference to the EMSQuestionnaire defining the custom elements."
* status MS
* subject 1..1 MS
* subject only Reference(EMSPatient)
* encounter MS
* encounter only Reference(EMSEncounter)
* authored MS

* item MS
* item.linkId MS
  * ^short = "eCustomResults.02 - Custom Element ID Referenced"
  * ^comment = "NEMSIS eCustomResults.02. Usage: Mandatory. Must match the EMSQuestionnaire item.linkId."
* item.extension contains $ext-ems-custom-target named customTarget 0..1
* item.extension[customTarget]
  * ^short = "eCustomResults.03 - CorrelationID of PCR Element or Group"
* item.answer MS
  * ^short = "eCustomResults.01 - Custom Data Element Result"
  * ^comment = "NEMSIS eCustomResults.01. Usage: Mandatory. Repeating (1..M). Use the value[x] type declared by the corresponding Questionnaire item.type."
