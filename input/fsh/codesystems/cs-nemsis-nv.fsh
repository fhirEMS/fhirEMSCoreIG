// ============================================================
// NEMSIS Not Value (NV) CodeSystem
// Three meta-codes used across 269 of 657 NEMSIS elements
// NEMSIS 3.5.1.251001CP2
// ============================================================

CodeSystem: NEMSISNotValues
Id: cs-nemsis-not-values
Title: "NEMSIS Not Value Codes"
Description: "NEMSIS Not Value (NV) codes used when a data element cannot be recorded. Three codes apply: NotApplicable (element does not apply to this event), NotRecorded (element applies but was not documented), NotReporting (agency is not reporting this element)."
* ^version = "3.5.1.251001CP2"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #NV.NotApplicable  "Not Applicable"  "The data element is not applicable to this EMS event."
* #NV.NotRecorded    "Not Recorded"    "The data element applies but was not recorded."
* #NV.NotReporting   "Not Reporting"   "The agency is not reporting this data element."
