// ============================================================
// OperationDefinition: $ems-outcome-plan
// Measure-driven eOutcome acquisition planning (see the
// Outcome Acquisition guidance page)
// ============================================================

Instance: ems-outcome-plan
InstanceOf: OperationDefinition
Title: "EMS Outcome Acquisition Plan"
Usage: #definition
* url = "https://fhirems.github.io/fhirEMSCoreIG/OperationDefinition/ems-outcome-plan"
* version = "0.2.0"
* name = "EMSOutcomePlan"
* title = "EMS Outcome Acquisition Plan"
* status = #draft
* kind = #operation
* code = #ems-outcome-plan
* resource = #Encounter
* system = false
* type = false
* instance = true
* description = "Recursively evaluates the ePCR associated with an EMSEncounter, determines which outcome-linkage quality measures apply, and returns a minimum-necessary acquisition plan: applicable measures with their triggers, the required eOutcome elements, compiled FHIR queries with lane assignments (HIE/payer/registry), the derived SMART v2 scope set, the access posture (TREAT with recorded evidence, or HOPERAT), and sensitivity flags (e.g., 42 CFR Part 2 for SUD-triggered plans). A PCR with no applicable measures yields no external queries. See the Outcome Acquisition guidance page."
* comment = "The posture MUST be evidenced from the record (e.g., eResponse.05 = 2205031 Mobile Integrated Health Care Encounter elevates to TREAT); QA plans MUST NOT be labeled as treatment. Executing the returned plan is out of scope for this operation."

* parameter[0]
  * name = #pcr
  * use = #in
  * min = 0
  * max = "1"
  * type = #Bundle
  * documentation = "The full PCR document Bundle. When absent, the server resolves the PCR from the Encounter instance the operation is invoked on."

* parameter[+]
  * name = #measureRegistry
  * use = #in
  * min = 0
  * max = "1"
  * type = #canonical
  * documentation = "Alternate measure registry (agency/state overlay). Defaults to the IG's measure set."

* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * type = #Parameters
  * documentation = "The acquisition plan: posture (code + evidence), applicableMeasures (with triggeredBy), requiredElements (eOutcome element ids), queries (element, lane, FHIR query), requiredScopes, and sensitivity flags."
