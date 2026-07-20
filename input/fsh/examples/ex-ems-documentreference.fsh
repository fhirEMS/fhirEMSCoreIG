// ============================================================
// Example: EMS Document Reference — 12-Lead ECG Attachment
// NEMSIS eOther.09-.11, .22
// ============================================================

Instance: ex-ems-documentreference
InstanceOf: EMSDocumentReference
Title: "Example EMS Document Reference — 12-Lead ECG"
Description: "Example external document attachment demonstrating the EMSDocumentReference profile: a 12-lead ECG PDF captured during the MVA response, typed with NEMSIS 4509009 (ECG/Lab Results) and LOINC 11524-6."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-documentreference"

* status = #current

// US Core type (LOINC) + NEMSIS document type extension
* type.coding[0].system = "http://loinc.org"
* type.coding[0].code = #11524-6
* type.coding[0].display = "EKG study"
* extension[nemsisDocumentType].valueCodeableConcept
    = $nemsis-other#4509009 "ECG/Lab Results"

* category[0].coding[0].system = "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category"
* category[0].coding[0].code = #clinical-note

* subject = Reference(ex-ems-patient)
* context.encounter[0] = Reference(ex-ems-encounter)
* date = "2026-03-14T14:45:00-08:00"
* author[0] = Reference(ex-ems-practitioner)
* custodian = Reference(ex-ems-organization-agency)

// eOther.10/.11/.22 - attachment
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.title = "12-lead-ecg-2026-03-14.pdf"
* content[0].attachment.url = "http://example.org/ems/attachments/12-lead-ecg-2026-03-14.pdf"
* content[0].attachment.creation = "2026-03-14T14:38:00-08:00"
