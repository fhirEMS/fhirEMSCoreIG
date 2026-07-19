// ============================================================
// fhirEMSCore Aliases
// NEMSIS 3.5.1.251001CP2 → FHIR R4 / US Core 6.1.0
// ============================================================

// --- FHIR Core ---
Alias: $loinc           = http://loinc.org
Alias: $snomed          = http://snomed.info/sct
Alias: $rxnorm          = http://www.nlm.nih.gov/research/umls/rxnorm
Alias: $ucum            = http://unitsofmeasure.org
Alias: $icd10cm         = http://hl7.org/fhir/sid/icd-10-cm
Alias: $icd10pcs        = http://www.cms.gov/Medicare/Coding/ICD10
Alias: $cpt             = http://www.ama-assn.org/go/cpt
Alias: $npi             = http://hl7.org/fhir/sid/us-npi
Alias: $v3-null         = http://terminology.hl7.org/CodeSystem/v3-NullFlavor
Alias: $v3-obs          = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $v2-0203         = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v2-0074         = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $condition-cat   = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $condition-clin  = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver   = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $obs-cat         = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $encounter-class = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $encounter-type  = http://terminology.hl7.org/CodeSystem/encounter-type
Alias: $task-code       = http://hl7.org/fhir/CodeSystem/task-code
Alias: $resource-types  = http://hl7.org/fhir/resource-types
Alias: $doc-types       = http://loinc.org
Alias: $ansi-state      = https://www.census.gov/library/reference/code-lists/ansi/ansi-codes-for-states.html

// --- US Core Profiles ---
Alias: $us-core-patient         = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-encounter       = http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Alias: $us-core-condition       = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis
Alias: $us-core-condition-ph    = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns
Alias: $us-core-observation     = http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-clinical-result
Alias: $us-core-vitals          = http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs
Alias: $us-core-procedure       = http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Alias: $us-core-practitioner    = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-organization    = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias: $us-core-location        = http://hl7.org/fhir/us/core/StructureDefinition/us-core-location
Alias: $us-core-allergy         = http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance
Alias: $us-core-medreq          = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Alias: $us-core-docref          = http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference
Alias: $us-core-pract-role      = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Alias: $us-core-bp              = http://hl7.org/fhir/us/core/StructureDefinition/us-core-blood-pressure

// --- NEMSIS Code Systems ---
Alias: $nemsis-cs               = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-codes
Alias: $nemsis-personnel-level  = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-personnel-level
Alias: $nemsis-vitals           = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-vitals
Alias: $nemsis-procedures       = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-procedures
Alias: $nemsis-medications      = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-medications
Alias: $nemsis-exam             = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-exam
Alias: $nemsis-situation        = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-situation
Alias: $nemsis-arrest           = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-arrest
Alias: $nemsis-airway           = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-airway
Alias: $nemsis-labs             = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-labs
Alias: $nemsis-injury           = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-injury
Alias: $nubc-discharge          = http://www.nubc.org/patient-discharge
Alias: $nemsis-payment          = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-payment
Alias: $nemsis-payer-type       = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-payer-type

// --- Payment Extensions ---
Alias: $ext-ems-primary-payment-method   = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-primary-payment-method
Alias: $ext-ems-response-urgency         = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-response-urgency
Alias: $ext-ems-transport-assessment     = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-transport-assessment
Alias: $ext-ems-ambulance-transport-reason = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-ambulance-transport-reason
Alias: $ext-ems-ambulance-conditions     = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-ambulance-conditions
Alias: $ext-ems-mileage-to-closest       = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-mileage-to-closest
Alias: $ext-ems-als-assessment           = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-als-assessment
Alias: $ext-ems-cms-service-level        = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-cms-service-level
Alias: $ext-ems-payer-type               = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-payer-type
Alias: $nemsis-nv               = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-not-values
Alias: $nemsis-pn               = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-pertinent-negative
Alias: $nemsis-patient-cs           = http://hl7.org/fhir/us/emscore/CodeSystem/nemsis-patient
Alias: $nemsis-encounter-cs         = http://hl7.org/fhir/us/emscore/CodeSystem/cs-nemsis-encounter

// --- NEMSIS Extensions ---
Alias: $ext-ems-response-mode            = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-response-mode
Alias: $ext-ems-additional-response-mode = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-additional-response-mode
Alias: $ext-ems-response-delays          = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-response-delays
Alias: $ext-ems-unit                     = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-unit
Alias: $ext-ems-dispatch-info            = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-dispatch-info
Alias: $ext-ems-disposition-codes        = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-disposition-codes
Alias: $ext-ems-transport-details        = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-transport-details
Alias: $ext-ems-destination-details      = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-destination-details
Alias: $ext-ems-census-tract             = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-census-tract
Alias: $ext-ems-alternate-residence = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-alternate-residence
Alias: $ext-ems-patient-age         = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-patient-age
Alias: $ext-ems-response-type       = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-response-type
Alias: $ext-ems-unit-type           = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-unit-type
Alias: $ext-ems-dispatch-reason     = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-dispatch-reason
Alias: $ext-ems-incident-type       = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-incident-type
Alias: $ext-ems-scene-gps           = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-scene-gps
Alias: $ext-ems-barrier             = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-patient-barrier
Alias: $ext-ems-certification-level = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-certification-level
Alias: $ext-ems-times               = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-times
Alias: $ext-ems-transport-reason    = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-transport-reason
Alias: $ext-ems-protocol            = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-protocol-used
Alias: $ext-ems-not-value           = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-not-value
Alias: $ext-ems-pertinent-negative  = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-pertinent-negative
Alias: $ext-ems-scene-details       = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-scene-details
Alias: $ext-ems-agency-details      = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-agency-details
Alias: $ext-ems-vital-obtained-prior = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-vital-obtained-prior
Alias: $ext-ems-ecg-context          = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-ecg-context
Alias: $ext-ems-bp-method            = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-bp-method
Alias: $ext-ems-stroke-scale-context = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-stroke-scale-context
Alias: $ext-ems-pain-scale-type      = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-pain-scale-type
Alias: $ext-ems-medication-context   = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-medication-context
Alias: $ext-ems-procedure-context    = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-procedure-context
Alias: $ext-ems-arrest-context       = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-arrest-context
Alias: $ext-ems-airway-context       = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-airway-context
Alias: $ext-ems-injury-context       = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-injury-context
Alias: $ext-ems-acn-incident         = http://hl7.org/fhir/us/emscore/StructureDefinition/ext-ems-acn-incident
