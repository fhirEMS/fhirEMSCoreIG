// ============================================================
// Extensions: EMS Custom Elements (eCustom)
// NEMSIS 3.5.1.251001CP2 — NDR-010
// ============================================================

// ── Extension: EMS Custom Result Target ──────────────────────
// eCustomResults.03 — correlates a custom result to the PCR
// element or group it applies to.
Extension: EMSCustomTarget
Id: ext-ems-custom-target
Title: "EMS Custom Result Target"
Description: "NEMSIS eCustomResults.03 - The CorrelationID of the PatientCareReport element or group that this custom element result applies to."
Context: QuestionnaireResponse.item
* value[x] only string
