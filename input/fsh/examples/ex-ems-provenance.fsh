// ============================================================
// Example: EMS Provenance — Transfer-of-Care Signature
// NEMSIS eOther.12-.21
// ============================================================

Instance: ex-ems-provenance
InstanceOf: EMSProvenance
Title: "Example EMS Provenance — Transfer of Care Signature"
Description: "Example signature Provenance demonstrating the EMSProvenance profile: the EMS primary care provider signs the PCR for transfer of patient care at the receiving ED."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-provenance"

* target[0] = Reference(ex-ems-composition)
* recorded = "2026-03-14T15:08:00-08:00"

* agent[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/provenance-participant-type"
* agent[0].type.coding[0].code = #author
* agent[0].who = Reference(ex-ems-practitioner)
* agent[0].onBehalfOf = Reference(ex-ems-organization-agency)

// eOther.18/.19 - signature graphic and time
* signature[0].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[0].type[0].code = #1.2.840.10065.1.12.1.1
* signature[0].type[0].display = "Author's Signature"
* signature[0].when = "2026-03-14T15:08:00-08:00"
* signature[0].who = Reference(ex-ems-practitioner)
* signature[0].sigFormat = #image/png
* signature[0].data = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNkYPhfDwAChwGA60e6kgAAAABJRU5ErkJggg=="

// ── eOther.12-.17, .20/.21 - Signature Context ────────────────
* extension[signatureContext].extension[signerType].valueCodeableConcept
    = $nemsis-other#4512003 "EMS Primary Care Provider (for this event)"
* extension[signatureContext].extension[signatureReason][0].valueCodeableConcept
    = $nemsis-other#4513007 "Transfer of Patient Care"
* extension[signatureContext].extension[signatureStatus].valueCodeableConcept
    = $nemsis-other#4515031 "Signed"
* extension[signatureContext].extension[signatureFileName].valueString = "signature-p1234.png"
* extension[signatureContext].extension[signatureFileType].valueString = "image/png"
* extension[signatureContext].extension[signerName].valueHumanName.family = "Smith"
* extension[signatureContext].extension[signerName].valueHumanName.given[0] = "John"
