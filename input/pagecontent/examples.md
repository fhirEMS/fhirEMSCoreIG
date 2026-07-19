# Examples

This page documents the example instances defined in fhirEMSCore. All examples are machine-readable FHIR instances defined using FHIR Shorthand (FSH) in `input/fsh/examples/`.

---

## Example Scenario

The examples collectively represent a single EMS incident: a **motor vehicle accident (MVA)** on Interstate 15 near Murrieta, California, involving a 35-year-old male patient with chest pain and altered mental status who went into cardiac arrest during transport.

This scenario exercises the majority of fhirEMSCore profiles and demonstrates how the resources link together in a complete PCR.

---

## Example Instances

### Patient and Encounter

| Example Id | Profile | Description |
|---|---|---|
| `ex-ems-patient` | EMSPatient | 35-year-old White male, DOB 1990-01-15, with NPI-based identifier and race/ethnicity extensions |
| `ex-ems-encounter` | EMSEncounter | EMS response encounter, code 409971007 "Emergency medical services", period start/end set, dispatch and transport extensions |

### Scene and Destination

| Example Id | Profile | Description |
|---|---|---|
| `ex-ems-location-scene` | EMSLocationScene | MVA scene on I-15 at mile marker 62, Murrieta CA; GPS coordinates, first unit on scene, mass casualty: No |
| `ex-ems-location-destination` | EMSLocationDestination | Riverside University Health System Medical Center, Level I Trauma Center |

### Clinical Conditions

| Example Id | Profile | Description |
|---|---|---|
| `ex-ems-condition` | EMSCondition | Primary impression: chest pain (SNOMED 29857009), encounter-diagnosis category |
| `ex-ems-condition-arrest` | EMSConditionArrest | Cardiac arrest (SNOMED 410429000); full EMSArrestContext extension: VF etiology, bystander CPR, ROSC prior to ED |
| `ex-ems-condition-injury` | EMSConditionInjury | MVA driver injury (ICD-10-CM V89.2XXA); blunt mechanism, trauma triage criteria, restrained with airbag deployment, ACN telematics (delta-V 42 mph, PDOF 12) |
| `ex-ems-condition-problems` | EMSConditionProblems | Hypertension history (ICD-10-CM I10); advance directives, history source, immunization, alcohol/drug indicators via EMSHistoryContext |
| `ex-ems-medicationstatement` | EMSMedicationStatement | Lisinopril 10 mg oral daily (RxNorm 314076); NEMSIS route and frequency codes |

### Vital Signs

| Example Id | Profile | Description |
|---|---|---|
| `ex-ems-observation-bp` | EMSObservationBloodPressure | BP 92/60 mmHg, obtained on scene |
| `ex-ems-heart-rate` | EMSObservationVitalSigns | HR 110 bpm (LOINC 8867-4) |
| `ex-ems-spo2` | EMSObservationVitalSigns | SpO2 94% (LOINC 59408-5) |
| `ex-ems-respiratory-rate` | EMSObservationVitalSigns | RR 22 breaths/min (LOINC 9279-1) |
| `ex-ems-observation-gcs` | EMSObservationGCS | GCS 10 (Eye 3, Verbal 3, Motor 4) — panel observation with hasMember |

### Physical Exam

| Example Id | Profile | Description |
|---|---|---|
| `ex-ems-exam-skin` | EMSObservationExam | Skin: pale, diaphoretic (eExam.16) |
| `ex-ems-exam-neuro` | EMSObservationExam | Neuro: confused, abnormal motor response (eExam.23) |

### Airway and Labs

| Example Id | Profile | Description |
|---|---|---|
| `ex-ems-observation-airway` | EMSObservationAirway | Endotracheal intubation (SNOMED 182682004); confirmed by waveform ETCO2 + auscultation; tube depth 22 cm; EMSAirwayContext populated |
| `ex-ems-ecg-rhythm` | Observation (R4 base) | Sinus tachycardia (eVitals.03); 12-lead, computer interpretation via EMSECGContext |
| `ex-ems-pain-score` | Observation (R4 base) | Pain 7/10 (LOINC 72514-3); numeric scale via EMSPainScaleType |
| `ex-ems-stroke-scale` | Observation (R4 base) | CPSS negative (eVitals.29); EMSStrokeScaleContext + NDR-002 pertinent negative |
| `ex-ems-observation-labs` | EMSObservationLabs | Point-of-care blood glucose 142 mg/dL (LOINC 59469-7) |

### Procedures and Medications

| Example Id | Profile | Description |
|---|---|---|
| `ex-ems-procedure` | EMSProcedure | IV access (SNOMED 269997006); completed; performed by EMSPractitioner |
| `ex-ems-medicationadministration` | EMSMedicationAdministration | Normal saline 500 mL IV bolus (RxNorm 313002) |

### History and Allergies

| Example Id | Profile | Description |
|---|---|---|
| `ex-ems-allergyintolerance` | EMSAllergyIntolerance | Penicillin allergy (RxNorm 7980), documented onset unknown; mild rash reaction |

### Agency and Crew

| Example Id | Profile | Description |
|---|---|---|
| `ex-ems-organization` | EMSOrganization | Riverside County Fire Department EMS, NPI-2 identifier, CA license number |
| `ex-ems-practitioner` | EMSPractitioner | Paramedic John Smith, NPI, CA EMS certificate |
| `ex-ems-practitionerrole` | EMSPractitionerRole | Paramedic (SNOMED 9925007) role, cert level: Paramedic |
| `ex-ems-device-vehicle` | EMSDevice | Medic 7 vehicle; unit number (official), VIN (secondary), call sign (usual) |

### Outcome

| Example Id | Profile | Description |
|---|---|---|
| `ex-ems-observation-outcome` | EMSObservationOutcome | ED admission disposition 01 (admitted to hospital); hospital admit confirmed; ICD-10-CM S09.90XA diagnosis; ISS=9 |

### Payment

| Example Id | Profile | Description |
|---|---|---|
| `ex-ems-coverage` | EMSCoverage | Medicare Part B primary insurance; policy ID, insured = patient (self), priority 1 |
| `ex-ems-claim` | EMSClaim | CMS ALS Level 1 Emergency ambulance claim; Medicare primary; transport assessment codes; physician certification flag |

---

## Resource Relationship Diagram (Example Set)

```
ex-ems-composition
├── subject         → ex-ems-patient
├── encounter       → ex-ems-encounter
│     ├── location  → ex-ems-location-scene
│     └── location  → ex-ems-location-destination
├── section[conditions]
│     ├──            → ex-ems-condition (chest pain)
│     └──            → ex-ems-condition-arrest (cardiac arrest)
├── section[vitals]
│     ├──            → ex-ems-observation-bp
│     ├──            → ex-ems-heart-rate
│     ├──            → ex-ems-spo2
│     ├──            → ex-ems-respiratory-rate
│     └──            → ex-ems-observation-gcs
├── section[exam]
│     ├──            → ex-ems-exam-skin
│     └──            → ex-ems-exam-neuro
├── section[airway]
│     └──            → ex-ems-observation-airway
├── section[labs]
│     └──            → ex-ems-observation-labs
├── section[procedures]
│     └──            → ex-ems-procedure
├── section[medications]
│     └──            → ex-ems-medicationadministration
├── section[allergy]
│     └──            → ex-ems-allergyintolerance
├── section[outcome]
│     └──            → ex-ems-observation-outcome
├── author          → ex-ems-practitioner
│                   → ex-ems-organization
└── section[payment]
      ├──           → ex-ems-coverage
      └──           → ex-ems-claim
```

---

## Viewing Examples

All example instances are included in the `fsh-generated/resources/` directory after SUSHI compilation. They can be browsed in the Artifacts section of this IG or downloaded in JSON or XML format from the [Downloads](downloads.html) page.

---

## Validation Status

All examples in this IG have been compiled with SUSHI 3.18.x with zero errors. Full IG Publisher validation against FHIR R4 and US Core 6.1.0 is planned for the next release cycle.
