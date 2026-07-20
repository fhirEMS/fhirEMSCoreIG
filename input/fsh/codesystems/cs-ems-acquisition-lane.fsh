// ============================================================
// CodeSystem: EMS Outcome Acquisition Lane
// How an eOutcome element set was acquired (see the Outcome
// Acquisition guidance page and eOutcome planning documents).
// ============================================================

CodeSystem: EMSAcquisitionLane
Id: cs-ems-acquisition-lane
Title: "EMS Outcome Acquisition Lane"
Description: "The acquisition channel through which externally-sourced eOutcome data was obtained: granular FHIR queries against a hospital/HIE US Core endpoint, USCDI v3 C-CDA document exchange, a payer Provider Access API (CMS-0057-F), or registry/state linkage."
* ^version = "0.2.0"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.1.21"
* ^caseSensitive = true
* ^content = #complete
* #hie-fhir "Hospital/HIE US Core FHIR endpoint" "Scoped FHIR queries (request-time minimum necessary)."
* #ccd-document "USCDI v3 C-CDA document exchange" "CCD/discharge summary retrieval; minimum necessary enforced at ingestion."
* #payer-provider-access "Payer Provider Access API" "CMS-0057-F claims + USCDI data (effective 2027-01-01)."
* #registry "Registry / state linkage" "CARES, trauma/stroke registries, state hospital-linkage programs."
