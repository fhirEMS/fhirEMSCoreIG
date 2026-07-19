// ============================================================
// Profile: EMS Provenance — PCR Signatures
// NEMSIS 3.5.1.251001CP2 — eOther.12–.21
// Parent: US Core Provenance
// ============================================================

Profile: EMSProvenance
Id: ems-provenance
Title: "EMS Provenance — PCR Signature"
Description: "Records a signature event on the EMS Patient Care Report (eOther.12–.21): who signed, in what role, for what reason, with what outcome. The FHIR Signature datatype carries the signature graphic (eOther.18 → signature.data) and time (eOther.19 → signature.when); NEMSIS signer/reason/status metadata is carried in ext-ems-signature-context. One Provenance per signature event."
Parent: $us-core-provenance

* ^url = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-provenance"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false

// ── NEMSIS signature metadata extension ──────────────────────
* extension contains $ext-ems-signature-context named signatureContext 0..1 MS
* extension[signatureContext]
  * ^short = "eOther.12–.17, .20/.21 - NEMSIS signature metadata"

// ── Target — what was signed ─────────────────────────────────
* target MS
  * ^short = "The PCR (EMSComposition) or Encounter this signature applies to"
  * ^comment = "Typically Reference(EMSComposition). US Core requires MS."

* recorded MS
  * ^comment = "When the provenance record was created; the signature time itself is signature.when (eOther.19)."

// ── Agent — who signed ───────────────────────────────────────
* agent MS
* agent.who MS
  * ^comment = "The signer: EMSPractitioner (crew), Patient, or RelatedPerson (patient representative, eOther.14). The NEMSIS signer classification (eOther.12) is in extension[signatureContext].extension[signerType]."
* agent.onBehalfOf MS
  * ^comment = "US Core provenance-1: required (reference the EMS agency Organization) whenever agent.who is a Practitioner."

// ── Signature — eOther.18/.19 ────────────────────────────────
* signature MS
* signature.when MS
  * ^short = "eOther.19 - Date/Time of Signature"
* signature.who MS
* signature.data MS
  * ^short = "eOther.18 - Signature Graphic (base64)"
  * ^comment = "NEMSIS eOther.18. Usage: Optional. The captured signature image; sigFormat should carry the MIME type (eOther.17)."
