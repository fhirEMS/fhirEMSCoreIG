// ============================================================
// fhirEMSCore Clinical Intervention Extensions
// NEMSIS 3.5.1.251001CP2 — eMedications / eProcedures
// ============================================================

// ── Extension: EMS Medication Context ────────────────────────
// Groups NEMSIS eMedications elements that have no direct
// FHIR MedicationAdministration base element.
Extension: EMSMedicationContext
Id: ext-ems-medication-context
Title: "EMS Medication Administration Context"
Description: "Contextual data for NEMSIS eMedications not directly representable in FHIR MedicationAdministration: prior EMS care indicator, clinical response, complication(s), and authorization type."
Context: MedicationAdministration
* extension contains
    priorEMSCare   0..1 MS and
    response       0..1 MS and
    complication   0..* MS and
    authorization  0..1    and
    byAnotherUnit  0..1

* extension[priorEMSCare]
  * ^short = "eMedications.02 - Medication Administered Prior to this Unit's EMS Care"
  * ^comment = "NEMSIS eMedications.02. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://hl7.org/fhir/ValueSet/yesnodontknow (extensible)

* extension[response]
  * ^short = "eMedications.07 - Response to Medication"
  * ^comment = "NEMSIS eMedications.07. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSClinicalResponseVS (required)

* extension[complication]
  * ^short = "eMedications.08 - Medication Complication"
  * ^comment = "NEMSIS eMedications.08. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Repeating (1..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSMedicationComplicationVS (required)

* extension[authorization]
  * ^short = "eMedications.11 - Medication Authorization"
  * ^comment = "NEMSIS eMedications.11. Usage: Optional. How the medication administration was authorized."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAuthorizationTypeVS (required)

* extension[byAnotherUnit]
  * ^short = "eMedications.13 - Medication Administered by Another Unit"
  * ^comment = "NEMSIS eMedications.13. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://hl7.org/fhir/ValueSet/yesnodontknow (extensible)

// ── Extension: EMS Arrest Context ────────────────────────────
// Groups NEMSIS eArrest elements that have no direct FHIR base
// element — attached to the arrest Condition resource.
Extension: EMSArrestContext
Id: ext-ems-arrest-context
Title: "EMS Cardiac Arrest Context"
Description: "Contextual data for NEMSIS eArrest not directly representable in FHIR Condition: witnessed-by, resuscitation actions, AED use, CPR type, therapeutic hypothermia, ROSC, neurological outcome, end-of-event, and first-responder roles."
Context: Condition
* extension contains
    cardiacArrest        0..1 MS and   // eArrest.01
    etiology             0..1 MS and   // eArrest.02
    resuscitationBy      0..* MS and   // eArrest.03
    witnessedBy          0..* MS and   // eArrest.04
    aedUsePrior          0..1 MS and   // eArrest.07
    cprType              0..* MS and   // eArrest.09
    therapeuticHypothermia 0..1    and // eArrest.10
    firstRhythm          0..1 MS and   // eArrest.11
    rosc                 0..* MS and   // eArrest.12
    neurologicalOutcome  0..1    and   // eArrest.13
    arrestDateTime       0..1 MS and   // eArrest.14
    cprDiscontinuedReason 0..* MS and  // eArrest.16
    rhythmAtDestination  0..* MS and   // eArrest.17
    endOfArrestEvent     0..1 MS and   // eArrest.18
    whoFirstCPR          0..1 MS and   // eArrest.20
    whoFirstAED          0..1 MS and   // eArrest.21
    whoFirstDefibrillated 0..1 MS      // eArrest.22

* extension[cardiacArrest]
  * ^short = "eArrest.01 - Cardiac Arrest"
  * ^comment = "NEMSIS eArrest.01. Usage: Required/National. NV: NotRecorded."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSCardiacArrestVS (required)

* extension[etiology]
  * ^short = "eArrest.02 - Cause of Cardiac Arrest"
  * ^comment = "NEMSIS eArrest.02. Usage: Required/National. NV: NotRecorded."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSArrestEtiologyVS (required)

* extension[resuscitationBy]
  * ^short = "eArrest.03 - Resuscitation Attempted By This Unit"
  * ^comment = "NEMSIS eArrest.03. Usage: Required/National. NV: NotRecorded. Repeating (1..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSResuscitationAttemptedVS (required)

* extension[witnessedBy]
  * ^short = "eArrest.04 - Arrest Witnessed By"
  * ^comment = "NEMSIS eArrest.04. Usage: Required/National. NV: NotRecorded. Repeating (1..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSArrestWitnessedVS (required)

* extension[aedUsePrior]
  * ^short = "eArrest.07 - AED Use Prior to EMS Arrival"
  * ^comment = "NEMSIS eArrest.07. Usage: Required/National. NV: NotRecorded."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAEDUseVS (required)

* extension[cprType]
  * ^short = "eArrest.09 - Type of CPR Provided"
  * ^comment = "NEMSIS eArrest.09. Usage: Required/National. NV: NotRecorded. Repeating (1..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSCPRTypeVS (required)

* extension[therapeuticHypothermia]
  * ^short = "eArrest.10 - Therapeutic Hypothermia (TH)"
  * ^comment = "NEMSIS eArrest.10. Usage: Optional. Whether TH was initiated."
  * value[x] only boolean

* extension[firstRhythm]
  * ^short = "eArrest.11 - First Monitored Cardiac Rhythm of the Patient"
  * ^comment = "NEMSIS eArrest.11. Usage: Required/National. NV: NotRecorded."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSFirstRhythmVS (required)

* extension[rosc]
  * ^short = "eArrest.12 - Any Return of Spontaneous Circulation"
  * ^comment = "NEMSIS eArrest.12. Usage: Required/National. NV: NotRecorded. Repeating (1..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSROSCVs (required)

* extension[neurologicalOutcome]
  * ^short = "eArrest.13 - Neurological Outcome at Hospital Discharge"
  * ^comment = "NEMSIS eArrest.13. Usage: Optional. Cerebral performance category (CPC)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSNeurologicalOutcomeVS (required)

* extension[arrestDateTime]
  * ^short = "eArrest.14 - Date/Time of Cardiac Arrest"
  * ^comment = "NEMSIS eArrest.14. Usage: Required/National. Nillable. NV: NotRecorded. PN: ExamFindingNotPresent, UnableToComplete."
  * value[x] only dateTime

* extension[cprDiscontinuedReason]
  * ^short = "eArrest.16 - Reason CPR/Resuscitation Discontinued"
  * ^comment = "NEMSIS eArrest.16. Usage: Required/National. NV: NotRecorded. Repeating (1..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSCPRDiscontinuedReasonVS (required)

* extension[rhythmAtDestination]
  * ^short = "eArrest.17 - Cardiac Rhythm on Arrival at Destination"
  * ^comment = "NEMSIS eArrest.17. Usage: Required/National. NV: NotRecorded. Uses cardiac rhythm codes (9901xxx). Repeating (1..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSCardiacRhythmVS (required)

* extension[endOfArrestEvent]
  * ^short = "eArrest.18 - End of EMS Cardiac Arrest Event"
  * ^comment = "NEMSIS eArrest.18. Usage: Required/National. NV: NotRecorded."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSArrestEndEventVS (required)

* extension[whoFirstCPR]
  * ^short = "eArrest.20 - Who First Initiated CPR"
  * ^comment = "NEMSIS eArrest.20. Usage: Required/National. NV: NotRecorded."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSArrestFirstResponderVS (required)

* extension[whoFirstAED]
  * ^short = "eArrest.21 - Who First Applied the AED"
  * ^comment = "NEMSIS eArrest.21. Usage: Required/National. NV: NotRecorded."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSArrestFirstResponderVS (required)

* extension[whoFirstDefibrillated]
  * ^short = "eArrest.22 - Who First Defibrillated the Patient"
  * ^comment = "NEMSIS eArrest.22. Usage: Required/National. NV: NotRecorded."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSArrestFirstResponderVS (required)

// ── Extension: EMS Airway Context ─────────────────────────────
// Groups NEMSIS eAirway elements — attached to the Observation
// or Procedure resource representing an airway intervention.
Extension: EMSAirwayContext
Id: ext-ems-airway-context
Title: "EMS Airway Management Context"
Description: "Contextual data for NEMSIS eAirway: indications, device confirmed, confirmation methods, confirming person, tube depth, crew member, complications, failure reasons, and decision/abandoned timestamps."
Context: Observation, Procedure
* extension contains
    indications          0..* MS and   // eAirway.01
    confirmedDateTime    0..1 MS and   // eAirway.02
    deviceConfirmed      0..1 MS and   // eAirway.03
    confirmationMethod   0..* MS and   // eAirway.04
    tubeDepth            0..1    and   // eAirway.05
    confirmingPersonType 0..1 MS and   // eAirway.06
    complications        0..* MS and   // eAirway.08
    failureReasons       0..* MS and   // eAirway.09
    decisionDateTime     0..1    and   // eAirway.10
    abandonedDateTime    0..1          // eAirway.11

* extension[indications]
  * ^short = "eAirway.01 - Indications for Airway Management"
  * ^comment = "NEMSIS eAirway.01. Usage: Recommended. NV: NotRecorded. Repeating (1..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAirwayIndicationsVS (required)

* extension[confirmedDateTime]
  * ^short = "eAirway.02 - Date/Time Airway Device Placement Confirmed"
  * ^comment = "NEMSIS eAirway.02. Usage: Recommended. NV: NotRecorded."
  * value[x] only dateTime

* extension[deviceConfirmed]
  * ^short = "eAirway.03 - Device Being Confirmed"
  * ^comment = "NEMSIS eAirway.03. Usage: Recommended. NV: NotRecorded."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAirwayDeviceVS (required)

* extension[confirmationMethod]
  * ^short = "eAirway.04 - Airway Device Confirmation Method"
  * ^comment = "NEMSIS eAirway.04. Usage: Recommended. NV: NotRecorded. Repeating (1..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAirwayConfirmationMethodVS (required)

* extension[tubeDepth]
  * ^short = "eAirway.05 - Tube Depth"
  * ^comment = "NEMSIS eAirway.05. Usage: Optional. Intubation tube depth in centimeters at the lip."
  * value[x] only Quantity
  * valueQuantity from http://hl7.org/fhir/ValueSet/ucum-bodylength (preferred)

* extension[confirmingPersonType]
  * ^short = "eAirway.06 - Type of Individual Confirming Airway"
  * ^comment = "NEMSIS eAirway.06. Usage: Recommended. NV: NotRecorded."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAirwayConfirmingPersonVS (required)

* extension[complications]
  * ^short = "eAirway.08 - Airway Complications Encountered"
  * ^comment = "NEMSIS eAirway.08. Usage: Recommended. NV: NotRecorded. PN: ExamFindingNotPresent. Repeating (1..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAirwayComplicationsVS (required)

* extension[failureReasons]
  * ^short = "eAirway.09 - Reasons Airway Management Was Not Successful"
  * ^comment = "NEMSIS eAirway.09. Usage: Optional. Repeating (0..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAirwayFailureReasonsVS (required)

* extension[decisionDateTime]
  * ^short = "eAirway.10 - Date/Time Decision to Manage the Airway"
  * ^comment = "NEMSIS eAirway.10. Usage: Optional."
  * value[x] only dateTime

* extension[abandonedDateTime]
  * ^short = "eAirway.11 - Date/Time Airway Management Was Abandoned"
  * ^comment = "NEMSIS eAirway.11. Usage: Optional."
  * value[x] only dateTime

// ── Extension: EMS Procedure Context ─────────────────────────
// Groups NEMSIS eProcedures elements that have no direct
// FHIR Procedure base element.
Extension: EMSProcedureContext
Id: ext-ems-procedure-context
Title: "EMS Procedure Context"
Description: "Contextual data for NEMSIS eProcedures not directly representable in FHIR Procedure: prior EMS care indicator, number of attempts, clinical response, authorization type, airway technique(s), and performed-by-another-unit indicator."
Context: Procedure
* extension contains
    priorEMSCare      0..1 MS and
    numberOfAttempts  0..1 MS and
    successful        0..1 MS and
    response          0..1 MS and
    authorization     0..1    and
    airwayTechnique   0..* MS and
    byAnotherUnit     0..1

* extension[priorEMSCare]
  * ^short = "eProcedures.02 - Procedure Performed Prior to this Unit's EMS Care"
  * ^comment = "NEMSIS eProcedures.02. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://hl7.org/fhir/ValueSet/yesnodontknow (extensible)

* extension[numberOfAttempts]
  * ^short = "eProcedures.05 - Number of Procedure Attempts"
  * ^comment = "NEMSIS eProcedures.05. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Integer count of attempts."
  * value[x] only integer

* extension[successful]
  * ^short = "eProcedures.06 - Procedure Successful"
  * ^comment = "NEMSIS eProcedures.06. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. YesNoValues mapped to v2-0136 Y/N."
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://hl7.org/fhir/ValueSet/yesnodontknow (extensible)

* extension[response]
  * ^short = "eProcedures.08 - Response to Procedure"
  * ^comment = "NEMSIS eProcedures.08. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSClinicalResponseVS (required)

* extension[authorization]
  * ^short = "eProcedures.11 - Procedure Authorization"
  * ^comment = "NEMSIS eProcedures.11. Usage: Optional. How the procedure was authorized."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAuthorizationTypeVS (required)

* extension[airwayTechnique]
  * ^short = "eProcedures.14 - Airway Placement Technique"
  * ^comment = "NEMSIS eProcedures.14. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. Repeating (0..M). Required when procedure is an airway placement."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAirwayTechniqueVS (required)

* extension[byAnotherUnit]
  * ^short = "eProcedures.15 - Procedure Performed by Another Unit"
  * ^comment = "NEMSIS eProcedures.15. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://hl7.org/fhir/ValueSet/yesnodontknow (extensible)
