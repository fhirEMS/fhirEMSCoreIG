# Artifacts Summary - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Patient Care Report (PCR) Profiles 

Core profiles representing an EMS Patient Care Report

| | |
| :--- | :--- |
| [EMS Encounter](StructureDefinition-ems-encounter.md) | EMS-specific constraints on US Core Encounter representing a single EMS response/call. Covers NEMSIS eResponse (unit/agency, response mode, delays), eTimes (all 19 timestamps), eDispatch (dispatch complaint, EMD, priority), and eDisposition (unit, crew, transport, destination, level of care) sections. NEMSIS Version 3.5.1.251001CP2. |
| [EMS Patient](StructureDefinition-ems-patient.md) | Constraints on US Core Patient for the NEMSIS 3.5.1.251001CP2 ePatient section (25 elements). Adds three EMS-specific extensions: census tract (ePatient.11), alternate home residence (ePatient.22), and estimated age (ePatient.15/16) for use when date of birth is unknown. See the EMS Patient mapping page for the full NEMSIS element → FHIR cross-reference. |
| [EMS Patient Care Report (PCR)](StructureDefinition-ems-composition.md) | Represents an EMS Patient Care Report (PCR) as a FHIR Composition. This is the root document that ties together all sections of an EMS call. Based on NEMSIS eRecord and overall PCR structure (Version 3.5.1.251001CP2).Section codes: Standard LOINC codes are used where a clear analog exists. NEMSIS-specific section codes (nemsis-codes#section-*) are used for EMS-only sections without a well-matched LOINC code.Mandatory NEMSIS sections (1..1): eResponse, eTimes, ePatient, eScene, eSituation, eDisposition. Optional NEMSIS sections (0..1 or 0..*): eHistory, eVitals, eProcedures, eMedications, eExam, eAirway, eArrest, eNarrative. |

### EMS Response Resources 

Profiles supporting EMS dispatch, response, and scene data

| | |
| :--- | :--- |
| [EMS Condition](StructureDefinition-ems-condition.md) | Represents clinical conditions documented during an EMS encounter including the provider's primary and secondary impressions (eSituation.11/12), primary symptom (eSituation.09), and prior medical history (eHistory). Derived from US Core Condition Encounter Diagnosis (Version 3.5.1.251001CP2).For encounter diagnosis (primary/secondary impression): set category to 'encounter-diagnosis'. For prior medical history: set category to 'problem-list-item' or 'health-concern'. |
| [EMS Destination Location](StructureDefinition-ems-location-destination.md) | Represents the facility or location to which the patient was transported. Derived from US Core Location. Maps to NEMSIS eDisposition address elements eDisposition.01–10 (Version 3.5.1.251001CP2). Destination type, capability, and pre-arrival alert are captured in the EMSDestinationDetails extension on the parent EMSEncounter. |
| [EMS Location — Agency Station](StructureDefinition-ems-location-agency.md) | An EMS agency location — headquarters, station, or staging area (NEMSIS dLocation). One resource per agency location, managed by the EMSOrganization. |
| [EMS Scene Location](StructureDefinition-ems-location-scene.md) | Represents the physical location where an EMS incident occurred. Derived from US Core Location. Maps to NEMSIS eScene section (Version 3.5.1.251001CP2). Captures scene address, GPS coordinates, incident location type, and scene context (number of patients, MCI status). |

### Clinical Assessment Profiles 

Profiles for vitals, procedures, medications, and clinical findings

| | |
| :--- | :--- |
| [EMS Airway Management Observation](StructureDefinition-ems-observation-airway.md) | Documents an airway management event during an EMS response. NEMSIS eAirway covers advanced airway device placement, confirmation, complications, and failure reasons. eAirway.01–11 are captured primarily through ext-ems-airway-context. The observation code identifies the airway procedure type (SNOMED). The crew member (eAirway.07) is captured via performer. |
| [EMS AllergyIntolerance](StructureDefinition-ems-allergyintolerance.md) | EMS allergy and intolerance record derived from US Core AllergyIntolerance. Represents NEMSIS eHistory.06 (Medication Allergies, Recommended) and eHistory.07 (Environmental/Food Allergies, Optional). NEMSIS Version 3.5.1.251001CP2.eHistory.06 (MedicationAllergies): substance from RxNorm. eHistory.07 (Environmental/Food Allergies): substance from SNOMED CT (NEMSIS stores SNOMED CT codes directly for eHistory.07).NV applies to eHistory.06: NotRecorded → dataAbsentReason#not-asked; NotApplicable → dataAbsentReason#not-applicable. PN applies to eHistory.06: ExamFindingNotPresent, UnableToComplete via ext-ems-pertinent-negative. |
| [EMS Blood Pressure Observation](StructureDefinition-ems-observation-bp.md) | EMS blood pressure panel derived from US Core Blood Pressure. Represents NEMSIS eVitals.06 (SBP), eVitals.07 (DBP), and eVitals.08 (Method of Blood Pressure Measurement). Maps to LOINC 55284-4 (BP panel) with SBP component (LOINC 8480-6) and DBP component (LOINC 8462-4). NEMSIS Version 3.5.1.251001CP2. |
| [EMS Cardiac Arrest Condition](StructureDefinition-ems-condition-arrest.md) | Documents the presence (or absence) of cardiac arrest during an EMS response event. Follows NDR-009: the arrest status, etiology, resuscitation data, ROSC, and outcome are captured in the ext-ems-arrest-context extension. The FHIR Condition.code uses SNOMED CT 410429000 (Cardiac arrest). |
| [EMS Condition — Past Medical History](StructureDefinition-ems-condition-problems.md) | Documents the patient's pre-existing medical/surgical history (eHistory.08) as reported during an EMS response. Condition.code carries the ICD-10-CM history code; advance directives, history source, immunizations, alcohol/drug indicators, pregnancy, and last oral intake are captured in the ext-ems-history-context extension. Create one resource per reported condition. |
| [EMS Glasgow Coma Score (GCS) Panel](StructureDefinition-ems-observation-gcs.md) | GCS panel Observation derived from US Core Observation Clinical Result. Represents NEMSIS eVitals.19 (Eye), eVitals.20 (Verbal), eVitals.21 (Motor), eVitals.22 (Qualifier), and eVitals.23 (Total GCS).Pattern (NDR per CLAUDE.md): parent GCS panel (LOINC 9269-2) with three hasMember references to individual Eye/Verbal/Motor sub-Observations, plus a qualifier component. Sub-observations use this same profile.LOINC codes: Total=9269-2, Eye=9267-6, Verbal=9268-4, Motor=9266-8. GCS scores are integers: Eye 1–4, Verbal 1–5, Motor 1–6. NEMSIS Version 3.5.1.251001CP2. |
| [EMS Injury Condition](StructureDefinition-ems-condition-injury.md) | Documents an injury and its circumstances during an EMS response event. Condition.code carries the cause of injury (eInjury.01, ICD-10-CM external cause codes). Mechanism of injury, CDC trauma triage criteria, vehicle collision details, safety equipment, and fall height are captured in the ext-ems-injury-context extension; Automated Collision Notification (ACN) telematics data in ext-ems-acn-incident. |
| [EMS Lab and Imaging Observation](StructureDefinition-ems-observation-labs.md) | Documents lab results and imaging study results obtained during an EMS response. Covers NEMSIS eLabs.01–08. All eLabs elements are Optional. Lab results (eLabs.03/04) are represented as individual Observations; imaging study results (eLabs.05/06) are represented similarly with appropriate LOINC codes. |
| [EMS Medication Administration](StructureDefinition-ems-medicationadministration.md) | EMS medication administration derived directly from FHIR R4 MedicationAdministration. No US Core profile exists for this resource (NDR-008). Represents the NEMSIS eMedications section (Version 3.5.1.251001CP2).NEMSIS eMedications records what was ACTUALLY administered in the field, not what was ordered. Always use MedicationAdministration, never MedicationRequest, for NEMSIS eMedications data.eMedications.03 uses RxNorm codes (direct pass-through from NEMSIS). Additional NEMSIS context (prior EMS care, response, complication, authorization, by-another-unit) is carried in EMSMedicationContext. |
| [EMS Medication Statement — Home Medications](StructureDefinition-ems-medicationstatement.md) | Documents a medication the patient reports currently taking (eHistory.12 Current Medications), with dose (eHistory.13/.14), route (eHistory.15), and frequency (eHistory.20). Distinct from EMSMedicationAdministration, which records medications administered during the EMS encounter. One resource per reported medication. |
| [EMS Outcome Observation](StructureDefinition-ems-observation-outcome.md) | Documents hospital and ED outcome data collected by the EMS agency. Covers NEMSIS eOutcome.01 (ED Disposition), eOutcome.02 (Hospital Disposition), eOutcome.09/12 (ED/Hospital Procedures using ICD-10-PCS), eOutcome.10/13 (ED/Hospital Diagnoses using ICD-10-CM), eOutcome.11 (Hospital Admission DateTime), eOutcome.16 (Hospital Discharge DateTime), eOutcome.18 (ED Admission DateTime), and eOutcome.21 (Injury Severity Score). Each significant eOutcome data point is captured as an Observation component. |
| [EMS Physical Exam Observation](StructureDefinition-ems-observation-exam.md) | Physical examination findings Observation derived from US Core Observation Clinical Result. Represents NEMSIS eExam section assessments (Version 3.5.1.251001CP2).One Observation per body region assessment. Use Observation.code to identify the body region (LOINC or SNOMED CT when available; NEMSIS exam category code otherwise). Use Observation.bodySite for location qualifiers (eExam.10, .13, .15, .17, .22, .24). Each discrete finding is a component with valueCodeableConcept. Multiple findings for the same region → multiple components.Applicable NEMSIS elements: eExam.01: Estimated Body Weight → valueQuantity (kg) eExam.02: Length Tape Measure → valueCodeableConcept from EMSExamLengthTapeMeasureVS eExam.03: Date/Time of Assessment → effectiveDateTime eExam.04–25: Body region assessments → component.valueCodeableConceptAll eExam elements are Optional in NEMSIS. NV: eExam.01, eExam.02, eExam.21 support NotRecorded / NotApplicable. PN: Most body region assessment elements (eExam.04–25) support ExamFindingNotPresent. |
| [EMS Procedure](StructureDefinition-ems-procedure.md) | EMS procedure derived from US Core Procedure. Represents the NEMSIS eProcedures section (Version 3.5.1.251001CP2). Each procedure in a NEMSIS ProcedureGroup maps to one FHIR Procedure resource.eProcedures.03 uses SNOMED CT codes (direct pass-through from NEMSIS). Complications (eProcedures.07) map to Procedure.complication. Outcome/success (eProcedures.06) maps to Procedure.outcome. Vascular access site (eProcedures.13) maps to Procedure.bodySite. Additional NEMSIS context (prior EMS care, attempt count, response, authorization, airway technique, by-another-unit) is carried in the EMSProcedureContext extension. |
| [EMS Vital Signs Observation](StructureDefinition-ems-observation-vitalsigns.md) | Parent profile for all EMS vital sign observations. Derived from US Core Vital Signs. Covers NEMSIS eVitals section (Version 3.5.1.251001CP2). Each vital sign set in NEMSIS (VitalGroup) produces one Observation per element per group (NDR-007).Use this profile directly for: Heart Rate (eVitals.10), Respiratory Rate (eVitals.14), Pulse Oximetry (eVitals.12), Body Temperature (eVitals.24), Blood Glucose (eVitals.18), ETCO2 (eVitals.16), Carbon Monoxide (eVitals.17), AVPU (eVitals.26), Pain Score (eVitals.27), Cardiac Rhythm (eVitals.03), Stroke Scale (eVitals.29), Reperfusion Checklist (eVitals.31), Pulse Rhythm (eVitals.13), Respiratory Effort (eVitals.15).Use EMSObservationBP for Blood Pressure (eVitals.06/07 — component panel). Use EMSObservationGCS for Glasgow Coma Score (eVitals.19–23 — hasMember panel).LOINC codes for each vital element (from CLAUDE.md terminology strategy): HR: 8867-4 SpO2: 59408-5 Resp Rate: 9279-1 SBP (comp): 8480-6 DBP (comp): 8462-4 Temp: 8310-5 ETCO2: 19889-5 BG: 59469-7 Weight: 29463-7 AVPU: 67775-7 Pain: 72514-3 GCS Total: 9269-2 GCS Eye: 9267-6 GCS Verbal: 9268-4 GCS Motor: 9266-8 |

### EMS Agency and Crew Profiles 

Profiles for EMS agency demographics and crew members

| | |
| :--- | :--- |
| [EMS Organization](StructureDefinition-ems-organization.md) | EMS agency organizational information derived from US Core Organization. Maps to NEMSIS dAgency section (Version 3.5.1.251001CP2). Captures agency identifiers, name, state, organizational type, service type, and level of service. |
| [EMS Practitioner](StructureDefinition-ems-practitioner.md) | EMS personnel demographics and licensure information derived from US Core Practitioner. Maps to NEMSIS dPersonnel section (Version 3.5.1.251001CP2). Captures name, state licensure, certification level, and demographic information. |
| [EMS PractitionerRole](StructureDefinition-ems-practitionerrole.md) | Represents an EMS crew member's role during a specific EMS response. Derived from US Core PractitionerRole. Maps to NEMSIS eCrew section (eCrew.01–03) combined with dPersonnel certification data (Version 3.5.1.251001CP2). One PractitionerRole resource per crew member per response. |
| [EMS Vehicle Device](StructureDefinition-ems-device-vehicle.md) | EMS vehicle/unit Device derived directly from FHIR R4 Device. No US Core profile exists for Device. Represents NEMSIS dVehicle section (Version 3.5.1.251001CP2) — agency-level demographics about the EMS vehicle/unit.dVehicle elements that are Optional or Recommended are represented as MS only when Recommended per NEMSIS. |

### Documentation and Custom Element Profiles 

Profiles for PCR attachments, signatures, and agency custom elements (eOther, eCustom)

| | |
| :--- | :--- |
| [EMS Document Reference](StructureDefinition-ems-documentreference.md) | An external electronic document or file attachment associated with the EMS Patient Care Report (eOther.09–.11, .22): diagnostic images, ECG/lab results, DNR forms, refusal sheets, and similar. The NEMSIS document type (4509xxx) is carried in ext-ems-document-type; DocumentReference.type keeps the US Core LOINC binding. |
| [EMS Provenance — PCR Signature](StructureDefinition-ems-provenance.md) | Records a signature event on the EMS Patient Care Report (eOther.12–.21): who signed, in what role, for what reason, with what outcome. The FHIR Signature datatype carries the signature graphic (eOther.18 → signature.data) and time (eOther.19 → signature.when); NEMSIS signer/reason/status metadata is carried in ext-ems-signature-context. One Provenance per signature event. |
| [EMS Questionnaire Response — Custom Element Results](StructureDefinition-ems-questionnaireresponse.md) | Carries collected values for agency- or state-specific custom data elements (NEMSIS eCustomResults) per NDR-010, answering an EMSQuestionnaire definition. |
| [EMS Questionnaire — Custom Element Definitions](StructureDefinition-ems-questionnaire.md) | Defines agency- or state-specific custom data elements (NEMSIS eCustomConfiguration) per NDR-010. Each eCustomConfiguration entry becomes one Questionnaire.item; collected values are reported via EMSQuestionnaireResponse. |

### EMS Payment and Billing Profiles 

Profiles for EMS billing, insurance, and CMS claims (ePayment section)

| | |
| :--- | :--- |
| [EMS Ambulance Claim](StructureDefinition-ems-claim.md) | Represents a CMS ambulance claim generated from an EMS response. Derived from FHIR R4 Claim base resource (no US Core profile exists). Maps to NEMSIS ePayment billing elements: primary method of payment (ePayment.01), CMS service level (ePayment.50), response urgency (ePayment.40), transport assessment (ePayment.41), ambulance transport reason (ePayment.44), ambulance conditions indicators (ePayment.47), physician certification statement data (ePayment.02–07), mileage (ePayment.48), and supply items (ePayment.55/56). |
| [EMS Coverage (Insurance)](StructureDefinition-ems-coverage.md) | Represents insurance coverage information collected during an EMS response. Derived from FHIR R4 Coverage base resource (no US Core profile exists). Maps to NEMSIS ePayment insurance elements (ePayment.09–22, .57–60): insurance company identity, address, billing priority, policy and group IDs, insured person demographics, and payer type. |

### Requirements: Formal Requirements 

The following artifacts describe the specific requirements to be met by systems compliant with the implementation guide.

| | |
| :--- | :--- |
| [Narrative Conformance Statements](Requirements-fromNarrative.md) | Conformance statements found throughout the narrative of the IG consolidated into this computable resource for traceability purposes |

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [EMS Core Server Capability Statement](CapabilityStatement-CapabilityStatement-ems-core-server.md) | Defines the FHIR server capabilities required to implement the fhirEMSCore Implementation Guide. An EMS PCR repository SHALL support the profiles, interactions, and search parameters specified herein. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Alternate Home Residence](StructureDefinition-ext-ems-alternate-residence.md) | NEMSIS ePatient.22 - Indicates the patient's alternate home residence situation (e.g., homeless, migrant worker, foreign visitor). |
| [Barriers to Patient Care](StructureDefinition-ext-ems-patient-barrier.md) | NEMSIS eHistory.01 - Barriers to the assessment or care of the patient (e.g., language, hearing impairment, unconscious). Required/National. Repeating (1..M). Nillable. NV: NotRecorded, NotApplicable. |
| [EMS ACN Incident](StructureDefinition-ext-ems-acn-incident.md) | Automated Collision Notification (ACN) telematics data for NEMSIS eInjury.11–.29: providing company, incident identifiers, date/time, GPS location, vehicle description, impact and delta velocity data, rollover, seat location, seatbelt use, and airbag deployment reported by the vehicle telematics system. |
| [EMS ALS Assessment Performed and Warranted](StructureDefinition-ext-ems-als-assessment.md) | NEMSIS ePayment.49. Whether an ALS assessment was performed and warranted. |
| [EMS Additional Response Mode Descriptors](StructureDefinition-ext-ems-additional-response-mode.md) | NEMSIS eResponse.24 - Additional descriptors of the response mode (lights, sirens, speed, intersection navigation). Repeating. |
| [EMS Agency Configuration](StructureDefinition-ext-ems-agency-configuration.md) | NEMSIS dConfiguration: state, permitted procedures/medications with certification levels, protocols, specialty service capability, billing status, EMD provision/vendor, patient monitoring capability, crew call signs, and dispatch centers. Repeat the extension per configured state (dConfiguration.01). |
| [EMS Agency Details](StructureDefinition-ext-ems-agency-details.md) | Groups NEMSIS dAgency data elements that have no FHIR Organization base equivalent: dAgency.09 (Primary Type of Service), dAgency.10 (Other Types of Service), dAgency.11 (Level of Service), dAgency.12 (Organization Status). All Mandatory or Required/National. |
| [EMS Agency Medical Director](StructureDefinition-ext-ems-medical-director.md) | NEMSIS agency medical director credentials: degree (dContact.13), board certification type (dContact.14), compensation (dContact.15), and board certified/eligible status (dContact.16). |
| [EMS Airway Management Context](StructureDefinition-ext-ems-airway-context.md) | Contextual data for NEMSIS eAirway: indications, device confirmed, confirmation methods, confirming person, tube depth, crew member, complications, failure reasons, and decision/abandoned timestamps. |
| [EMS Ambulance Conditions Indicator](StructureDefinition-ext-ems-ambulance-conditions.md) | NEMSIS ePayment.47. CMS conditions indicators justifying ambulance necessity. Repeating. |
| [EMS Ambulance Transport Reason](StructureDefinition-ext-ems-ambulance-transport-reason.md) | NEMSIS ePayment.44. CMS ambulance transport reason code (A–E). |
| [EMS Blood Pressure Measurement Method](StructureDefinition-ext-ems-bp-method.md) | NEMSIS eVitals.08 - The technique used to obtain the blood pressure measurement. Recommended. Nillable. NV: NotRecorded, NotApplicable. |
| [EMS CMS Service Level](StructureDefinition-ext-ems-cms-service-level.md) | NEMSIS ePayment.50. The CMS ambulance service level determining the base rate for billing. |
| [EMS Cardiac Arrest Context](StructureDefinition-ext-ems-arrest-context.md) | Contextual data for NEMSIS eArrest not directly representable in FHIR Condition: witnessed-by, resuscitation actions, AED use, CPR type, therapeutic hypothermia, ROSC, neurological outcome, end-of-event, and first-responder roles. |
| [EMS Certification Level](StructureDefinition-ext-ems-certification-level.md) | NEMSIS eCrew.02 - The certification/licensure level of the EMS crew member. |
| [EMS Chief Complaint Anatomic Location](StructureDefinition-ext-ems-incident-type.md) | NEMSIS eSituation.07 - The anatomic location of the patient's chief complaint. Required/National. Nillable. NV: NotRecorded, NotApplicable. |
| [EMS Crew Safety](StructureDefinition-ext-ems-crew-safety.md) | Per-crew-member safety documentation from NEMSIS eOther: PPE used (eOther.03), crew member ID (eOther.04), suspected work-related exposure/injury/death (eOther.05), and its type (eOther.06). Repeat the extension once per crew member. |
| [EMS Custom Result Target](StructureDefinition-ext-ems-custom-target.md) | NEMSIS eCustomResults.03 - The CorrelationID of the PatientCareReport element or group that this custom element result applies to. |
| [EMS Destination Details](StructureDefinition-ext-ems-destination-details.md) | Groups NEMSIS destination-selection and pre-arrival alert elements for the receiving facility. All clinical destination elements are Required/National. |
| [EMS Dispatch Information](StructureDefinition-ext-ems-dispatch-info.md) | Captures NEMSIS eDispatch supplementary fields: EMD performed (eDispatch.02, Required/National), EMD determinant code (eDispatch.03), dispatch center (eDispatch.04), dispatch priority (eDispatch.05), and CAD record ID (eDispatch.06). |
| [EMS Dispatch Reason](StructureDefinition-ext-ems-dispatch-reason.md) | NEMSIS eDispatch.01 - The dispatch complaint or reason for response. |
| [EMS Disposition Codes](StructureDefinition-ext-ems-disposition-codes.md) | Groups the core NEMSIS disposition data elements. All sub-elements are Mandatory or Required/National. Nillable sub-elements accept NV codes via ext-ems-not-value when the value is not recorded or not applicable. |
| [EMS ECG Context](StructureDefinition-ext-ems-ecg-context.md) | NEMSIS eVitals.04 (ECG Type) and eVitals.05 (Method of ECG Interpretation). Both Required/National. Nillable. NV: NotRecorded, NotApplicable. |
| [EMS External Document Type](StructureDefinition-ext-ems-document-type.md) | NEMSIS eOther.09 - The type of external electronic document, using NEMSIS 4509xxx codes. Complements DocumentReference.type (US Core-required LOINC binding). |
| [EMS History Context](StructureDefinition-ext-ems-history-context.md) | Contextual data for NEMSIS eHistory not directly representable in FHIR Condition: advance directives, patient's practitioner name, history source, immunization type/year, emergency information form, alcohol/drug use indicators, pregnancy status, and last oral intake. |
| [EMS Injury Context](StructureDefinition-ext-ems-injury-context.md) | Contextual data for NEMSIS eInjury not directly representable in FHIR Condition: mechanism of injury, CDC trauma triage criteria (high and moderate risk), vehicle impact area, patient location in vehicle, occupant safety equipment, airbag deployment, height of fall, and OSHA personal protective equipment. |
| [EMS Medication Administration Context](StructureDefinition-ext-ems-medication-context.md) | Contextual data for NEMSIS eMedications not directly representable in FHIR MedicationAdministration: prior EMS care indicator, clinical response, complication(s), and authorization type. |
| [EMS Mileage to Closest Hospital](StructureDefinition-ext-ems-mileage-to-closest.md) | NEMSIS ePayment.48. Distance in miles to the closest appropriate hospital facility. |
| [EMS Other Context](StructureDefinition-ext-ems-other-context.md) | Encounter-level NEMSIS eOther data: review requested, potential system-of-care/registry candidacy, disaster type, and the crew member completing the report. |
| [EMS Pain Scale Type](StructureDefinition-ext-ems-pain-scale-type.md) | NEMSIS eVitals.28 - The pain assessment tool used. Recommended. Nillable. NV: NotRecorded, NotApplicable. |
| [EMS Patient Estimated Age](StructureDefinition-ext-ems-patient-age.md) | Captures NEMSIS ePatient.15 (Age value) and ePatient.16 (Age Units) when the patient's date of birth (ePatient.17) is unknown. Both source elements are Required/National. When birthDate is known, derive age computationally at the time of the encounter; this extension is not needed in that case. |
| [EMS Patient Transport Assessment](StructureDefinition-ext-ems-transport-assessment.md) | NEMSIS ePayment.41. Physical assessment of the patient justifying ambulance transport. Repeating. |
| [EMS Payer Type](StructureDefinition-ext-ems-payer-type.md) | NEMSIS ePayment.57. X12 payer type code for the insurance company. |
| [EMS Primary Payment Method](StructureDefinition-ext-ems-primary-payment-method.md) | NEMSIS ePayment.01. Primary method of payment for the EMS response. |
| [EMS Procedure Context](StructureDefinition-ext-ems-procedure-context.md) | Contextual data for NEMSIS eProcedures not directly representable in FHIR Procedure: prior EMS care indicator, number of attempts, clinical response, authorization type, airway technique(s), and performed-by-another-unit indicator. |
| [EMS Protocol Used](StructureDefinition-ext-ems-protocol-used.md) | NEMSIS eProtocols.01 - Protocol used during the EMS response. |
| [EMS Response Delays](StructureDefinition-ext-ems-response-delays.md) | Groups the five NEMSIS delay type elements (eResponse.08–12), each Required/National with repeating values and NV: NotRecorded, NotApplicable. |
| [EMS Response Mode to Scene](StructureDefinition-ext-ems-response-mode.md) | NEMSIS eResponse.23 - The response mode (emergent vs non-emergent) used by the EMS unit en route to the scene. |
| [EMS Response Times](StructureDefinition-ext-ems-times.md) | Captures the full set of NEMSIS eTimes timestamps for a single EMS response. |
| [EMS Response Type](StructureDefinition-ext-ems-response-type.md) | NEMSIS eResponse.05 - The type of EMS response (Emergency/Non-Emergency). |
| [EMS Response Urgency](StructureDefinition-ext-ems-response-urgency.md) | NEMSIS ePayment.40. Whether the EMS response was immediate or non-immediate. |
| [EMS Scene Details](StructureDefinition-ext-ems-scene-details.md) | Groups key NEMSIS eScene data elements that have no FHIR Location base equivalent: eScene.01 (First EMS Unit on Scene), eScene.06 (Number of Patients at Scene), eScene.07 (Mass Casualty Incident), eScene.08 (MCI Triage Classification), eScene.13 (Incident Facility or Location Name). All Required/National unless noted. |
| [EMS Scene GPS Location](StructureDefinition-ext-ems-scene-gps.md) | NEMSIS eScene.11 - GPS coordinates of the EMS scene. |
| [EMS Signature Context](StructureDefinition-ext-ems-signature-context.md) | NEMSIS signature metadata for the PCR: type of person signing (eOther.12), signature reason (eOther.13), patient representative type (eOther.14), signature status (eOther.15), signature file name/type (eOther.16/.17), and signer name (eOther.20/.21). |
| [EMS Stroke Scale Context](StructureDefinition-ext-ems-stroke-scale-context.md) | NEMSIS eVitals.30 (Stroke Scale Type, Required/National) and eVitals.34 (Stroke Scale Score, Recommended). Used alongside the stroke scale result Observation. |
| [EMS Transport Details](StructureDefinition-ext-ems-transport-details.md) | NEMSIS transport method and mode elements: eDisposition.16 (EMS Transport Method), eDisposition.17 (Transport Mode from Scene), and eDisposition.18 (Additional Transport Mode Descriptors). All Required/National. |
| [EMS Transport Disposition (Legacy)](StructureDefinition-ext-ems-transport-reason.md) | NEMSIS eDisposition.30 - Whether/how the patient was transported. Superseded by EMSDispositionCodes complex extension in EMSEncounter. |
| [EMS Unit Type](StructureDefinition-ext-ems-unit-type.md) | NEMSIS eResponse.07 - The type of EMS vehicle/unit. |
| [EMS Vehicle Unit Identification](StructureDefinition-ext-ems-unit.md) | NEMSIS eResponse.13 (EMS Vehicle/Unit Number) and eResponse.14 (EMS Unit Call Sign). Both Mandatory/National. |
| [EMS Vital Obtained Prior to EMS Care](StructureDefinition-ext-ems-vital-obtained-prior.md) | NEMSIS eVitals.02 - Whether this vital sign set was obtained by another provider prior to this EMS unit's care. Required/National. Nillable. NV: NotRecorded, NotApplicable. |
| [NEMSIS Not Value](StructureDefinition-ext-ems-not-value.md) | Represents the NEMSIS 'Not Value' (NV) pattern used when a data element is Not Applicable, Not Recorded, or Not Reporting. Maps to FHIR dataAbsentReason patterns but preserves NEMSIS-specific codes. |
| [NEMSIS Pertinent Negative](StructureDefinition-ext-ems-pertinent-negative.md) | Represents the NEMSIS 'Pertinent Negative' (PN) pattern for clinical data elements. Indicates a clinically significant absence (e.g., 'Denies Chest Pain'). |
| [Patient Home Census Tract](StructureDefinition-ext-ems-census-tract.md) | NEMSIS ePatient.11 - The US Census Bureau census tract for the patient's home address. |
| [US National Grid Coordinates](StructureDefinition-ext-ems-usng.md) | NEMSIS dLocation.05 - The US National Grid (USNG) coordinates of an EMS location. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [EMS ACN Vehicle Seat Location VS](ValueSet-vs-ems-acn-seat-location.md) | Automated Collision Notification (ACN) vehicle seat location of the patient (eInjury.26). |
| [EMS AED Use VS](ValueSet-vs-ems-aed-use.md) | Whether an AED was used prior to EMS arrival (eArrest.07). |
| [EMS AVPU Level of Responsiveness](ValueSet-vs-ems-avpu.md) | NEMSIS eVitals.26 - The patient's level of responsiveness using the AVPU scale. |
| [EMS Abdomen Assessment](ValueSet-vs-ems-exam-abdomen.md) | NEMSIS eExam.11 - Physical findings on abdominal assessment. |
| [EMS Abdominal Assessment Finding Location](ValueSet-vs-ems-exam-abd-location.md) | NEMSIS eExam.10 - Location qualifier for abdominal assessment findings. |
| [EMS Additional Response Mode Descriptors (ValueSet)](ValueSet-vs-ems-additional-response-mode.md) | NEMSIS eResponse.24 - Additional descriptors of response mode (lights, sirens, speed, intersection navigation). |
| [EMS Additional Transport Mode Descriptors](ValueSet-vs-ems-additional-transport-mode.md) | NEMSIS eDisposition.18 - Additional descriptors of transport mode (lights, sirens, speed, intersection navigation). |
| [EMS Advance Directives VS](ValueSet-vs-ems-advance-directives.md) | The type of advance directive documentation present for the patient (eHistory.05). |
| [EMS Age Units](ValueSet-vs-ems-age-units.md) | NEMSIS ePatient.16 - Units of measure for the patient's age when exact date of birth is unknown. Used alongside ePatient.15 (Age). |
| [EMS Agency Level of Service](ValueSet-vs-ems-agency-level-of-service.md) | NEMSIS dAgency.11 - The highest level of care the EMS agency is licensed/certified to provide. |
| [EMS Agency Organization Status](ValueSet-vs-ems-agency-org-status.md) | NEMSIS dAgency.12 - Whether the EMS agency is staffed by volunteers, paid personnel, or both. |
| [EMS Agency Organizational Type](ValueSet-vs-ems-agency-org-type.md) | NEMSIS dAgency.13 - The organizational type of the EMS agency. |
| [EMS Agency Service Type](ValueSet-vs-ems-agency-service-type.md) | NEMSIS dAgency.09/10 - The type(s) of EMS service provided by the agency. |
| [EMS AgencyContactType VS](ValueSet-vs-ems-agency-contact-type.md) | The role/type of the agency contact person (dContact.01). |
| [EMS AgencyLocationType VS](ValueSet-vs-ems-agency-location-type.md) | The type of EMS agency location/station (dLocation.01). |
| [EMS Airbag Deployment VS](ValueSet-vs-ems-airbag-deployment.md) | Airbag deployment status observed at the crash (eInjury.08). |
| [EMS Airway Complications VS](ValueSet-vs-ems-airway-complications.md) | Complications encountered during airway management (eAirway.08). |
| [EMS Airway Confirmation Method VS](ValueSet-vs-ems-airway-confirmation-method.md) | Method used to confirm airway device placement (eAirway.04). |
| [EMS Airway Confirming Person VS](ValueSet-vs-ems-airway-confirming-person.md) | Type of individual who confirmed the airway device placement (eAirway.06). |
| [EMS Airway Device VS](ValueSet-vs-ems-airway-device.md) | Type of airway device being confirmed (eAirway.03). |
| [EMS Airway Failure Reasons VS](ValueSet-vs-ems-airway-failure-reasons.md) | Reasons for failed airway management (eAirway.09). |
| [EMS Airway Indications VS](ValueSet-vs-ems-airway-indications.md) | Indications for airway management intervention (eAirway.01). |
| [EMS Airway Placement Technique](ValueSet-vs-ems-airway-technique.md) | NEMSIS eProcedures.14 - Technique used for airway device placement. |
| [EMS Alcohol/Drug Use Indicators VS](ValueSet-vs-ems-alcohol-drug-use.md) | Indicators of potential patient alcohol or drug use (eHistory.17). |
| [EMS Alternate Home Residence](ValueSet-vs-ems-alternate-residence.md) | NEMSIS ePatient.22 - Codes describing a patient's alternate home residence situation when a standard home address is not applicable. |
| [EMS Ambulance Conditions Indicator VS](ValueSet-vs-ems-ambulance-conditions.md) | CMS ambulance conditions indicators justifying medical necessity (ePayment.47). |
| [EMS Ambulance Transport Reason VS](ValueSet-vs-ems-ambulance-transport-reason.md) | CMS ambulance transport reason code (ePayment.44). |
| [EMS Arrest Etiology VS](ValueSet-vs-ems-arrest-etiology.md) | Etiology of the cardiac arrest event (eArrest.02). |
| [EMS Arrest First Responder VS](ValueSet-vs-ems-arrest-first-responder.md) | Who first performed CPR, applied the AED, or defibrillated the patient (eArrest.20/21/22). |
| [EMS Arrest Witnessed VS](ValueSet-vs-ems-arrest-witnessed.md) | Who witnessed the cardiac arrest (eArrest.04). |
| [EMS Back and Spine Assessment](ValueSet-vs-ems-exam-back-spine.md) | NEMSIS eExam.14 - Physical findings on back and spine assessment. |
| [EMS Back and Spine Assessment Finding Location](ValueSet-vs-ems-exam-back-location.md) | NEMSIS eExam.13 - Location qualifier for back and spine assessment findings. |
| [EMS Barriers to Patient Care](ValueSet-vs-ems-barrier-to-patient-care.md) | NEMSIS eHistory.01 - Barriers encountered during patient assessment or care. |
| [EMS Blood Pressure Measurement Method (ValueSet)](ValueSet-vs-ems-bp-method.md) | NEMSIS eVitals.08 - The technique used to measure blood pressure. |
| [EMS CMS Service Level VS](ValueSet-vs-ems-cms-service-level.md) | CMS ambulance service level for billing (ePayment.50). |
| [EMS CPR Type VS](ValueSet-vs-ems-cpr-type.md) | Type of CPR care provided prior to EMS arrival (eArrest.09). |
| [EMS Cardiac Arrest VS](ValueSet-vs-ems-cardiac-arrest.md) | Whether the patient was in cardiac arrest and when (eArrest.01). |
| [EMS Cardiac Rhythm](ValueSet-vs-ems-cardiac-rhythm.md) | NEMSIS eVitals.03 - Cardiac rhythm or ECG interpretation. |
| [EMS Caregiver Level](ValueSet-vs-ems-caregiver-level.md) | NEMSIS eMedications.10 / eProcedures.10 - Level/role of the healthcare professional who administered the medication or performed the procedure. |
| [EMS Certification Level (ValueSet)](ValueSet-vs-ems-certification-level.md) | NEMSIS eCrew.02 - The certification/licensure level of the EMS crew member. |
| [EMS Chest Assessment](ValueSet-vs-ems-exam-chest.md) | NEMSIS eExam.25 - Physical findings on chest assessment. |
| [EMS Chest Assessment Finding Location](ValueSet-vs-ems-exam-chest-location.md) | NEMSIS eExam.24 - Location qualifier for chest assessment findings. |
| [EMS Chief Complaint Anatomic Location (ValueSet)](ValueSet-vs-ems-incident-type.md) | NEMSIS eSituation.07 - The anatomic location of the patient's chief complaint. |
| [EMS Chief Complaint Organ System](ValueSet-vs-ems-situation-organ-system.md) | NEMSIS eSituation.08 - The organ system involved in the patient's chief complaint. |
| [EMS Clinical Response to Treatment](ValueSet-vs-ems-clinical-response.md) | NEMSIS eMedications.07 / eProcedures.08 - Patient response to medication administration or procedure performance. |
| [EMS Crew Disposition](ValueSet-vs-ems-crew-disposition.md) | NEMSIS eDisposition.29 - What the crew did during the response. |
| [EMS Crew Member Response Role](ValueSet-vs-ems-crew-role.md) | NEMSIS eCrew.03 - The role of the crew member during the EMS response. |
| [EMS CrewPPE VS](ValueSet-vs-ems-crew-ppe.md) | Personal protective equipment used by the EMS crew member (eOther.03). |
| [EMS Destination Team Pre-Arrival Alert](ValueSet-vs-ems-pre-arrival-alert.md) | NEMSIS eDisposition.24 - Whether and what type of pre-arrival alert was given to the receiving facility. |
| [EMS DirectorCompensation VS](ValueSet-vs-ems-director-compensation.md) | Whether the medical director is compensated (dContact.15). |
| [EMS DisasterType VS](ValueSet-vs-ems-disaster-type.md) | Natural, suspected, intentional, or unintentional disaster associated with the event (eOther.07). |
| [EMS Discharge Disposition VS](ValueSet-vs-ems-discharge-disposition.md) | UB-04 patient discharge status codes used for ED disposition (eOutcome.01) and hospital disposition (eOutcome.02). |
| [EMS Dispatch Priority (Patient Acuity)](ValueSet-vs-ems-dispatch-priority.md) | NEMSIS eDispatch.05 - The acuity level assigned at time of dispatch. |
| [EMS Dispatch Reason (ValueSet)](ValueSet-vs-ems-dispatch-reason.md) | NEMSIS eDispatch.01 - The dispatch complaint or reason for the EMS response. Extensible to allow agency-specific or SNOMED CT dispatch codes. |
| [EMS Disposition Instructions Provided](ValueSet-vs-ems-disposition-instructions.md) | NEMSIS eDisposition.26 - Instructions provided to the patient at disposition. |
| [EMS ECG Interpretation Method](ValueSet-vs-ems-ecg-method.md) | NEMSIS eVitals.05 - How the ECG was interpreted. |
| [EMS ECG Type](ValueSet-vs-ems-ecg-type.md) | NEMSIS eVitals.04 - The number of leads used for ECG acquisition. |
| [EMS EMD Performed](ValueSet-vs-ems-emd-performed.md) | NEMSIS eDispatch.02 - Whether Emergency Medical Dispatch pre-arrival instructions were provided. |
| [EMS EMDProvided VS](ValueSet-vs-ems-emd-provided.md) | Whether EMD is provided to the agency service area (dConfiguration.13). |
| [EMS End of Cardiac Arrest Event VS](ValueSet-vs-ems-arrest-end-event.md) | Disposition of the patient at the end of the EMS cardiac arrest event (eArrest.18). |
| [EMS External Report Type VS](ValueSet-vs-ems-external-report-type.md) | Type of external report associated with the EMS event (eOutcome.03). |
| [EMS ExternalDocumentType VS](ValueSet-vs-ems-external-document-type.md) | Type of external electronic document associated with the PCR (eOther.09). |
| [EMS Extremities Assessment](ValueSet-vs-ems-exam-extremities.md) | NEMSIS eExam.16 - Physical findings on extremities assessment. |
| [EMS Extremity Assessment Finding Location](ValueSet-vs-ems-exam-extremity-location.md) | NEMSIS eExam.15 - Location qualifier for extremity assessment findings. |
| [EMS Eye Assessment](ValueSet-vs-ems-exam-eye.md) | NEMSIS eExam.18 - Physical findings on eye assessment, including pupil size and reactivity. |
| [EMS Eye Assessment Finding Location](ValueSet-vs-ems-exam-eye-location.md) | NEMSIS eExam.17 - Laterality qualifier for eye assessment findings. |
| [EMS Face Assessment](ValueSet-vs-ems-exam-face.md) | NEMSIS eExam.06 - Physical findings on face assessment. |
| [EMS First Monitored Rhythm VS](ValueSet-vs-ems-first-rhythm.md) | First monitored cardiac rhythm by this EMS unit (eArrest.11). Subset for initial arrest rhythms. For full rhythm list including post-ROSC, see EMSCardiacRhythmVS. |
| [EMS GCS Qualifier](ValueSet-vs-ems-gcs-qualifier.md) | NEMSIS eVitals.22 - Qualifiers documenting conditions that affect GCS scoring validity. |
| [EMS Head Assessment](ValueSet-vs-ems-exam-head.md) | NEMSIS eExam.05 - Physical findings on head assessment. |
| [EMS Heart Assessment](ValueSet-vs-ems-exam-heart.md) | NEMSIS eExam.09 - Physical findings on heart/cardiac auscultation. |
| [EMS Home Medication Dosage Units VS](ValueSet-vs-ems-history-med-dosage-units.md) | Units for the patient's current (home) medication dose (eHistory.14). Distinct from the eMedications.06 administered-dose units (3706xxx codes). |
| [EMS Home Medication Frequency VS](ValueSet-vs-ems-med-frequency.md) | Dosing frequency for the patient's current (home) medications (eHistory.20). |
| [EMS Hospital Capability](ValueSet-vs-ems-hospital-capability.md) | NEMSIS eDisposition.23 - Specialty capabilities of the receiving facility. |
| [EMS Hospital In-Patient Destination](ValueSet-vs-ems-hospital-destination.md) | NEMSIS eDisposition.22 - The specific in-hospital unit or bed type the patient was delivered to. |
| [EMS Imaging Study Type VS](ValueSet-vs-ems-imaging-study-type.md) | Type of imaging study obtained (eLabs.05). |
| [EMS Immunization Type VS](ValueSet-vs-ems-immunization-type.md) | The patient's immunization history type (eHistory.10). |
| [EMS Initial Patient Acuity](ValueSet-vs-ems-initial-acuity.md) | NEMSIS eSituation.13 - Patient acuity at initial EMS contact. |
| [EMS Insurance Billing Priority VS](ValueSet-vs-ems-insurance-billing-priority.md) | Insurance company billing priority (ePayment.11). |
| [EMS Insured Relationship VS](ValueSet-vs-ems-insured-relationship.md) | Patient's relationship to the insured (ePayment.22). |
| [EMS Lab Result Type VS](ValueSet-vs-ems-lab-result-type.md) | Type of lab result obtained (eLabs.03). |
| [EMS Length Based Tape Measure (Broselow-Luten)](ValueSet-vs-ems-exam-length-tape.md) | NEMSIS eExam.02 - Broselow-Luten color zone for length-based weight estimation. |
| [EMS Level of Care Provided per Protocol](ValueSet-vs-ems-level-of-care.md) | NEMSIS eDisposition.32 - The level of care (BLS, ALS, Critical Care, etc.) authorized by protocol. |
| [EMS Lung Assessment](ValueSet-vs-ems-exam-lung.md) | NEMSIS eExam.23 - Auscultatory and respiratory findings on lung assessment. |
| [EMS Lung Assessment Finding Location](ValueSet-vs-ems-exam-lung-location.md) | NEMSIS eExam.22 - Laterality qualifier for lung assessment findings. |
| [EMS MCI Triage Classification](ValueSet-vs-ems-mci-triage-class.md) | NEMSIS eScene.08 - START/JumpSTART triage classification for MCI patient. |
| [EMS Mechanism of Injury VS](ValueSet-vs-ems-mechanism-of-injury.md) | The mechanism of the event which caused the injury (eInjury.02). |
| [EMS Medical History Obtained From VS](ValueSet-vs-ems-history-obtained-from.md) | The source of the patient's medical history information (eHistory.09). |
| [EMS MedicalDirectorBoardCert VS](ValueSet-vs-ems-medical-director-board-cert.md) | The agency medical director board certification type (dContact.14). |
| [EMS MedicalDirectorDegree VS](ValueSet-vs-ems-medical-director-degree.md) | The agency medical director degree (dContact.13). |
| [EMS Medication Administered Route](ValueSet-vs-ems-medication-route.md) | NEMSIS eMedications.04 - The route by which the medication was administered. |
| [EMS Medication Complication](ValueSet-vs-ems-medication-complication.md) | NEMSIS eMedications.08 - Adverse reactions or complications occurring with medication administration. |
| [EMS Medication Dosage Units](ValueSet-vs-ems-medication-dosage-units.md) | NEMSIS eMedications.06 - Units of measurement for medication dosage. |
| [EMS Mental Status Assessment](ValueSet-vs-ems-exam-mental-status.md) | NEMSIS eExam.19 - Mental status and cognitive assessment findings. |
| [EMS MonitoringCapability VS](ValueSet-vs-ems-monitoring-capability.md) | Patient monitoring capabilities of the agency (dConfiguration.15). |
| [EMS Neck Assessment](ValueSet-vs-ems-exam-neck.md) | NEMSIS eExam.07 - Physical findings on neck assessment. |
| [EMS Neurological Assessment](ValueSet-vs-ems-exam-neurological.md) | NEMSIS eExam.20 - Neurological assessment findings including strength, speech, coordination, and seizures. |
| [EMS Neurological Outcome VS](ValueSet-vs-ems-neurological-outcome.md) | Cerebral performance category (CPC) at hospital discharge (eArrest.13). |
| [EMS OSHA Personal Protective Equipment VS](ValueSet-vs-ems-osha-ppe.md) | OSHA-defined personal protective equipment in use by the patient at the time of a work-related injury (eInjury.10). |
| [EMS Occupant Safety Equipment VS](ValueSet-vs-ems-safety-equipment.md) | Occupant safety equipment in use by the patient at the time of the injury (eInjury.07). |
| [EMS Pain Scale Type (ValueSet)](ValueSet-vs-ems-pain-scale-type.md) | NEMSIS eVitals.28 - The type of pain scale used to assess the patient's pain. |
| [EMS Patient Acuity Upon Release](ValueSet-vs-ems-patient-acuity.md) | NEMSIS eDisposition.19 - The patient's acuity triage level at the time of EMS release. |
| [EMS Patient Evaluation/Care](ValueSet-vs-ems-patient-eval-care.md) | NEMSIS eDisposition.28 - What evaluation and care was provided to the patient. |
| [EMS Patient Transport Assessment VS](ValueSet-vs-ems-patient-transport-assessment.md) | Patient's physical condition that necessitated ambulance transport (ePayment.41). |
| [EMS PatientRepresentative VS](ValueSet-vs-ems-patient-representative.md) | The relationship of the patient representative who signed (eOther.14). |
| [EMS Payer Type VS](ValueSet-vs-ems-payer-type.md) | X12 payer type codes for the insurance company (ePayment.57). |
| [EMS Pelvis/Genitourinary Assessment](ValueSet-vs-ems-exam-pelvic-gu.md) | NEMSIS eExam.12 - Physical findings on pelvic/genitourinary assessment. |
| [EMS Pregnancy Status VS](ValueSet-vs-ems-pregnancy.md) | The patient's pregnancy status (eHistory.18). |
| [EMS Primary Payment Method VS](ValueSet-vs-ems-payment-method.md) | Primary method of payment for the EMS response (ePayment.01). |
| [EMS Procedure Complication](ValueSet-vs-ems-procedure-complication.md) | NEMSIS eProcedures.07 - Adverse events or complications occurring with procedure performance. |
| [EMS Protocols Used](ValueSet-vs-ems-protocol-used.md) | NEMSIS eProtocols.01 - EMS protocol(s) followed during the response. |
| [EMS Pulse Rhythm](ValueSet-vs-ems-pulse-rhythm.md) | NEMSIS eVitals.13 - The regularity of the patient's pulse. |
| [EMS ROSC VS](ValueSet-vs-ems-rosc.md) | Whether and when return of spontaneous circulation occurred (eArrest.12). |
| [EMS Reason CPR Discontinued VS](ValueSet-vs-ems-cpr-discontinued-reason.md) | Reason CPR or resuscitation was discontinued (eArrest.16). |
| [EMS Reason for Choosing Destination](ValueSet-vs-ems-destination-reason.md) | NEMSIS eDisposition.20 - The reason the destination was chosen. |
| [EMS Reason for Interfacility Transfer](ValueSet-vs-ems-transfer-reason.md) | NEMSIS eSituation.20 - The clinical reason for an interfacility transfer or transport. |
| [EMS Reason for Refusal/Release](ValueSet-vs-ems-reason-for-refusal.md) | NEMSIS eDisposition.31 - Reason documented when patient refused care or was released. |
| [EMS RegistryCandidate VS](ValueSet-vs-ems-registry-candidate.md) | Potential system of care, specialty, or registry candidacy for the patient (eOther.02). |
| [EMS Reperfusion Checklist](ValueSet-vs-ems-reperfusion-checklist.md) | NEMSIS eVitals.31 - Contraindication status for thrombolytic therapy per the reperfusion checklist. |
| [EMS Respiratory Effort](ValueSet-vs-ems-respiratory-effort.md) | NEMSIS eVitals.15 - The quality of the patient's respiratory effort. |
| [EMS Response Mode to Scene (ValueSet)](ValueSet-vs-ems-response-mode.md) | NEMSIS eResponse.23 - The response mode (emergent vs non-emergent) used en route to the scene. |
| [EMS Response Type (ValueSet)](ValueSet-vs-ems-response-type.md) | NEMSIS eResponse.05 - The type of EMS response. |
| [EMS Response Urgency VS](ValueSet-vs-ems-response-urgency.md) | Urgency of the EMS response for billing purposes (ePayment.40). |
| [EMS Resuscitation Attempted VS](ValueSet-vs-ems-resuscitation-attempted.md) | Type of resuscitation attempted by the EMS unit (eArrest.03). |
| [EMS Seat Row Location VS](ValueSet-vs-ems-seat-row-location.md) | The seat row location of the patient in the vehicle at the time of the crash (eInjury.06). |
| [EMS Sex](ValueSet-vs-ems-sex.md) | NEMSIS ePatient.25 - The patient's sex as recorded by EMS. Used for documentation and mapping to Patient.gender and the us-core-birthsex extension. Note: ePatient.13 (Gender) is DEPRECATED in NEMSIS 3.5.1.251001CP2 — use ePatient.25 (Sex) instead. |
| [EMS SignatureReason VS](ValueSet-vs-ems-signature-reason.md) | The reason a signature was obtained (eOther.13). |
| [EMS SignatureStatus VS](ValueSet-vs-ems-signature-status.md) | The status/disposition of the signature (eOther.15). |
| [EMS SignerType VS](ValueSet-vs-ems-signer-type.md) | The type of person signing (eOther.12). |
| [EMS Skin Assessment](ValueSet-vs-ems-exam-skin.md) | NEMSIS eExam.04 - Physical findings on skin assessment. |
| [EMS SpecialtyServiceCapability VS](ValueSet-vs-ems-specialty-service-capability.md) | EMS agency specialty service capabilities (dConfiguration.11). |
| [EMS Stroke Scale Result](ValueSet-vs-ems-stroke-scale-result.md) | NEMSIS eVitals.29 - The result of the prehospital stroke scale assessment. |
| [EMS Stroke Scale Type](ValueSet-vs-ems-stroke-scale-type.md) | NEMSIS eVitals.30 - The prehospital stroke screening tool used. |
| [EMS Stroke/CVA Symptoms Resolved](ValueSet-vs-ems-exam-stroke-resolved.md) | NEMSIS eExam.21 - Whether stroke/CVA symptoms resolved prior to or during EMS care. |
| [EMS Transport Disposition](ValueSet-vs-ems-transport-disposition.md) | NEMSIS eDisposition.30 - Whether/how the patient was transported. |
| [EMS Transport Method](ValueSet-vs-ems-transport-method.md) | NEMSIS eDisposition.16 - The vehicle/mode used to transport the patient. |
| [EMS Transport Mode from Scene](ValueSet-vs-ems-transport-mode.md) | NEMSIS eDisposition.17 - Emergent vs non-emergent transport mode from scene. |
| [EMS Trauma Triage High Risk VS](ValueSet-vs-ems-trauma-triage-high-risk.md) | Trauma triage criteria indicating high risk for serious injury — CDC Field Triage Guideline red criteria (injury patterns and physiologic instability) (eInjury.03). |
| [EMS Trauma Triage Moderate Risk VS](ValueSet-vs-ems-trauma-triage-moderate-risk.md) | Trauma triage criteria indicating moderate risk for serious injury — CDC Field Triage Guideline yellow criteria (mechanism of injury and EMS judgment) (eInjury.04). |
| [EMS Treatment Authorization Type](ValueSet-vs-ems-authorization-type.md) | NEMSIS eMedications.11 / eProcedures.11 - How the medication administration or procedure was authorized. |
| [EMS Type of Destination](ValueSet-vs-ems-destination-type.md) | NEMSIS eDisposition.21 - The type of destination the patient was transported to. |
| [EMS Type of Dispatch Delay](ValueSet-vs-ems-dispatch-delay.md) | NEMSIS eResponse.08 - Types of dispatch delay. |
| [EMS Type of Response Delay](ValueSet-vs-ems-response-delay.md) | NEMSIS eResponse.09 - Types of response delay en route to scene. |
| [EMS Type of Scene Delay](ValueSet-vs-ems-scene-delay.md) | NEMSIS eResponse.10 - Types of delay at the scene. |
| [EMS Type of Transport Delay](ValueSet-vs-ems-transport-delay.md) | NEMSIS eResponse.11 - Types of delay during transport. |
| [EMS Type of Turn-Around Delay](ValueSet-vs-ems-turn-around-delay.md) | NEMSIS eResponse.12 - Types of delay returning to service after transport. |
| [EMS Unit Disposition](ValueSet-vs-ems-unit-disposition.md) | NEMSIS eDisposition.27 - Whether/how the unit made patient contact. |
| [EMS Unit Type (ValueSet)](ValueSet-vs-ems-unit-type.md) | NEMSIS eResponse.07 - The type of EMS vehicle/unit. |
| [EMS Vascular Access Location](ValueSet-vs-ems-vascular-access-location.md) | NEMSIS eProcedures.13 - Anatomical site of vascular access (IV/IO line). |
| [EMS Vehicle Type](ValueSet-vs-ems-vehicle-type.md) | NEMSIS dVehicle.04 - The type of EMS vehicle. |
| [EMS WorkInjuryExposure VS](ValueSet-vs-ems-work-injury-exposure.md) | Type of crew work-related injury, death, or suspected exposure (eOther.06). |
| [NEMSIS Not Value (NV)](ValueSet-vs-ems-not-value.md) | NEMSIS Not Value codes used when a data element is Not Applicable, Not Recorded, or Not Reporting. |
| [NEMSIS Pertinent Negative (PN)](ValueSet-vs-ems-pertinent-negative.md) | NEMSIS Pertinent Negative codes indicating a clinically significant documented absence. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [NEMSIS DEM Demographic Code System](CodeSystem-cs-nemsis-demographics.md) | Enumeration codes from the NEMSIS 3.5.1 DEM dataset sections dContact (agency contact type, medical director degree/board certification/compensation), dConfiguration (specialty service capability, EMD provision, patient monitoring capability), and dLocation (EMS location type). |
| [NEMSIS Encounter Codes](CodeSystem-cs-nemsis-encounter.md) | Enumeration codes from the NEMSIS eResponse, eDispatch, and eDisposition sections (NEMSIS 3.5.1.251001CP2). |
| [NEMSIS General Codes](CodeSystem-cs-nemsis-codes.md) | General NEMSIS enumeration codes for sections without a dedicated CodeSystem. Currently covers eHistory (eHistory.01 - Barriers to Patient Care). NEMSIS 3.5.1.251001CP2. |
| [NEMSIS Medications and Procedures Codes](CodeSystem-cs-nemsis-medications.md) | Enumeration codes for the NEMSIS eMedications and eProcedures sections. Covers administration routes, dosage units, complications, vascular access locations, airway techniques, clinical response, authorization types, caregiver levels, and Yes/No values shared across both sections. NEMSIS 3.5.1.251001CP2. |
| [NEMSIS Not Value Codes](CodeSystem-cs-nemsis-not-values.md) | NEMSIS Not Value (NV) codes used when a data element cannot be recorded. Three codes apply: NotApplicable (element does not apply to this event), NotRecorded (element applies but was not documented), NotReporting (agency is not reporting this element). |
| [NEMSIS Personnel Level Codes](CodeSystem-cs-nemsis-personnel-level.md) | NEMSIS eCrew.02 - Crew Member Level certification and licensure codes (NEMSIS 3.5.1.251001CP2). |
| [NEMSIS Pertinent Negative Codes](CodeSystem-cs-nemsis-pertinent-negative.md) | NEMSIS Pertinent Negative (PN) codes indicating a clinically significant documented absence. Applied to clinical data elements where documenting a negative finding is as meaningful as documenting a positive one. |
| [NEMSIS Physical Exam Codes](CodeSystem-cs-nemsis-exam.md) | Enumeration codes for the NEMSIS eExam physical examination section. Covers body region assessments and finding location qualifiers. NEMSIS 3.5.1.251001CP2. |
| [NEMSIS Procedures/Protocols Codes](CodeSystem-cs-nemsis-procedures.md) | Enumeration codes from the NEMSIS eProtocols section (eProtocols.01 - Protocols Used). NEMSIS 3.5.1.251001CP2. |
| [NEMSIS Situation Codes](CodeSystem-cs-nemsis-situation.md) | Enumeration codes from the NEMSIS eSituation section (NEMSIS 3.5.1.251001CP2). |
| [NEMSIS Vital Signs Codes](CodeSystem-cs-nemsis-vitals.md) | Enumeration codes from the NEMSIS eVitals section (NEMSIS 3.5.1.251001CP2). |
| [NEMSIS eAirway Code System](CodeSystem-cs-nemsis-airway.md) | Enumeration codes from the NEMSIS 3.5.1 eAirway section covering airway management indications, device types, confirmation methods, confirming personnel, complications, and reasons for failed management. |
| [NEMSIS eArrest Code System](CodeSystem-cs-nemsis-arrest.md) | Enumeration codes from the NEMSIS 3.5.1 eArrest section covering cardiac arrest status, etiology, resuscitation attempts, CPR type, ROSC, neurological outcome, end-of-event disposition, and first-responder roles. |
| [NEMSIS eHistory Code System](CodeSystem-cs-nemsis-history.md) | Enumeration codes from the NEMSIS 3.5.1 eHistory section covering advance directives, medical history source, immunization type, current medication dosage units and frequency, alcohol/drug use indicators, and pregnancy status. |
| [NEMSIS eInjury Code System](CodeSystem-cs-nemsis-injury.md) | Enumeration codes from the NEMSIS 3.5.1 eInjury section covering mechanism of injury, CDC trauma triage criteria (high and moderate risk), vehicle occupant location, occupant safety equipment, airbag deployment, OSHA personal protective equipment, and ACN vehicle seat location. |
| [NEMSIS eLabs Code System](CodeSystem-cs-nemsis-labs.md) | Enumeration codes from the NEMSIS 3.5.1 eLabs section covering lab result types and imaging study types. |
| [NEMSIS eOther Code System](CodeSystem-cs-nemsis-other.md) | Enumeration codes from the NEMSIS 3.5.1 eOther section covering registry candidacy, crew personal protective equipment, work-related injury/exposure types, disaster types, external document types, and signature metadata (signer type, reason, patient representative, status). |
| [NEMSIS ePatient Codes](CodeSystem-nemsis-patient.md) | Enumeration codes from the NEMSIS 3.5.1.251001CP2 ePatient section. Includes codes for Sex (ePatient.25), Age Units (ePatient.16), and Alternate Home Residence (ePatient.22). Race codes (ePatient.14) are mapped to OMB/CDC categories used in us-core-race. |
| [NEMSIS ePayment Code System](CodeSystem-cs-nemsis-payment.md) | Enumeration codes from the NEMSIS 3.5.1 ePayment section covering primary method of payment, insurance billing priority, relationship to insured, response urgency, patient transport assessment, ambulance transport reason codes, ambulance conditions indicators, CMS service level, and payer type. |
| [NEMSIS ePayment Payer Type Code System](CodeSystem-cs-nemsis-payer-type.md) | X12 payer type codes used in NEMSIS ePayment.57 to identify the type of insurance payer. |

### Terminology: Naming Systems 

These define identifier and/or code system identities used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [EMS Vehicle Identification Number (VIN) Identifier System](NamingSystem-ns-ems-vin.md) | Identifier system for the 17-character Vehicle Identification Number (VIN) used to uniquely identify EMS vehicles. NEMSIS dVehicle.02. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example EMS Agency Station — Station 7](Location-ex-ems-location-agency.md) | Example agency station demonstrating the EMSLocationAgency profile: Riverside County Fire Station 7 in Murrieta, CA, with GPS, USNG, and station number. |
| [Example EMS Airway Management — Endotracheal Intubation](Observation-ex-ems-observation-airway.md) | Example airway management observation demonstrating the EMSObservationAirway profile. Endotracheal intubation performed on cardiac arrest patient. Confirmed by waveform ETCO2 and auscultation. |
| [Example EMS AllergyIntolerance — Penicillin](AllergyIntolerance-ex-ems-allergyintolerance.md) | Example allergy demonstrating the EMSAllergyIntolerance profile. Documented penicillin allergy (eHistory.06 medication allergy) reported during MVA response. |
| [Example EMS Blood Pressure Observation](Observation-ex-ems-observation-bp.md) | Example blood pressure observation demonstrating the EMSObservationBP profile. First vital set taken at the scene of an MVA. |
| [Example EMS Cardiac Arrest Condition](Condition-ex-ems-condition-arrest.md) | Example cardiac arrest Condition demonstrating the EMSConditionArrest profile. Patient found in cardiac arrest prior to EMS arrival; VF arrest; CPR and defibrillation performed; ROSC achieved prior to ED arrival. |
| [Example EMS Claim — ALS Level 1 Emergency](Claim-ex-ems-claim.md) | Example ambulance claim demonstrating the EMSClaim profile. ALS Level 1 Emergency service billed to Medicare Part B for cardiac arrest transport. |
| [Example EMS Composition — PCR Document](Composition-ex-ems-composition.md) | Example PCR composition demonstrating the EMSComposition profile. Assembles all resources from the MVA cardiac arrest scenario into a complete EMS Patient Care Report document. |
| [Example EMS Condition — Closed Head Injury](Condition-ex-ems-condition.md) | Example condition demonstrating the EMSCondition profile. Primary impression of closed head injury documented during an MVA response. |
| [Example EMS Coverage — Medicare Part B](Coverage-ex-ems-coverage.md) | Example insurance coverage demonstrating the EMSCoverage profile. Represents a patient with Medicare Part B as primary insurance. |
| [Example EMS Destination — Level I Trauma Center](Location-ex-ems-location-destination.md) | Example destination location demonstrating the EMSLocationDestination profile. Riverside University Health System Medical Center, a Level I Trauma Center. |
| [Example EMS Device — ALS Ambulance](Device-ex-ems-device-vehicle.md) | Example vehicle device demonstrating the EMSDeviceVehicle profile. Riverside County EMS Unit 4321, a Type I ALS-equipped ground ambulance. |
| [Example EMS Document Reference — 12-Lead ECG](DocumentReference-ex-ems-documentreference.md) | Example external document attachment demonstrating the EMSDocumentReference profile: a 12-lead ECG PDF captured during the MVA response, typed with NEMSIS 4509009 (ECG/Lab Results) and LOINC 11524-6. |
| [Example EMS ECG Rhythm Observation](Observation-ex-ems-ecg-rhythm.md) | Cardiac rhythm observation (eVitals.03) demonstrating the ext-ems-ecg-context extension: sinus tachycardia on a 12-lead ECG with computer interpretation. |
| [Example EMS Encounter — MVA 911 Response](Encounter-ex-ems-encounter.md) | Example EMS encounter demonstrating the EMSEncounter profile. 911 response to a motor vehicle accident with ALS transport to a Level I trauma center. |
| [Example EMS Exam — Neurological Assessment](Observation-ex-ems-exam-neuro.md) | Neurological assessment observation (LOINC 10197-4). Altered mental status findings on MVA patient. |
| [Example EMS Exam — Skin Assessment](Observation-ex-ems-exam-skin.md) | Skin assessment observation (LOINC 8709-8). Pale, diaphoretic findings on MVA patient. |
| [Example EMS GCS Panel Observation](Observation-ex-ems-observation-gcs.md) | Example GCS total panel observation demonstrating the EMSObservationGCS profile. GCS 13 (E4V4M5) on MVA patient. |
| [Example EMS Home Medication — Lisinopril](MedicationStatement-ex-ems-medicationstatement.md) | Example home-medication statement demonstrating the EMSMedicationStatement profile. Patient reports taking lisinopril 10 mg orally once daily for hypertension. |
| [Example EMS Injury Condition](Condition-ex-ems-condition-injury.md) | Example injury Condition demonstrating the EMSConditionInjury profile. 35-year-old male driver in a motor vehicle accident: blunt mechanism, restrained with front airbag deployment, significant vehicle intrusion requiring extrication, motor GCS 4, with ACN telematics data from the vehicle. |
| [Example EMS Lab — Blood Glucose](Observation-ex-ems-observation-labs.md) | Example lab observation demonstrating the EMSObservationLabs profile. Point-of-care blood glucose obtained at the scene during MVA response. |
| [Example EMS Medication Administration — Normal Saline Bolus](MedicationAdministration-ex-ems-medicationadministration.md) | Example medication administration demonstrating the EMSMedicationAdministration profile. Normal saline 500 mL IV bolus administered to an MVA patient. |
| [Example EMS Organization — Riverside County EMS](Organization-ex-ems-organization-agency.md) | Example EMS agency organization demonstrating the EMSOrganization profile. Represents a county EMS agency with NPI, state agency ID, and service configuration. |
| [Example EMS Outcome — ED and Hospital Disposition](Observation-ex-ems-observation-outcome.md) | Example outcome observation demonstrating the EMSObservationOutcome profile. Patient admitted as inpatient from ED following MVA with head injury. |
| [Example EMS Pain Score Observation](Observation-ex-ems-pain-score.md) | Pain severity score (eVitals.26, LOINC 72514-3) demonstrating the ext-ems-pain-scale-type extension: 7/10 on the numeric scale. |
| [Example EMS Past Medical History — Hypertension](Condition-ex-ems-condition-problems.md) | Example past-medical-history Condition demonstrating the EMSConditionProblems profile. Patient reports essential hypertension; history obtained from the patient; tetanus immunization 2020; physical exam suggests alcohol use; last oral intake at 12:30. |
| [Example EMS Patient — MVA Victim](Patient-ex-ems-patient.md) | Example patient demonstrating the EMSPatient profile. 45-year-old male involved in a motor vehicle accident. |
| [Example EMS Practitioner — Paramedic](Practitioner-ex-ems-practitioner.md) | Example EMS crew member demonstrating the EMSPractitioner profile. Represents a licensed Paramedic with state certification. |
| [Example EMS PractitionerRole — Paramedic Crew Member](PractitionerRole-ex-ems-practitionerrole.md) | Example PractitionerRole demonstrating the EMSPractitionerRole profile. Paramedic Maria Ramirez serving as Primary Patient Caregiver on MVA response. |
| [Example EMS Procedure — IV Access](Procedure-ex-ems-procedure.md) | Example procedure demonstrating the EMSProcedure profile. Peripheral IV access established on an MVA patient. |
| [Example EMS Provenance — Transfer of Care Signature](Provenance-ex-ems-provenance.md) | Example signature Provenance demonstrating the EMSProvenance profile: the EMS primary care provider signs the PCR for transfer of patient care at the receiving ED. |
| [Example EMS Questionnaire Response — Agency Custom Elements](QuestionnaireResponse-ex-ems-questionnaireresponse.md) | Example custom-element result demonstrating the EMSQuestionnaireResponse profile: the ambulance was decontaminated after the MVA transport (eCustomResults). |
| [Example EMS Questionnaire — Agency Custom Elements](Questionnaire-ex-ems-questionnaire.md) | Example custom-element definition demonstrating the EMSQuestionnaire profile: an agency-defined element asking whether the ambulance was decontaminated after transport (eCustomConfiguration). |
| [Example EMS Scene Location — MVA on I-15](Location-ex-ems-location-scene.md) | Example scene location demonstrating the EMSLocationScene profile. Motor vehicle accident on Interstate 15 northbound near Murrieta, California. |
| [Example EMS Stroke Scale Observation](Observation-ex-ems-stroke-scale.md) | Stroke scale result (eVitals.29) demonstrating the ext-ems-stroke-scale-context extension and the NDR-002 pertinent negative pattern: CPSS negative (stroke findings not present). |
| [Example EMS Vital Sign — Heart Rate](Observation-ex-ems-heart-rate.md) | Heart rate observation (LOINC 8867-4). 110 bpm at scene — tachycardic MVA patient. |
| [Example EMS Vital Sign — Respiratory Rate](Observation-ex-ems-respiratory-rate.md) | Respiratory rate observation (LOINC 9279-1). 22 breaths/min — slightly tachypneic. |
| [Example EMS Vital Sign — SpO2](Observation-ex-ems-spo2.md) | Pulse oximetry observation (LOINC 59408-5). 94% on room air at scene. |
| [Example GCS Eye Opening Sub-observation](Observation-ex-ems-gcs-eye.md) | GCS Eye Opening sub-observation (LOINC 9267-6). Score = 4 (Spontaneous). |
| [Example GCS Motor Response Sub-observation](Observation-ex-ems-gcs-motor.md) | GCS Motor Response sub-observation (LOINC 9268-4). Score = 5 (Localizes pain). |
| [Example GCS Verbal Response Sub-observation](Observation-ex-ems-gcs-verbal.md) | GCS Verbal Response sub-observation (LOINC 9270-0). Score = 4 (Confused). |

