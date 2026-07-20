// ============================================================
// ValueSet: EMS Outcome Acquisition Lane
// ============================================================

ValueSet: EMSAcquisitionLaneVS
Id: vs-ems-acquisition-lane
Title: "EMS Outcome Acquisition Lane VS"
Description: "Acquisition channels for externally-sourced eOutcome data."
* ^url = "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-acquisition-lane"
* ^status = #active
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.25.219926138944530828037824748808947630693.2.154"
* include codes from system https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-ems-acquisition-lane
