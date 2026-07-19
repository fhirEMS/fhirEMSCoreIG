// ============================================================
// Extensions: EMS History (eHistory)
// NEMSIS 3.5.1.251001CP2 — eHistory.02–.05, .09–.11, .16–.19
// eHistory.01 → ext-ems-patient-barrier; .06/.07 → EMSAllergyIntolerance;
// .08 → EMSConditionProblems.code; .12–.15/.20 → EMSMedicationStatement.
// ============================================================

// ── Extension: EMS History Context ───────────────────────────
// Patient-history context that has no direct FHIR base element —
// attached to the EMSConditionProblems (past medical history)
// Condition resource.
Extension: EMSHistoryContext
Id: ext-ems-history-context
Title: "EMS History Context"
Description: "Contextual data for NEMSIS eHistory not directly representable in FHIR Condition: advance directives, patient's practitioner name, history source, immunization type/year, emergency information form, alcohol/drug use indicators, pregnancy status, and last oral intake."
Context: Condition
* extension contains
    advanceDirectives        0..* MS and   // eHistory.05
    practitionerName         0..1    and   // eHistory.02-.04
    historyObtainedFrom      0..*    and   // eHistory.09
    immunizationType         0..1    and   // eHistory.10
    immunizationYear         0..1    and   // eHistory.11
    emergencyInformationForm 0..1    and   // eHistory.16
    alcoholDrugUse           0..* MS and   // eHistory.17
    pregnancy                0..1 MS and   // eHistory.18
    lastOralIntake           0..1          // eHistory.19

* extension[advanceDirectives]
  * ^short = "eHistory.05 - Advance Directives"
  * ^comment = "NEMSIS eHistory.05. Usage: Recommended. Nillable. NV: NotRecorded. Repeating (0..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAdvanceDirectivesVS (required)

* extension[practitionerName]
  * ^short = "eHistory.02/.03/.04 - Patient's Practitioner Name"
  * ^comment = "NEMSIS eHistory.02 (Last), .03 (First), .04 (Middle). Usage: Optional. The patient's primary practitioner as a HumanName (family/given)."
  * value[x] only HumanName

* extension[historyObtainedFrom]
  * ^short = "eHistory.09 - Medical History Obtained From"
  * ^comment = "NEMSIS eHistory.09. Usage: Optional. Repeating (0..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSHistoryObtainedFromVS (required)

* extension[immunizationType]
  * ^short = "eHistory.10 - The Patient's Type of Immunization"
  * ^comment = "NEMSIS eHistory.10. Usage: Optional. PN: Refused, UnableToComplete."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSImmunizationTypeVS (required)

* extension[immunizationYear]
  * ^short = "eHistory.11 - Immunization Year"
  * ^comment = "NEMSIS eHistory.11. Usage: Optional. Year-precision date (e.g., 2020)."
  * value[x] only date

* extension[emergencyInformationForm]
  * ^short = "eHistory.16 - Presence of Emergency Information Form"
  * ^comment = "NEMSIS eHistory.16. Usage: Optional. NEMSIS YesNoValues mapped to boolean."
  * value[x] only boolean

* extension[alcoholDrugUse]
  * ^short = "eHistory.17 - Alcohol/Drug Use Indicators"
  * ^comment = "NEMSIS eHistory.17. Usage: Required/National. Nillable. NV: NotRecorded. PN: Refused, UnableToComplete. Repeating (1..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAlcoholDrugUseVS (required)

* extension[pregnancy]
  * ^short = "eHistory.18 - Pregnancy"
  * ^comment = "NEMSIS eHistory.18. Usage: Optional (State). PN: ExamFindingNotPresent, UnableToComplete. Omit for patients for whom pregnancy is not applicable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSPregnancyVS (required)

* extension[lastOralIntake]
  * ^short = "eHistory.19 - Last Oral Intake"
  * ^comment = "NEMSIS eHistory.19. Usage: Optional. Date/time of the patient's last oral intake."
  * value[x] only dateTime
