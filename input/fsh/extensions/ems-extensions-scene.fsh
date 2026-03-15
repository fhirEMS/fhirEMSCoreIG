// ============================================================
// fhirEMSCore Location/Scene Extensions
// NEMSIS 3.5.1.251001CP2 — eScene section
// Context: Location
// ============================================================

// ── Extension: EMS Scene Details ─────────────────────────────
// NEMSIS: eScene.01 (First Unit on Scene), eScene.06 (Number of Patients),
//         eScene.07 (Mass Casualty Incident), eScene.08 (MCI Triage Class),
//         eScene.13 (Facility/Location Name)
Extension: EMSSceneDetails
Id: ext-ems-scene-details
Title: "EMS Scene Details"
Description: """
  Groups key NEMSIS eScene data elements that have no FHIR Location base equivalent:
  eScene.01 (First EMS Unit on Scene), eScene.06 (Number of Patients at Scene),
  eScene.07 (Mass Casualty Incident), eScene.08 (MCI Triage Classification),
  eScene.13 (Incident Facility or Location Name). All Required/National unless noted.
"""
Context: Location
* extension contains
    firstUnitOnScene    1..1 MS and
    numberOfPatients    1..1 MS and
    massCasualtyIncident 1..1 MS and
    mciTriageClass      0..* MS and
    facilityName        0..1

* extension[firstUnitOnScene]
  * ^short = "eScene.01 - First EMS Unit on Scene"
  * ^comment = "NEMSIS eScene.01. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Whether this unit was the first EMS unit to arrive at the scene."
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://hl7.org/fhir/ValueSet/yesnodontknow (extensible)

* extension[numberOfPatients]
  * ^short = "eScene.06 - Number of Patients at Scene"
  * ^comment = "NEMSIS eScene.06. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable."
  * value[x] only positiveInt

* extension[massCasualtyIncident]
  * ^short = "eScene.07 - Mass Casualty Incident"
  * ^comment = "NEMSIS eScene.07. Usage: Required/National. Nillable. NV: NotRecorded, NotApplicable. Whether this event is classified as a Mass Casualty Incident."
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://hl7.org/fhir/ValueSet/yesnodontknow (extensible)

* extension[mciTriageClass]
  * ^short = "eScene.08 - Triage Classification for MCI Patient"
  * ^comment = "NEMSIS eScene.08. Usage: Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable. Only populated when eScene.07 = Yes (MCI). START/JumpSTART triage color."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSMCITriageClassVS (required)

* extension[facilityName]
  * ^short = "eScene.13 - Incident Facility or Location Name"
  * ^comment = "NEMSIS eScene.13. Usage: Optional. The name of a facility or named location where the incident occurred."
  * value[x] only string

// ── Extension: EMS Agency Details ────────────────────────────
// NEMSIS: dAgency.09 (Primary Service Type), dAgency.10 (Other Service Types),
//         dAgency.11 (Level of Service), dAgency.12 (Organization Status)
// Context: Organization
Extension: EMSAgencyDetails
Id: ext-ems-agency-details
Title: "EMS Agency Details"
Description: """
  Groups NEMSIS dAgency data elements that have no FHIR Organization base equivalent:
  dAgency.09 (Primary Type of Service), dAgency.10 (Other Types of Service),
  dAgency.11 (Level of Service), dAgency.12 (Organization Status).
  All Mandatory or Required/National.
"""
Context: Organization
* extension contains
    primaryServiceType  1..1 MS and
    otherServiceType    0..* MS and
    levelOfService      1..1 MS and
    organizationStatus  1..1 MS

* extension[primaryServiceType]
  * ^short = "dAgency.09 - Primary Type of Service"
  * ^comment = "NEMSIS dAgency.09. Usage: Mandatory/National. Not nillable. No NV or PN. The primary type of EMS service provided."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAgencyServiceTypeVS (required)

* extension[otherServiceType]
  * ^short = "dAgency.10 - Other Types of Service"
  * ^comment = "NEMSIS dAgency.10. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. Additional service types beyond the primary."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAgencyServiceTypeVS (required)

* extension[levelOfService]
  * ^short = "dAgency.11 - Level of Service"
  * ^comment = "NEMSIS dAgency.11. Usage: Mandatory/National. Not nillable. No NV or PN. The highest level of care the agency is licensed/certified to provide."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAgencyLevelOfServiceVS (required)

* extension[organizationStatus]
  * ^short = "dAgency.12 - Organization Status"
  * ^comment = "NEMSIS dAgency.12. Usage: Mandatory/National. Not nillable. No NV or PN. Whether the agency is volunteer, non-volunteer, or mixed."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSAgencyOrgStatusVS (required)
