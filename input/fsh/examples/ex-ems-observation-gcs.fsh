// ============================================================
// Example: EMS GCS Panel + Sub-observations
// Scenario: GCS assessment on MVA patient
// NEMSIS eVitals.19–23
// ============================================================

// ── GCS Eye Sub-observation ───────────────────────────────────
Instance: ex-ems-gcs-eye
InstanceOf: EMSObservationGCS
Title: "Example GCS Eye Opening Sub-observation"
Description: "GCS Eye Opening sub-observation (LOINC 9267-6). Score = 4 (Spontaneous)."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-gcs"
* status = #final
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding[0].code = #exam
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #9267-6
* effectiveDateTime = "2026-03-14T14:37:00-08:00"
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)
* valueInteger = 4

// ── GCS Verbal Sub-observation ────────────────────────────────
Instance: ex-ems-gcs-verbal
InstanceOf: EMSObservationGCS
Title: "Example GCS Verbal Response Sub-observation"
Description: "GCS Verbal Response sub-observation (LOINC 9270-0). Score = 4 (Confused)."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-gcs"
* status = #final
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding[0].code = #exam
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #9270-0
* code.coding[0].display = "Glasgow coma score verbal"
* effectiveDateTime = "2026-03-14T14:37:00-08:00"
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)
* valueInteger = 4

// ── GCS Motor Sub-observation ─────────────────────────────────
Instance: ex-ems-gcs-motor
InstanceOf: EMSObservationGCS
Title: "Example GCS Motor Response Sub-observation"
Description: "GCS Motor Response sub-observation (LOINC 9268-4). Score = 5 (Localizes pain)."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-gcs"
* status = #final
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding[0].code = #exam
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #9268-4
* code.coding[0].display = "Glasgow coma score motor"
* effectiveDateTime = "2026-03-14T14:37:00-08:00"
* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)
* valueInteger = 5

// ── GCS Total Panel ───────────────────────────────────────────
Instance: ex-ems-observation-gcs
InstanceOf: EMSObservationGCS
Title: "Example EMS GCS Panel Observation"
Description: "Example GCS total panel observation demonstrating the EMSObservationGCS profile. GCS 13 (E4V4M5) on MVA patient."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-observation-gcs"
* status = #final

* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding[0].code = #exam
* category[0].coding[0].display = "Exam"

// LOINC 9269-2 — GCS total panel
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #9269-2

// eVitals.01 - Date/Time
* effectiveDateTime = "2026-03-14T14:37:00-08:00"

* subject = Reference(ex-ems-patient)
* encounter = Reference(ex-ems-encounter)
* performer[0] = Reference(ex-ems-practitioner)

// eVitals.02 - Obtained Prior to EMS Care
* extension[obtainedPrior].valueCodeableConcept
    = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"

// hasMember — Eye, Verbal, Motor sub-observations
* hasMember[0] = Reference(ex-ems-gcs-eye)
* hasMember[1] = Reference(ex-ems-gcs-verbal)
* hasMember[2] = Reference(ex-ems-gcs-motor)

// eVitals.22 - GCS Qualifier
* component[gcsQualifier].code.coding[0].system = "http://loinc.org"
* component[gcsQualifier].code.coding[0].code = #55285-1
* component[gcsQualifier].valueCodeableConcept
    = $nemsis-vitals#3322003 "Initial GCS has legitimate values without interventions"
