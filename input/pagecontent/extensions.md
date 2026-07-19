# Extensions

This page documents all FHIR extensions defined in fhirEMSCore to represent NEMSIS data elements that have no direct mapping in FHIR R4 or US Core 6.1.0.

---

## Extension Design Principles

1. **Extensions are a last resort** — use standard FHIR elements first
2. **Group related extensions** as complex extensions (backbone) to reduce top-level clutter
3. **Bind value sets** from the same NEMSIS CodeSystem used in the parent element
4. **Document NEMSIS source** in the extension's `^comment` using the standard pattern: `NEMSIS eXxx.xx. Usage: level. NV: yes/no. PN: yes/no.`
5. **Alias all extensions** in `aliases.fsh` before referencing in profiles

---

## Extension Registry

### Encounter Extensions

These extensions are applied to **EMSEncounter** to represent NEMSIS response, dispatch, transport, and timing data.

| Extension Id | Short Name | NEMSIS Elements | Cardinality |
|---|---|---|---|
| `ext-ems-response-mode` | Response Mode | eResponse response/travel mode | 0..1 |
| `ext-ems-additional-response-mode` | Additional Response Mode | eResponse additional modes | 0..* |
| `ext-ems-response-delays` | Response Delays | eResponse.08–13 delay codes | 0..* |
| `ext-ems-unit` | EMS Unit | eResponse unit identifier | 0..1 |
| `ext-ems-dispatch-info` | Dispatch Information | eDispatch.01–06 chief complaint, priority, CAD | 0..1 complex |
| `ext-ems-times` | EMS Times | eTimes.01–19 (19-timestamp complex extension) | 0..1 complex |
| `ext-ems-transport-details` | Transport Details | eDisposition transport mode and reason | 0..1 complex |
| `ext-ems-destination-details` | Destination Details | eDisposition destination type and codes | 0..1 complex |
| `ext-ems-disposition-codes` | Disposition Codes | eDisposition.12–18 | 0..1 complex |
| `ext-ems-response-type` | Response Type | eResponse.05 | 0..1 |
| `ext-ems-unit-type` | Unit Type | eResponse.07 | 0..1 |
| `ext-ems-dispatch-reason` | Dispatch Reason | eDispatch.01 | 0..1 |
| `ext-ems-transport-reason` | Transport Reason | eDisposition.22 | 0..1 |
| `ext-ems-incident-type` | Incident Type | eSituation.07 | 0..1 |
| `ext-ems-protocol` | Protocol Used | eProtocols.01 | 0..* |

### Patient Extensions

These extensions are applied to **EMSPatient**.

| Extension Id | Short Name | NEMSIS Elements | Cardinality |
|---|---|---|---|
| `ext-ems-patient-age` | Patient Age | ePatient.15 (age at time of call) | 0..1 |
| `ext-ems-alternate-residence` | Alternate Residence | ePatient.09 (home vs current address) | 0..1 |
| `ext-ems-patient-barrier` | Communication Barrier | ePatient.21 language/barriers | 0..* |
| `ext-ems-census-tract` | Census Tract | ePatient.08 / eScene.15 | 0..1 |

### Location Extensions

These extensions are applied to **EMSLocationScene**.

| Extension Id | Short Name | NEMSIS Elements | Cardinality |
|---|---|---|---|
| `ext-ems-scene-gps` | Scene GPS Coordinates | eScene.11 GPS lat/long | 0..1 |
| `ext-ems-scene-details` | Scene Details | eScene mass casualty, first unit, patient count | 0..1 complex |

### Observation Extensions (Clinical)

These extensions are applied to vital sign and clinical observation profiles.

| Extension Id | Short Name | NEMSIS Elements | Cardinality | Context |
|---|---|---|---|---|
| `ext-ems-vital-obtained-prior` | Obtained Prior to Arrival | eVitals.02 | 0..1 | Observation |
| `ext-ems-bp-method` | BP Method | eVitals.08 | 0..1 | Observation |
| `ext-ems-ecg-context` | ECG Context | eVitals.03 (cardiac rhythm) | 0..1 | Observation |
| `ext-ems-stroke-scale-context` | Stroke Scale Context | eVitals.29/30 | 0..1 | Observation |
| `ext-ems-pain-scale-type` | Pain Scale Type | eVitals.27 pain scale | 0..1 | Observation |

### Medication and Procedure Extensions

| Extension Id | Short Name | NEMSIS Elements | Cardinality | Context |
|---|---|---|---|---|
| `ext-ems-medication-context` | Medication Context | eMedications context data | 0..1 | MedicationAdministration |
| `ext-ems-procedure-context` | Procedure Context | eProcedures context data | 0..1 | Procedure |

### Cardiac Arrest Extension

The arrest context is a complex extension applied to **EMSConditionArrest**.

| Extension Id | Short Name | NEMSIS Elements | Sub-extensions |
|---|---|---|---|
| `ext-ems-arrest-context` | Arrest Context | eArrest.01–22 | 21 sub-extensions |

Sub-extension details:

| Sub-extension | NEMSIS Element | Type |
|---|---|---|
| `cardiacArrestPrior` | eArrest.01 | CodeableConcept |
| `cardiacArrestReason` | eArrest.02 | CodeableConcept |
| `cardiacArrestWitnessed` | eArrest.04 | CodeableConcept |
| `resuscitationAttempted` | eArrest.03 | CodeableConcept |
| `bystandardCPR` | eArrest.05 | boolean |
| `bystandardAED` | eArrest.07 | boolean |
| `crewCPRInitiated` | eArrest.06 | boolean |
| `cprType` | eArrest.09 | CodeableConcept |
| `firstMonitoredRhythm` | eArrest.11 | CodeableConcept |
| `aedUse` | eArrest.07 | CodeableConcept |
| `rosc` | eArrest.12 | CodeableConcept |
| `cprDiscontinuedReason` | eArrest.16 | CodeableConcept |
| `arrestEndEvent` | eArrest.18 | CodeableConcept |
| `neurologicalOutcome` | eArrest.13 | CodeableConcept |
| `rhythmAtDestination` | eArrest.17 | CodeableConcept |
| `firstResponderCPR` | eArrest.20 | CodeableConcept |
| `firstResponderAED` | eArrest.21 | CodeableConcept |
| `firstResponderRole` | eArrest.22 | CodeableConcept |
| `timeFirstDefib` | eArrest.15 | dateTime |
| `timeROSC` | eArrest.14 | dateTime |
| `dateArrestOrDeath` | eArrest.14 | date |

### Airway Extension

The airway context is a complex extension applied to **EMSObservationAirway**.

| Extension Id | Short Name | NEMSIS Elements | Sub-extensions |
|---|---|---|---|
| `ext-ems-airway-context` | Airway Context | eAirway.01–11 | 10 sub-extensions |

Sub-extension details:

| Sub-extension | NEMSIS Element | Type |
|---|---|---|
| `airwayIndications` | eAirway.01 | CodeableConcept |
| `airwayDeviceType` | eAirway.03 | CodeableConcept |
| `airwayDevicePlacement` | eAirway.04 | CodeableConcept |
| `airwayConfirmationMethod` | eAirway.04 | CodeableConcept (0..*) |
| `confirmingPersonType` | eAirway.06 | CodeableConcept |
| `tubeDepth` | eAirway.05 | Quantity (cm) |
| `airwayAttempts` | eAirway.02 | positiveInt |
| `airwayComplications` | eAirway.08 | CodeableConcept (0..*) |
| `airwayFailureReason` | eAirway.09 | CodeableConcept |
| `crewMember` | eAirway.10 | Reference(Practitioner) |

### Injury Extensions

Two complex extensions applied to **EMSConditionInjury**.

| Extension Id | Short Name | NEMSIS Elements | Sub-extensions |
|---|---|---|---|
| `ext-ems-injury-context` | Injury Context | eInjury.02–.10 | 9 sub-extensions |
| `ext-ems-acn-incident` | ACN Incident | eInjury.11–.29 | 19 sub-extensions |

Injury context sub-extension details:

| Sub-extension | NEMSIS Element | Type |
|---|---|---|
| `mechanismOfInjury` | eInjury.02 | CodeableConcept (0..*) |
| `traumaTriageHighRisk` | eInjury.03 | CodeableConcept (0..*) |
| `traumaTriageModerateRisk` | eInjury.04 | CodeableConcept (0..*) |
| `vehicleImpactArea` | eInjury.05 | integer (1–12 clock) |
| `patientVehicleLocation` | eInjury.06 | CodeableConcept |
| `safetyEquipment` | eInjury.07 | CodeableConcept (0..*) |
| `airbagDeployment` | eInjury.08 | CodeableConcept (0..*) |
| `heightOfFall` | eInjury.09 | Quantity ([ft_i]) |
| `oshaPPE` | eInjury.10 | CodeableConcept (0..*) |

ACN incident sub-extensions carry Automated Collision Notification telematics: company, incident id, callback phone, date/time, GPS location, vehicle body type/manufacturer/make/model/year, multiple impacts, delta velocity, high probability of injury, PDOF, rollover, seat location, seat occupied, seatbelt use, and airbag deployed (eInjury.11–.29).

### Agency and Personnel Extensions

| Extension Id | Short Name | NEMSIS Elements | Context |
|---|---|---|---|
| `ext-ems-agency-details` | Agency Details | dAgency operational data | Organization |
| `ext-ems-certification-level` | Certification Level | eCrew.02 / dPersonnel.24 | PractitionerRole |

### Universal Extensions (apply to any resource)

| Extension Id | Short Name | NEMSIS Pattern | Context |
|---|---|---|---|
| `ext-ems-not-value` | Not Value | NV codes (NDR-001) | Any element |
| `ext-ems-pertinent-negative` | Pertinent Negative | PN codes (NDR-002) | Any element |

---

## eTimes Complex Extension

The `ext-ems-times` complex extension on **EMSEncounter** captures all 19 NEMSIS timestamps. The main `Encounter.period` carries only two:

| Field | NEMSIS Element | Note |
|---|---|---|
| `Encounter.period.start` | eTimes.03 — Unit Notified by Dispatch | NDR-005 |
| `Encounter.period.end` | eTimes.12 — Patient Transfer of Care | NDR-005 |

All other timestamps are in the complex extension:

| Sub-extension | NEMSIS Element |
|---|---|
| `psapCallDateTime` | eTimes.01 |
| `dispatchNotifiedDateTime` | eTimes.02 |
| `dispatchAcknowledgedDateTime` | eTimes.04 |
| `unitEnRouteDateTime` | eTimes.05 |
| `unitArrivedOnSceneDateTime` | eTimes.06 |
| `arrivedAtPatientDateTime` | eTimes.07 |
| `transferOfEMSCareDateTime` | eTimes.08 |
| `unitLeftSceneDateTime` | eTimes.09 |
| `patientArrivedAtDestinationDateTime` | eTimes.11 |
| `destinationPatientTransferOfCareDateTime` | eTimes.12 |
| `unitBackInServiceDateTime` | eTimes.13 |
| `unitCancelledDateTime` | eTimes.14 |
| `unitBackAtHomeBaseDateTime` | eTimes.15 |
| `emsCallCompletedDateTime` | eTimes.16 |
| `firstCrewMemberAtPatientDateTime` | eTimes.17 |
| `respondingUnitOnSceneDateTime` | eTimes.18 |
| `unitNotifiedByDispatchDateTime` | eTimes.03 (also in period.start) |

---

## Adding New Extensions

To add a new extension to fhirEMSCore:

1. Add the FSH definition to the appropriate `input/fsh/extensions/ems-extensions-*.fsh` file
2. Add an alias to `input/fsh/aliases.fsh`
3. Reference in the relevant profile using the alias
4. Document in the Extensions Registry table above
5. Document in `docs/mapping/fhirEMSCore_MappingMatrix.xlsx` → Extensions_Registry sheet
