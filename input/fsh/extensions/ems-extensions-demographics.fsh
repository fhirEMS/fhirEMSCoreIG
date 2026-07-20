// ============================================================
// Extensions: EMS DEM Demographics
// NEMSIS 3.5.1.251001CP2 — dContact.13–.16, dConfiguration,
// dLocation.05
// ============================================================

// ── Extension: EMS Medical Director ──────────────────────────
// dContact.13–.16 — agency medical director credentials.
Extension: EMSMedicalDirector
Id: ext-ems-medical-director
Title: "EMS Agency Medical Director"
Description: "NEMSIS agency medical director credentials: degree (dContact.13), board certification type (dContact.14), compensation (dContact.15), and board certified/eligible status (dContact.16)."
Context: Organization
* extension contains
    degree                0..1 MS and   // dContact.13
    boardCertificationType 0..* MS and  // dContact.14
    compensation          0..1    and   // dContact.15
    boardCertifiedEligible 0..1         // dContact.16

* extension[degree]
  * ^short = "dContact.13 - Agency Medical Director Degree"
  * ^comment = "NEMSIS dContact.13. Usage: Recommended."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSMedicalDirectorDegreeVS (required)

* extension[boardCertificationType]
  * ^short = "dContact.14 - Agency Medical Director Board Certification Type"
  * ^comment = "NEMSIS dContact.14. Usage: Recommended. Repeating (0..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSMedicalDirectorBoardCertVS (required)

* extension[compensation]
  * ^short = "dContact.15 - Medical Director Compensation"
  * ^comment = "NEMSIS dContact.15. Usage: Optional."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSDirectorCompensationVS (required)

* extension[boardCertifiedEligible]
  * ^short = "dContact.16 - EMS Medical Director Board Certified/Eligible"
  * ^comment = "NEMSIS dContact.16. Usage: Optional. NEMSIS YesNoValues mapped to boolean."
  * value[x] only boolean

// ── Extension: EMS Agency Configuration ──────────────────────
// dConfiguration — state configuration of agency capabilities.
Extension: EMSAgencyConfiguration
Id: ext-ems-agency-configuration
Title: "EMS Agency Configuration"
Description: "NEMSIS dConfiguration: state, permitted procedures/medications with certification levels, protocols, specialty service capability, billing status, EMD provision/vendor, patient monitoring capability, crew call signs, and dispatch centers. Repeat the extension per configured state (dConfiguration.01)."
Context: Organization
* extension contains
    state                 0..1 MS and   // dConfiguration.01
    procedure             0..* MS and   // dConfiguration.06/.07
    medication            0..* MS and   // dConfiguration.08/.09
    protocol              0..* MS and   // dConfiguration.10
    specialtyCapability   0..*    and   // dConfiguration.11
    billingStatus         0..1    and   // dConfiguration.12
    emdProvided           0..1 MS and   // dConfiguration.13
    emdVendor             0..*    and   // dConfiguration.14
    monitoringCapability  0..*    and   // dConfiguration.15
    crewCallSign          0..* MS and   // dConfiguration.16
    dispatchCenter        0..*          // dConfiguration.17

* extension[state]
  * ^short = "dConfiguration.01 - State Associated with this Configuration"
  * ^comment = "NEMSIS dConfiguration.01. Usage: Mandatory. 2-letter USPS abbreviation per NDR-004."
  * value[x] only string

* extension[procedure]
  * ^short = "dConfiguration.06/.07 - EMS Agency Procedures with permitted certification levels"
  * ^comment = "NEMSIS dConfiguration.07 (SNOMED procedure code) with dConfiguration.06 (permitted certification levels). Repeat per procedure."
  * extension contains code 0..1 MS and permittedLevel 0..*
  * extension[code]
    * ^short = "dConfiguration.07 - Procedure (SNOMED CT)"
    * value[x] only CodeableConcept
  * extension[permittedLevel]
    * ^short = "dConfiguration.06 - Certification level permitted to perform"
    * ^comment = "NEMSIS state certification/licensure levels; uses the eCrew.02 certification level codes."
    * value[x] only CodeableConcept
    * valueCodeableConcept from EMSCertificationLevelVS (extensible)

* extension[medication]
  * ^short = "dConfiguration.08/.09 - EMS Agency Medications with permitted certification levels"
  * ^comment = "NEMSIS dConfiguration.09 (RxNorm medication code) with dConfiguration.08 (permitted certification levels). Repeat per medication."
  * extension contains code 0..1 MS and permittedLevel 0..*
  * extension[code]
    * ^short = "dConfiguration.09 - Medication (RxNorm)"
    * value[x] only CodeableConcept
  * extension[permittedLevel]
    * ^short = "dConfiguration.08 - Certification level permitted to administer"
    * value[x] only CodeableConcept
    * valueCodeableConcept from EMSCertificationLevelVS (extensible)

* extension[protocol]
  * ^short = "dConfiguration.10 - EMS Agency Protocols"
  * ^comment = "NEMSIS dConfiguration.10. Same 9914xxx protocol codes as eProtocols.01."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSProtocolUsedVS (extensible)

* extension[specialtyCapability]
  * ^short = "dConfiguration.11 - EMS Agency Specialty Service Capability"
  * ^comment = "NEMSIS dConfiguration.11. Usage: Recommended. Repeating (0..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSSpecialtyServiceCapabilityVS (required)

* extension[billingStatus]
  * ^short = "dConfiguration.12 - Billing Status"
  * ^comment = "NEMSIS dConfiguration.12. Usage: Optional. Whether the agency bills for service; NEMSIS YesNoValues mapped to boolean."
  * value[x] only boolean

* extension[emdProvided]
  * ^short = "dConfiguration.13 - EMD Provided to EMS Agency Service Area"
  * ^comment = "NEMSIS dConfiguration.13. Usage: Mandatory."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSEMDProvidedVS (required)

* extension[emdVendor]
  * ^short = "dConfiguration.14 - EMD Vendor"
  * ^comment = "NEMSIS dConfiguration.14. Usage: Recommended. Free-text vendor name. Repeating (0..M)."
  * value[x] only string

* extension[monitoringCapability]
  * ^short = "dConfiguration.15 - Patient Monitoring Capability(ies)"
  * ^comment = "NEMSIS dConfiguration.15. Usage: Recommended. Repeating (0..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSMonitoringCapabilityVS (required)

* extension[crewCallSign]
  * ^short = "dConfiguration.16 - Crew Call Sign"
  * ^comment = "NEMSIS dConfiguration.16. Usage: Mandatory. Repeating (1..M)."
  * value[x] only string

* extension[dispatchCenter]
  * ^short = "dConfiguration.17 - Dispatch Center (CAD) Name or ID"
  * ^comment = "NEMSIS dConfiguration.17. Usage: Optional. Repeating (0..M)."
  * value[x] only string

// ── Extension: US National Grid Coordinates ──────────────────
Extension: EMSUSNG
Id: ext-ems-usng
Title: "US National Grid Coordinates"
Description: "NEMSIS dLocation.05 - The US National Grid (USNG) coordinates of an EMS location."
Context: Location
* value[x] only string
