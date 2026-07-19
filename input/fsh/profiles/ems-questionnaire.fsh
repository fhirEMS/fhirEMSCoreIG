// ============================================================
// Profile: EMS Questionnaire — Custom Element Definitions
// NEMSIS 3.5.1.251001CP2 — eCustomConfiguration (NDR-010)
// Parent: FHIR R4 Questionnaire
// ============================================================

Profile: EMSQuestionnaire
Id: ems-questionnaire
Title: "EMS Questionnaire — Custom Element Definitions"
Description: "Defines agency- or state-specific custom data elements (NEMSIS eCustomConfiguration) per NDR-010. Each eCustomConfiguration entry becomes one Questionnaire.item; collected values are reported via EMSQuestionnaireResponse."
Parent: Questionnaire

* ^url = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-questionnaire"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false

* status MS
* name MS
* title MS
  * ^comment = "A name for the custom element collection (e.g., the agency or state demographic dataset name)."

* item 1..* MS
* item.linkId MS
  * ^short = "eCustomConfiguration.09 - Custom Data Element Grouping ID"
  * ^comment = "NEMSIS eCustomConfiguration.09 (CorrelationID) when present; otherwise a stable element identifier. EMSQuestionnaireResponse.item.linkId (eCustomResults.02) must match."
* item.text 1..1 MS
  * ^short = "eCustomConfiguration.01 - Custom Data Element Title"
  * ^comment = "NEMSIS eCustomConfiguration.01. Usage: Mandatory. The eCustomConfiguration.02 definition should be appended or carried in item.item text where needed."
* item.type MS
  * ^short = "eCustomConfiguration.03 - Custom Data Type"
  * ^comment = "NEMSIS eCustomConfiguration.03. Map: Binary→attachment, Date/Time→dateTime, Integer→integer, Decimal→decimal, Text/String→string, Single-Choice→choice, Multiple-Choice→choice with repeats=true."
* item.repeats MS
  * ^short = "eCustomConfiguration.04 - Custom Data Element Recurrence"
  * ^comment = "NEMSIS eCustomConfiguration.04. Usage: Mandatory. YesNoValues → boolean."
* item.required MS
  * ^short = "eCustomConfiguration.05 - Custom Data Element Usage"
  * ^comment = "NEMSIS eCustomConfiguration.05. Mandatory/Required → true; Recommended/Optional → false."
* item.answerOption MS
  * ^short = "eCustomConfiguration.06 - Custom Data Element Potential Values"
  * ^comment = "NEMSIS eCustomConfiguration.06. Usage: Optional. Repeating. Permitted NV codes (eCustomConfiguration.07) and pertinent negatives (eCustomConfiguration.08) are represented in responses via ext-ems-not-value / ext-ems-pertinent-negative."
