// ============================================================
// Examples: EMS Custom Elements (eCustom, NDR-010)
// Questionnaire definition + response pair
// ============================================================

Instance: ex-ems-questionnaire
InstanceOf: EMSQuestionnaire
Title: "Example EMS Questionnaire — Agency Custom Elements"
Description: "Example custom-element definition demonstrating the EMSQuestionnaire profile: an agency-defined element asking whether the ambulance was decontaminated after transport (eCustomConfiguration)."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-questionnaire"

* url = "https://fhirems.github.io/fhirEMSCoreIG/Questionnaire/ex-ems-questionnaire"
* name = "ExampleAgencyCustomElements"
* title = "Example Agency Custom Data Elements"
* status = #active

// eCustomConfiguration.01/.03/.04/.05/.09
* item[0].linkId = "agency-decon-01"
* item[0].text = "Ambulance Decontaminated After Transport"
* item[0].type = #choice
* item[0].repeats = false
* item[0].required = true
// eCustomConfiguration.06 - potential values
* item[0].answerOption[0].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v2-0136"
* item[0].answerOption[0].valueCoding.code = #Y
* item[0].answerOption[0].valueCoding.display = "Yes"
* item[0].answerOption[1].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v2-0136"
* item[0].answerOption[1].valueCoding.code = #N
* item[0].answerOption[1].valueCoding.display = "No"

Instance: ex-ems-questionnaireresponse
InstanceOf: EMSQuestionnaireResponse
Title: "Example EMS Questionnaire Response — Agency Custom Elements"
Description: "Example custom-element result demonstrating the EMSQuestionnaireResponse profile: the ambulance was decontaminated after the MVA transport (eCustomResults)."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-questionnaireresponse"

* questionnaire = "https://fhirems.github.io/fhirEMSCoreIG/Questionnaire/ex-ems-questionnaire"
* status = #completed
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* authored = "2026-03-14T15:30:00-08:00"

// eCustomResults.01/.02/.03
* item[0].linkId = "agency-decon-01"
* item[0].extension[customTarget].valueString = "UUID-PCR-2026-031400042-1"
* item[0].answer[0].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v2-0136"
* item[0].answer[0].valueCoding.code = #Y
* item[0].answer[0].valueCoding.display = "Yes"
