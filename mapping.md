# NEMSIS-to-FHIR Mapping - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* **NEMSIS-to-FHIR Mapping**

## NEMSIS-to-FHIR Mapping

# NEMSIS-to-FHIR Mapping

This page provides a high-level NEMSIS 3.5.1 → FHIR R4 mapping reference. For the complete element-by-element mapping, see the `fhirEMSCore_MappingMatrix.xlsx` spreadsheet in the project `docs/mapping/` folder.

-------

## Mapping Approach

Each NEMSIS element is mapped to one of:

1. **Native FHIR element**— a standard element on a FHIR resource that carries the same semantic meaning
1. **Extension**— an fhirEMSCore-defined extension when no native FHIR element exists
1. **Terminology binding**— a coded element with a NEMSIS value set bound to a FHIR CodeableConcept
1. **Not mapped**— elements that are derivable from other data or out of scope for this IG version

-------

## eRecord Section

| | | |
| :--- | :--- | :--- |
| eRecord.01 | Patient Care Report Number | `Encounter.identifier`(PCR number) |
| eRecord.02 | Software Creator | `Composition.author`+ meta.source |
| eRecord.03 | Software Name | `Composition.author` |
| eRecord.04 | Software Version | `Composition.meta` |

-------

## eResponse Section

| | | |
| :--- | :--- | :--- |
| eResponse.01 | EMS Agency Number | `Encounter.serviceProvider`→ EMSOrganization.identifier |
| eResponse.03 | Incident Number | `Encounter.identifier` |
| eResponse.05 | Type of Service Requested | `Encounter.class`+`ext-ems-response-type` |
| eResponse.07 | Unit Transport/Capability | `ext-ems-unit-type`extension |
| eResponse.08–13 | Response Delays | `ext-ems-response-delays`extension (repeating) |
| eResponse.14 | EMS Vehicle Number | `Device.identifier`→ EMSDevice |
| eResponse.23 | Response Mode | `ext-ems-response-mode`extension |

-------

## eDispatch Section

| | | |
| :--- | :--- | :--- |
| eDispatch.01 | Complaint Reported by Dispatch | `ext-ems-dispatch-info.dispatchComplaint` |
| eDispatch.02 | EMD Performed | `ext-ems-dispatch-info.emdPerformed` |
| eDispatch.03 | EMD Card Number | `ext-ems-dispatch-info.emdCardNumber` |
| eDispatch.04 | Dispatch Center Name | `ext-ems-dispatch-info.dispatchCenter` |
| eDispatch.05 | Dispatch Priority | `ext-ems-dispatch-info.dispatchPriority` |
| eDispatch.06 | Unit Notified by Dispatch DateTime | `eTimes extension`(also eTimes.03) |

-------

## eTimes Section

NEMSIS defines 19 date/time stamps. Two map to `Encounter.period`; the rest use `ext-ems-times`.

| | | |
| :--- | :--- | :--- |
| eTimes.01 | PSAP Call Date/Time | `ext-ems-times.psapCallDateTime` |
| eTimes.02 | Dispatch Notified Date/Time | `ext-ems-times.dispatchNotifiedDateTime` |
| eTimes.03 | Unit Notified by Dispatch Date/Time | **`Encounter.period.start`**(NDR-005) |
| eTimes.04 | Dispatch Acknowledged Date/Time | `ext-ems-times.dispatchAcknowledgedDateTime` |
| eTimes.05 | Unit En Route Date/Time | `ext-ems-times.unitEnRouteDateTime` |
| eTimes.06 | Unit Arrived on Scene Date/Time | `ext-ems-times.unitArrivedOnSceneDateTime` |
| eTimes.07 | Arrived at Patient Date/Time | `ext-ems-times.arrivedAtPatientDateTime` |
| eTimes.08 | Transfer of EMS Patient Care Date/Time | `ext-ems-times.transferOfEMSCareDateTime` |
| eTimes.09 | Unit Left Scene Date/Time | `ext-ems-times.unitLeftSceneDateTime` |
| eTimes.11 | Patient Arrived at Destination Date/Time | `ext-ems-times.patientArrivedAtDestinationDateTime` |
| eTimes.12 | Destination Patient Transfer of Care Date/Time | **`Encounter.period.end`**(NDR-005) |
| eTimes.13 | Unit Back in Service Date/Time | `ext-ems-times.unitBackInServiceDateTime` |
| eTimes.16 | EMS Call Completed Date/Time | `ext-ems-times.emsCallCompletedDateTime` |

-------

## ePatient Section

| | | |
| :--- | :--- | :--- |
| ePatient.03 | Last Name | `Patient.name.family` |
| ePatient.04 | First Name | `Patient.name.given[0]` |
| ePatient.05 | Middle Name | `Patient.name.given[1]` |
| ePatient.06 | Patient's Home Address | `Patient.address` |
| ePatient.07 | Patient's Home City | `Patient.address.city` |
| ePatient.08 | Patient's Home County | `Patient.address.district` |
| ePatient.09 | Patient's Home State | `Patient.address.state` |
| ePatient.11 | Age | `Patient.birthDate`(calculated) +`ext-ems-patient-age` |
| ePatient.13 | Gender | `Patient.gender`(mapped per NDR-006) |
| ePatient.14 | Race | `Patient.extension[us-core-race]` |
| ePatient.15 | Ethnicity | `Patient.extension[us-core-ethnicity]` |
| ePatient.17 | Date of Birth | `Patient.birthDate` |
| ePatient.18 | Patient's Phone Number | `Patient.telecom` |
| ePatient.19 | Patient's Email | `Patient.telecom` |
| ePatient.21 | Language Barrier | `ext-ems-patient-barrier`extension |

-------

## eScene Section

| | | |
| :--- | :--- | :--- |
| eScene.01 | First EMS Unit on Scene | `ext-ems-scene-details.firstUnitOnScene` |
| eScene.07 | Mass Casualty Incident | `ext-ems-scene-details.massCasualtyIncident` |
| eScene.08 | Number of Patients | `ext-ems-scene-details.numberOfPatients` |
| eScene.09 | Incident Location Type | `Location.type` |
| eScene.11 | Scene GPS Location | `ext-ems-scene-gps`extension |
| eScene.15 | Census Tract | `ext-ems-census-tract`extension |
| eScene.17 | Scene Address | `Location.address` |
| eScene.18 | Scene City | `Location.address.city` |
| eScene.19 | Scene County | `Location.address.district` |
| eScene.20 | Scene State | `Location.address.state` |
| eScene.21 | Scene ZIP Code | `Location.address.postalCode` |

-------

## eSituation Section

| | | |
| :--- | :--- | :--- |
| eSituation.01 | Date/Time of Symptom Onset | `Condition.onsetDateTime` |
| eSituation.02 | Possible Injury | `ext-ems-incident-type` |
| eSituation.07 | Chief Complaint Anatomic Location | `Condition.bodySite` |
| eSituation.08 | Chief Complaint Organ System | `Condition.category`extension |
| eSituation.09 | Primary Symptom | `Condition.code`(SNOMED) |
| eSituation.11 | Primary Impression | `Condition.code`(primary clinical impression) |
| eSituation.12 | Secondary Impression | Additional`Condition`resources |
| eSituation.13 | Initial Patient Acuity | `Encounter.priority` |

-------

## eVitals Section

Each vital sign becomes a separate `Observation` resource. GCS is a panel (NDR-007).

| | | |
| :--- | :--- | :--- |
| eVitals.01 | Date/Time Vital Signs Taken | `Observation.effectiveDateTime` |
| eVitals.02 | Obtained Prior to EMS Unit | `ext-ems-vital-obtained-prior` |
| eVitals.03 | Cardiac Rhythm | `Observation`LOINC 59408-5 (or ECG type) |
| eVitals.06 | SBP | `Observation.component[systolic].valueQuantity` |
| eVitals.07 | DBP | `Observation.component[diastolic].valueQuantity` |
| eVitals.10 | Pulse Rate | `Observation.valueQuantity`(LOINC 8867-4) |
| eVitals.12 | Pulse Oximetry | `Observation.valueQuantity`(LOINC 59408-5) |
| eVitals.14 | Respiratory Rate | `Observation.valueQuantity`(LOINC 9279-1) |
| eVitals.16 | End Tidal CO2 | `Observation.valueQuantity`(LOINC 19889-5) |
| eVitals.18 | Blood Glucose Level | `Observation.valueQuantity`(LOINC 59469-7) |
| eVitals.19–22 | GCS Eye/Verbal/Motor/Total | GCS panel Observations |
| eVitals.24 | Body Temperature | `Observation.valueQuantity`(LOINC 8310-5) |
| eVitals.26 | Level of Responsiveness (AVPU) | `Observation.valueCodeableConcept`(LOINC 67775-7) |
| eVitals.27 | Pain Scale Score | `Observation.valueQuantity`(LOINC 72514-3) |
| eVitals.28 | Body Weight | `Observation.valueQuantity`(LOINC 29463-7) |

-------

## eProcedures Section

| | | |
| :--- | :--- | :--- |
| eProcedures.01 | Date/Time Procedure Performed | `Procedure.performedDateTime` |
| eProcedures.02 | Procedure Successful | `Procedure.outcome` |
| eProcedures.03 | Procedure (SNOMED) | `Procedure.code`(SNOMED CT — direct mapping) |
| eProcedures.04 | Procedure Performed Prior to EMS Arrival | `ext-ems-procedure-context.performedPrior` |
| eProcedures.07 | Performed by Crew Member | `Procedure.performer.actor`→ EMSPractitioner |
| eProcedures.08 | Response to Procedure | `ext-ems-procedure-context.responseToProc` |

-------

## eMedications Section

| | | |
| :--- | :--- | :--- |
| eMedications.01 | Date/Time Medication Administered | `MedicationAdministration.effectiveDateTime` |
| eMedications.03 | Medication (RxNorm) | `MedicationAdministration.medicationCodeableConcept`(RxNorm — direct) |
| eMedications.04 | Medication Administered Prior to EMS Arrival | `ext-ems-medication-context.administeredPrior` |
| eMedications.05 | Medication Administered Route | `MedicationAdministration.dosage.route` |
| eMedications.06 | Medication Dosage | `MedicationAdministration.dosage.dose` |
| eMedications.07 | Medication Dosage Units | `MedicationAdministration.dosage.dose.unit`(UCUM) |
| eMedications.10 | Response to Medication | `ext-ems-medication-context.responseToMed` |

-------

## ePayment Section

| | | |
| :--- | :--- | :--- |
| ePayment.01 | Primary Method of Payment | `Claim.extension[primaryPaymentMethod]` |
| ePayment.09 | Insurance Company ID | `Coverage.payor`→ Organization.identifier |
| ePayment.10 | Insurance Company Name | `Coverage.payor`→ Organization.name |
| ePayment.11 | Insurance Company Billing Priority | `Coverage.order` |
| ePayment.17 | Insurance Group ID | `Coverage.class[group].value` |
| ePayment.18 | Insurance Policy ID Number | `Coverage.subscriberId` |
| ePayment.19–21 | Insured Last/First/Middle Name | `Coverage.subscriber`→ EMSPatient or RelatedPerson |
| ePayment.22 | Patient's Relationship to the Insured | `Coverage.relationship` |
| ePayment.40 | Response Urgency | `Claim.extension[responseUrgency]` |
| ePayment.41 | Patient Transport Assessment | `Claim.extension[transportAssessment]`(0..*) |
| ePayment.44 | Ambulance Transport Reason Code | `Claim.extension[ambulanceTransportReason]` |
| ePayment.45 | Round Trip Purpose Description | `Claim.supportingInfo[roundTripPurpose].valueString` |
| ePayment.46 | Stretcher Purpose Description | `Claim.supportingInfo[stretcherPurpose].valueString` |
| ePayment.47 | Ambulance Conditions Indicator | `Claim.extension[ambulanceConditions]`(0..*) |
| ePayment.48 | Mileage to Closest Hospital Facility | `Claim.extension[mileageToClosest]` |
| ePayment.49 | ALS Assessment Performed and Warranted | `Claim.extension[alsAssessment]` |
| ePayment.50 | CMS Service Level | `Claim.extension[cmsServiceLevel]`+`Claim.item.productOrService`(HCPCS) |
| ePayment.57 | Payer Type (X12) | `Coverage.extension[payerType]` |
| ePayment.58 | Insurance Group Name | `Coverage.class[group].name` |

-------

## Mapping Conventions

* NEMSIS **Mandatory** elements (minOccurs=1, not nillable) → FHIR cardinality 1..1, MS
* NEMSIS **Required** elements (Usage=Required/National) → FHIR cardinality 1..1 or 0..1, MS
* NEMSIS **Recommended** elements → FHIR 0..1 or 0..*, MS with comment
* NEMSIS **Optional** elements → FHIR 0..1 or 0..*, no MS unless operationally significant
* NEMSIS **NV** elements → FHIR `dataAbsentReason` or `ext-ems-not-value`
* NEMSIS **PN** elements → FHIR `Observation` absence value or `ext-ems-pertinent-negative`
* NEMSIS **State** elements → FHIR 0..1 with comment noting state-only applicability

