# Security and Privacy - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* **Security and Privacy**

## Security and Privacy

# Security and Privacy Considerations

This page describes security and privacy considerations for **a research IG only**. This IG is not approved for production use. Any real-world implementation of EMS-FHIR data exchange must involve a qualified security architect, legal counsel, and compliance review under applicable federal and state law.

-------

## Overview

EMS Patient Care Report data is among the most sensitive personal health information collected in the US healthcare system. PCR data frequently includes:

* Full name, date of birth, SSN, driver's license (identity)
* Home address, GPS coordinates (location)
* Medical history, medications, allergies (clinical)
* Substance abuse, behavioral health, sexual assault indicators (sensitive clinical)
* Insurance and billing information (financial)

Implementations of this IG must address security and privacy requirements at every layer of the data exchange stack.

-------

## Applicable Regulations

Implementers must comply with all applicable laws, which may include:

| | |
| :--- | :--- |
| HIPAA Privacy Rule (45 CFR Part 164) | Governs use and disclosure of PHI by covered entities and business associates |
| HIPAA Security Rule (45 CFR §164.306) | Technical safeguards for electronic PHI (ePHI) |
| 42 CFR Part 2 | Substance use disorder treatment records — strict confidentiality |
| HITECH Act | Breach notification and enhanced HIPAA penalties |
| State EMS Privacy Laws | Many states have additional PCR confidentiality requirements |
| CMS Interoperability Rules (CMS-9115-F) | Patient Access API requirements for payers |
| ONC Information Blocking Rule | Prohibits unreasonable information blocking |

-------

## FHIR-Specific Security Guidance

Implementers should follow the [HL7 FHIR Security](https://www.hl7.org/fhir/security.html) and [FHIR Security Labels](https://www.hl7.org/fhir/security-labels.html) specifications.

### Transport Security

* All FHIR endpoints **SHALL** use TLS 1.2 or higher (TLS 1.3 recommended)
* Certificates must be from a trusted CA
* HTTP (unencrypted) **SHALL NOT** be used for any PHI exchange
* FHIR endpoints **SHALL** enforce mutual TLS (mTLS) or equivalent for server-to-server exchange

### Authentication and Authorization

* Implementations **SHALL** use OAuth 2.0 with SMART on FHIR scopes for API access
* Recommended scope structure: 
* `patient/Observation.read` — read vital signs for a specific patient
* `system/Composition.write` — write PCR bundles (agency → HIE)
* `system/*.read` — receiving facility full read access
 
* Backend service authorization (system-level) **SHALL** use the SMART Backend Services Authorization profile
* User-facing access **SHALL** use SMART App Launch Framework

### Audit Logging

* All read and write operations on EMS PCR resources **SHALL** be logged
* Logs **SHALL** include: resource type, patient identifier (tokenized), timestamp, actor, operation type
* Audit logs are themselves PHI and must be protected accordingly
* Recommend FHIR AuditEvent resources for structured audit trails

### Data Minimization

* Systems **SHALL** only request and transmit the minimum necessary data
* Point-of-care access (ED physician receiving PCR): full PCR appropriate
* Quality reporting: de-identified or limited data set per 45 CFR §164.514
* Research: de-identified data or data use agreement required

-------

## Sensitive Data Elements

The following NEMSIS data elements require elevated handling:

| | | | |
| :--- | :--- | :--- | :--- |
| ePatient.12 (SSN) | `Patient.identifier[ssn]` | **EXTREME** | Must be tokenized or hashed; never transmit in plain text |
| ePatient.20/21 (Driver's License) | `Patient.identifier[driversLicense]` | HIGH | Identity document — restrict access |
| eScene.11 (GPS Coordinates) | `ext-ems-scene-gps` | HIGH | May reveal home address or sensitive locations |
| ePatient.05–10 (Home Address) | `Patient.address` | HIGH | Full address — restrict downstream use |
| eSituation fields | `Condition.code` | HIGH | Substance abuse, psychiatric, sexual assault ICD-10 codes |
| ePayment.09–22 (Insurance) | `Coverage`resource | HIGH | Financial + insurance information |
| eMedications (all) | `MedicationAdministration` | MODERATE-HIGH | Substance use history inference possible |

### SSN Handling

**ePatient.12 (Social Security Number)** mapped to `Patient.identifier[ssn]`:

* **SHALL NOT** be transmitted as plain text in any FHIR resource
* Implementers must hash or tokenize before populating `identifier.value`
* Consider omitting SSN from FHIR entirely and using a patient matching service
* If included, apply `meta.security` label `R` (Restricted) to the Patient resource

-------

## Data Segmentation

For 42 CFR Part 2 records (substance use disorder treatment) that may appear in EMS PCRs:

* Apply FHIR security label `http://terminology.hl7.org/CodeSystem/v3-ActCode#ETH` to affected resources
* Implement consent-based access controls before releasing to non-treating providers
* Do not include in general-purpose query responses without consent verification

-------

## De-identification for Research

EMS PCR data used for research must be de-identified under one of:

1. **Expert Determination**(45 CFR §164.514(b)(1)) — statistical expert certifies re-identification risk < 0.05
1. **Safe Harbor**(45 CFR §164.514(b)(2)) — remove 18 HIPAA identifiers

NEMSIS fields that are Safe Harbor identifiers:

| | |
| :--- | :--- |
| Names | ePatient.02/03/04 |
| Geographic < 3-digit ZIP | ePatient.09, eScene.19, eDisposition.07 |
| Dates (except year) | eTimes.03, eTimes.12, ePatient.17, and all other timestamps |
| Phone numbers | ePatient.18 |
| SSN | ePatient.12 |
| Driver's license | ePatient.20/21 |
| Account numbers | ePayment identifiers |
| GPS coordinates | eScene.11, eDisposition.09 |
| IP addresses | Any system metadata |
| Photographs | Not in NEMSIS standard scope |

-------

## Known Security Gaps in This IG (Research IG — Not Production)

The following security-related items are intentionally not addressed in this research IG but would be required in any production implementation:

* **No CapabilityStatement defined** — access control scopes cannot be formally specified
* **No consent profile** — patient consent management for 42 CFR Part 2 not modeled
* **No AuditEvent profile** — audit trail not formally defined
* **No Provenance profile** — chain of custody for PCR amendments not modeled
* **Security labels not applied** to example instances
* **SSN example not tokenized** — the example instance `ex-ems-patient` uses a placeholder SSN value for illustration only
* **No formal threat model** has been produced for this IG

-------

## Additional References

* [FHIR Security (HL7)](https://www.hl7.org/fhir/security.html)
* [SMART on FHIR Authorization](https://smarthealthit.org)
* [SMART Backend Services](https://hl7.org/fhir/uv/bulkdata/authorization/index.html)
* [HIPAA Security Rule Summary (HHS)](https://www.hhs.gov/hipaa/for-professionals/security/index.html)
* [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)
* [ONC Health IT Certification](https://www.healthit.gov/topic/certification-ehrs)

