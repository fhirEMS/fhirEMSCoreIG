# Must Support Requirements - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* **Must Support Requirements**

## Must Support Requirements

# Must Support Requirements

This page defines what "Must Support" (MS) means in fhirEMSCore and lists the Must Support obligations for each profile.

-------

## Must Support Definition

In fhirEMSCore, a **Must Support** (MS) flag means:

### For Sending Systems (EMS Software / PCR Systems)

A sending system **must**:

* Populate the element if the data is known and available
* Not suppress or omit the element if the underlying NEMSIS field is populated
* Use the specified terminology binding when the element is coded

A sending system **may**:

* Omit the element if the data is unknown, not applicable, or not collected
* Use a NEMSIS Not Value (NV) code (via `dataAbsentReason` or `ext-ems-not-value`) when the element is present in NEMSIS but cannot be populated

### For Receiving Systems (EHRs, HIEs, Public Health Systems)

A receiving system **must**:

* Process (not reject) a resource that contains a MS element, even if the receiving system does not use that element
* Display or store MS elements when received
* Not return an error if a MS element is present but the system doesn't understand it

A receiving system **should**:

* Persist and make available MS elements for downstream exchange

-------

## NEMSIS Usage Levels → Must Support Mapping

| | | | |
| :--- | :--- | :--- | :--- |
| Mandatory (M) | Required by NEMSIS; must always be present | Yes (MS) | 1..1 |
| Required/National (R/N) | Required nationally; not state-optional | Yes (MS) | 1..1 or 0..1 MS |
| Required/State (R/S) | Required within participating state | Yes (MS) | 0..1 MS with comment |
| Recommended (Rec) | Strongly recommended; high adoption | Yes (MS) | 0..1 MS with comment |
| Optional (O) | Agency discretion | No (unless operationally critical) | 0..1 |

-------

## Must Support Elements by Profile

### EMSComposition

| | | |
| :--- | :--- | :--- |
| `status` | 1..1 MS | eRecord status |
| `type` | 1..1 MS | fixed: LOINC 67796-3 |
| `subject` | 1..1 MS | patient reference |
| `encounter` | 1..1 MS | encounter reference |
| `date` | 1..1 MS | PCR completion date |
| `author` | 1..* MS | eRecord.02 software |
| `section[response]` | 0..1 MS | eResponse data |
| `section[vitals]` | 0..1 MS | eVitals data |
| `section[procedures]` | 0..1 MS | eProcedures data |
| `section[medications]` | 0..1 MS | eMedications data |
| `section[payment]` | 0..1 MS | ePayment data |

### EMSPatient

Inherits all MS elements from `us-core-patient`. Additional MS:

| | | |
| :--- | :--- | :--- |
| `extension[us-core-race]` | 0..1 MS | ePatient.14 |
| `extension[us-core-ethnicity]` | 0..1 MS | ePatient.15 |
| `extension[us-core-birthsex]` | 0..1 MS | ePatient.11 |
| `extension[ext-ems-patient-barrier]` | 0..* MS | ePatient.21 |
| `name` | 1..* MS | ePatient.03/04/05 |
| `gender` | 1..1 MS | ePatient.13 |
| `birthDate` | 0..1 MS | ePatient.17 |
| `address` | 0..1 MS | ePatient.06 |
| `telecom` | 0..* MS | ePatient.18/19 |

### EMSEncounter

Inherits all MS elements from `us-core-encounter`. Additional MS:

| | | |
| :--- | :--- | :--- |
| `identifier` | 1..* MS | eRecord.01 |
| `class` | 1..1 MS | eResponse.05 |
| `type` | 1..* MS | EMS encounter type |
| `serviceProvider` | 0..1 MS | eResponse.01 |
| `period` | 0..1 MS | eTimes.03 / eTimes.12 |
| `extension[ext-ems-times]` | 0..1 MS | eTimes.01–19 |
| `extension[ext-ems-response-type]` | 0..1 MS | eResponse.05 |
| `extension[ext-ems-unit-type]` | 0..1 MS | eResponse.07 |
| `extension[ext-ems-dispatch-info]` | 0..1 MS | eDispatch |
| `extension[ext-ems-transport-details]` | 0..1 MS | eDisposition transport |
| `extension[ext-ems-response-mode]` | 0..1 MS | eResponse mode |
| `extension[ext-ems-disposition-codes]` | 0..1 MS | eDisposition |

### EMSCondition

Inherits all MS elements from `us-core-condition-encounter-diagnosis`. Additional MS:

| | | |
| :--- | :--- | :--- |
| `category[us-core]` | 1..1 MS | encounter-diagnosis |
| `code` | 1..1 MS | eSituation.11 primary impression |
| `subject` | 1..1 MS | patient reference |
| `encounter` | 0..1 MS | encounter reference |
| `onsetDateTime` | 0..1 MS | eSituation.01 onset |

### EMSObservationVitalSigns

Inherits all MS elements from `us-core-vital-signs`. Additional MS:

| | | |
| :--- | :--- | :--- |
| `status` | 1..1 MS | eVitals status |
| `code` | 1..1 MS | LOINC vital sign code |
| `subject` | 1..1 MS | patient reference |
| `encounter` | 0..1 MS | encounter reference |
| `effectiveDateTime` | 1..1 MS | eVitals.01 timestamp |
| `value[x]` | 0..1 MS | vital sign value |
| `extension[ext-ems-vital-obtained-prior]` | 0..1 MS | eVitals.02 |

### EMSProcedure

Inherits all MS elements from `us-core-procedure`. Additional MS:

| | | |
| :--- | :--- | :--- |
| `status` | 1..1 MS | eProcedures.01 |
| `code` | 1..1 MS | eProcedures.03 (SNOMED) |
| `subject` | 1..1 MS | patient reference |
| `performedDateTime` | 0..1 MS | eProcedures.01 timestamp |
| `performer` | 0..1 MS | eProcedures crew member |

### EMSMedicationAdministration

| | | |
| :--- | :--- | :--- |
| `status` | 1..1 MS | eMedications status |
| `medication[x]` | 1..1 MS | eMedications.03 (RxNorm) |
| `subject` | 1..1 MS | patient reference |
| `context` | 0..1 MS | encounter reference |
| `effective[x]` | 1..1 MS | eMedications.01 timestamp |
| `dosage.route` | 0..1 MS | eMedications.05 route |
| `dosage.dose` | 0..1 MS | eMedications.06/07 dose |

### EMSCoverage

| | | |
| :--- | :--- | :--- |
| `status` | 1..1 MS | active |
| `subscriber` | 0..1 MS | ePayment.19–21 insured name |
| `subscriberId` | 0..1 MS | ePayment.18 policy ID |
| `beneficiary` | 1..1 MS | patient reference |
| `relationship` | 0..1 MS | ePayment.22 relationship |
| `payor` | 1..* MS | ePayment.09/10 insurer |
| `class[group]` | 0..1 MS | ePayment.17/58 group |
| `order` | 0..1 MS | ePayment.11 priority |
| `extension[payerType]` | 0..1 MS | ePayment.57 X12 code |

### EMSClaim

| | | |
| :--- | :--- | :--- |
| `status` | 1..1 MS | claim status |
| `use` | 1..1 MS | fixed: claim |
| `type` | 1..1 MS | fixed: professional |
| `patient` | 1..1 MS | patient reference |
| `provider` | 1..1 MS | organization/practitioner |
| `created` | 1..1 MS | claim creation date |
| `insurance` | 1..* MS | coverage reference |
| `insurance.coverage` | 1..1 MS | ePayment coverage |
| `extension[primaryPaymentMethod]` | 0..1 MS | ePayment.01 |
| `extension[cmsServiceLevel]` | 0..1 MS | ePayment.50 |
| `extension[responseUrgency]` | 0..1 MS | ePayment.40 |
| `extension[transportAssessment]` | 0..* MS | ePayment.41 |
| `extension[ambulanceTransportReason]` | 0..1 MS | ePayment.44 |
| `extension[ambulanceConditions]` | 0..* MS | ePayment.47 |

-------

## Must Support and NV/PN Interplay

When a NEMSIS MS element has a Not Value (NV):

1. **If FHIR has `dataAbsentReason`**— omit the value element and populate`dataAbsentReason`with the mapped code
1. **If no `dataAbsentReason`**— use`ext-ems-not-value`extension; element cardinality may be 0..1 even though nominally required

When a NEMSIS MS element has a Pertinent Negative (PN):

1. Populate`Observation.valueCodeableConcept`with the absence code,**and**
1. Add`ext-ems-pertinent-negative`extension with the specific PN code

Receiving systems **must** process resources containing NV/PN codes without error, even if they do not display them.

-------

## Validation

To validate Must Support conformance:

```
# Validate a specific resource against fhirEMSCore profiles
java -jar input-cache/validator.jar \
  [resource-file.json] \
  -version 4.0.1 \
  -ig hl7.fhir.us.core#6.1.0 \
  -ig [path-to-fhirEMSCore-package]

# Validate all SUSHI-generated resources
java -jar input-cache/validator.jar \
  fsh-generated/resources/ \
  -version 4.0.1 \
  -ig hl7.fhir.us.core#6.1.0

```

