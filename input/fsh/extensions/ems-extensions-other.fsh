// ============================================================
// Extensions: EMS Other (eOther)
// NEMSIS 3.5.1.251001CP2 — eOther.01–.08 context, .09 document
// type, .12–.17/.20/.21 signature metadata
// ============================================================

// ── Extension: EMS Other Context ─────────────────────────────
// Encounter-level eOther flags with no FHIR base element.
Extension: EMSOtherContext
Id: ext-ems-other-context
Title: "EMS Other Context"
Description: "Encounter-level NEMSIS eOther data: review requested, potential system-of-care/registry candidacy, disaster type, and the crew member completing the report."
Context: Encounter
* extension contains
    reviewRequested       0..1    and   // eOther.01
    registryCandidate     0..* MS and   // eOther.02
    disasterType          0..*    and   // eOther.07
    crewCompletingReport  0..1 MS       // eOther.08

* extension[reviewRequested]
  * ^short = "eOther.01 - Review Requested"
  * ^comment = "NEMSIS eOther.01. Usage: Optional. NEMSIS YesNoValues mapped to boolean. Whether QA/QI review of this PCR is requested."
  * value[x] only boolean

* extension[registryCandidate]
  * ^short = "eOther.02 - Potential System of Care/Specialty/Registry Patient"
  * ^comment = "NEMSIS eOther.02. Usage: Optional. Repeating (0..M). Nillable."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSRegistryCandidateVS (required)

* extension[disasterType]
  * ^short = "eOther.07 - Natural, Suspected, Intentional, or Unintentional Disaster"
  * ^comment = "NEMSIS eOther.07. Usage: Optional. Repeating (0..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSDisasterTypeVS (required)

* extension[crewCompletingReport]
  * ^short = "eOther.08 - Crew Member Completing this Report"
  * ^comment = "NEMSIS eOther.08. Usage: Recommended. The crew member ID (correlates to eCrew.01). The completing crew member is also the Composition.author."
  * value[x] only string

// ── Extension: EMS Crew Safety ───────────────────────────────
// Repeating group: per-crew-member PPE and work-related
// injury/exposure documentation (eOther.03–.06).
Extension: EMSCrewSafety
Id: ext-ems-crew-safety
Title: "EMS Crew Safety"
Description: "Per-crew-member safety documentation from NEMSIS eOther: PPE used (eOther.03), crew member ID (eOther.04), suspected work-related exposure/injury/death (eOther.05), and its type (eOther.06). Repeat the extension once per crew member."
Context: Encounter
* extension contains
    crewMemberId        0..1 MS and   // eOther.04
    ppeUsed             0..*    and   // eOther.03
    workRelatedExposure 0..1 MS and   // eOther.05
    exposureType        0..* MS       // eOther.06

* extension[crewMemberId]
  * ^short = "eOther.04 - EMS Professional (Crew Member) ID"
  * ^comment = "NEMSIS eOther.04. Usage: Optional. Correlates to eCrew.01."
  * value[x] only string

* extension[ppeUsed]
  * ^short = "eOther.03 - Personal Protective Equipment Used"
  * ^comment = "NEMSIS eOther.03. Usage: Optional. Repeating (0..M). PPE worn by this crew member."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSCrewPPEVS (required)

* extension[workRelatedExposure]
  * ^short = "eOther.05 - Suspected EMS Work Related Exposure, Injury, or Death"
  * ^comment = "NEMSIS eOther.05. Usage: Recommended. NEMSIS YesNoValues mapped to boolean."
  * value[x] only boolean

* extension[exposureType]
  * ^short = "eOther.06 - The Type of Work-Related Injury, Death or Suspected Exposure"
  * ^comment = "NEMSIS eOther.06. Usage: Recommended. Repeating (0..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSWorkInjuryExposureVS (required)

// ── Extension: EMS Document Type ─────────────────────────────
// NEMSIS document type for external attachments. US Core fixes
// DocumentReference.type to a required LOINC binding, so the
// NEMSIS 4509xxx code is carried here.
Extension: EMSDocumentType
Id: ext-ems-document-type
Title: "EMS External Document Type"
Description: "NEMSIS eOther.09 - The type of external electronic document, using NEMSIS 4509xxx codes. Complements DocumentReference.type (US Core-required LOINC binding)."
Context: DocumentReference
* value[x] only CodeableConcept
* valueCodeableConcept from EMSExternalDocumentTypeVS (required)

// ── Extension: EMS Signature Context ─────────────────────────
// Signature metadata beyond the FHIR Signature datatype
// (eOther.12–.17, .20, .21). eOther.18 (graphic) maps to
// Provenance.signature.data; eOther.19 to signature.when.
Extension: EMSSignatureContext
Id: ext-ems-signature-context
Title: "EMS Signature Context"
Description: "NEMSIS signature metadata for the PCR: type of person signing (eOther.12), signature reason (eOther.13), patient representative type (eOther.14), signature status (eOther.15), signature file name/type (eOther.16/.17), and signer name (eOther.20/.21)."
Context: Provenance
* extension contains
    signerType          0..1 MS and   // eOther.12
    signatureReason     0..* MS and   // eOther.13
    representativeType  0..1    and   // eOther.14
    signatureStatus     0..1 MS and   // eOther.15
    signatureFileName   0..1    and   // eOther.16
    signatureFileType   0..1    and   // eOther.17
    signerName          0..1          // eOther.20/.21

* extension[signerType]
  * ^short = "eOther.12 - Type of Person Signing"
  * ^comment = "NEMSIS eOther.12. Usage: Optional."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSSignerTypeVS (required)

* extension[signatureReason]
  * ^short = "eOther.13 - Signature Reason"
  * ^comment = "NEMSIS eOther.13. Usage: Optional. Repeating (0..M)."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSSignatureReasonVS (required)

* extension[representativeType]
  * ^short = "eOther.14 - Type Of Patient Representative"
  * ^comment = "NEMSIS eOther.14. Usage: Optional. Populate when the signer is a patient representative."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSPatientRepresentativeVS (required)

* extension[signatureStatus]
  * ^short = "eOther.15 - Signature Status"
  * ^comment = "NEMSIS eOther.15. Usage: Optional. Signed, or the reason not signed."
  * value[x] only CodeableConcept
  * valueCodeableConcept from EMSSignatureStatusVS (required)

* extension[signatureFileName]
  * ^short = "eOther.16 - Signature File Name"
  * ^comment = "NEMSIS eOther.16. Usage: Optional."
  * value[x] only string

* extension[signatureFileType]
  * ^short = "eOther.17 - Signature File Type"
  * ^comment = "NEMSIS eOther.17. Usage: Optional. Free-text graphic/MIME type (NEMSIS GraphicType is a string). Align with Provenance.signature.sigFormat when possible."
  * value[x] only string

* extension[signerName]
  * ^short = "eOther.20/.21 - Signature Last/First Name"
  * ^comment = "NEMSIS eOther.20 (Last) and eOther.21 (First). Usage: Optional. Name of the person who signed, as a HumanName."
  * value[x] only HumanName
