# US Core Alignment

This page describes how fhirEMSCore aligns with [US Core 6.1.0](http://hl7.org/fhir/us/core/STU6.1/) and where EMS-specific requirements necessitate additional constraints or extensions.

---

## Alignment Strategy

fhirEMSCore derives all profiles from US Core 6.1.0 where a US Core profile exists. This ensures EMS data can be exchanged across the broader US healthcare ecosystem — including hospital EHRs, health information exchanges (HIEs), and public health systems — without requiring EMS-specific parsing.

### Profile Derivation Hierarchy

```
FHIR R4 Base Resource
    └── US Core 6.1.0 Profile  (if one exists)
            └── fhirEMSCore Profile  (always)
```

**Rule**: When a US Core 6.1.0 profile exists for a FHIR resource, fhirEMSCore **must** derive from it. Never skip a US Core parent.

Resources with **no US Core profile** derive directly from the FHIR R4 base resource:

| Resource | fhirEMSCore Profile | Reason |
|---|---|---|
| Composition | EMSComposition | No US Core Composition profile |
| MedicationAdministration | EMSMedicationAdministration | No US Core profile; NEMSIS records administered medications |
| Device | EMSDevice | No US Core Device profile |
| Coverage | EMSCoverage | No US Core Coverage profile |
| Claim | EMSClaim | No US Core Claim profile |

---

## Must Support Inheritance

All Must Support (MS) obligations from US Core parent profiles are inherited by fhirEMSCore profiles. fhirEMSCore may additionally:

- **Tighten** cardinality (e.g., 0..1 → 1..1) when NEMSIS marks an element as Required or Mandatory
- **Add MS** to elements required by NEMSIS but optional in US Core
- **Narrow** reference targets to EMS-specific profiles (e.g., `Reference(Patient)` → `Reference(EMSPatient)`)
- **Add extensions** for NEMSIS data elements with no direct FHIR equivalent
- **Bind** additional value sets (required or extensible) for NEMSIS-coded elements

fhirEMSCore profiles **must not** loosen cardinality, remove Must Support, or add constraints that conflict with US Core invariants.

---

## Profile-by-Profile Alignment

### EMSPatient → us-core-patient

| US Core Requirement | fhirEMSCore Constraint | NEMSIS Source |
|---|---|---|
| `identifier` 1..* | Inherited (1..*) | Local PCR record ID |
| `name` 1..* | Inherited | ePatient.03/04/05 |
| `gender` MS | Inherited + mapped per NDR-006 | ePatient.11 |
| `birthDate` MS | Inherited | ePatient.17 |
| `us-core-race` extension MS | Inherited | ePatient.14 (OMB race categories) |
| `us-core-ethnicity` extension MS | Inherited | ePatient.15 |
| `us-core-birthsex` extension MS | Inherited | ePatient.11 (biological sex component) |
| *EMS-specific additions:* | | |
| `ext-ems-patient-age` | Added 0..1 MS | ePatient.15 — age at time of call |
| `ext-ems-alternate-residence` | Added 0..1 | ePatient.09 — alternate address |
| `ext-ems-patient-barrier` | Added 0..* MS | ePatient.21 — language/communication barriers |
| `address.extension[ext-ems-census-tract]` | Added | ePatient.08 — census tract |

### EMSEncounter → us-core-encounter

| US Core Requirement | fhirEMSCore Constraint | NEMSIS Source |
|---|---|---|
| `identifier` 1..* | Incident number slice added | eRecord.01 |
| `status` MS | Inherited | Completed PCR = `finished` |
| `class` MS | Bound to NEMSIS encounter codes | eResponse.05 |
| `type` 1..* MS | SNOMED 409971007 required | EMS service type |
| `subject` 1..1 MS | Reference(EMSPatient) only | — |
| `period` MS | start = eTimes.03, end = eTimes.12 | NDR-005 |
| *EMS-specific additions:* | | |
| `ext-ems-times` | Added 0..1 MS | eTimes 19-timestamp complex extension |
| `ext-ems-response-type` | Added 0..1 MS | eResponse.05 |
| `ext-ems-unit-type` | Added 0..1 MS | eResponse.07 |
| `ext-ems-dispatch-info` | Added 0..1 MS | eDispatch elements |
| `ext-ems-transport-details` | Added 0..1 MS | eDisposition transport data |
| `ext-ems-response-mode` | Added 0..1 MS | eResponse response/travel mode |
| `ext-ems-disposition-codes` | Added 0..1 MS | eDisposition destination data |

### EMSCondition → us-core-condition-encounter-diagnosis

| US Core Requirement | fhirEMSCore Constraint | NEMSIS Source |
|---|---|---|
| `category[us-core]` 1..1 | encounter-diagnosis required | eSituation primary/secondary impression |
| `code` 1..1 MS | SNOMED CT preferred | eSituation.11 primary impression |
| `subject` 1..1 MS | Reference(EMSPatient) only | — |
| `encounter` MS | Reference(EMSEncounter) | — |
| *EMS additions:* | | |
| `ext-ems-incident-type` | Added 0..1 | eSituation.07 incident type |
| `ext-ems-not-value` | Allowed | NV support per NDR-001 |

### EMSObservationVitalSigns → us-core-vital-signs

| US Core Requirement | fhirEMSCore Constraint | NEMSIS Source |
|---|---|---|
| `status` MS | final / amended / entered-in-error | eVitals status |
| `category` fixed to vital-signs | Inherited | — |
| `code` LOINC required | Bound to EMS vital sign LOINC codes | eVitals per LOINC mapping table |
| `subject` 1..1 MS | Reference(EMSPatient) only | — |
| `effective[x]` 1..1 MS | effectiveDateTime required | eVitals.01 timestamp |
| *EMS additions:* | | |
| `ext-ems-vital-obtained-prior` | Added 0..1 MS | eVitals.02 (obtained prior to unit arrival) |
| `ext-ems-not-value` | Allowed | NV support per NDR-001 |
| `ext-ems-pertinent-negative` | Allowed | PN support per NDR-002 |

### EMSObservationBloodPressure → us-core-blood-pressure

The US Core blood pressure profile fixes:
- `code` = LOINC `85354-9` (Blood pressure panel with all children)
- Systolic component = LOINC `8480-6`
- Diastolic component = LOINC `8462-4`
- UCUM unit constraints on valueQuantity components

fhirEMSCore adds:
- `ext-ems-bp-method` for eVitals.08 (blood pressure measurement method)
- `ext-ems-vital-obtained-prior` for eVitals.02

### EMSProcedure → us-core-procedure

| US Core Requirement | fhirEMSCore Constraint | NEMSIS Source |
|---|---|---|
| `status` MS | completed / not-done | eProcedures.01 attempted flag |
| `code` 1..1 MS | SNOMED CT (NEMSIS uses SNOMED) | eProcedures.03 (direct SNOMED mapping) |
| `subject` 1..1 MS | Reference(EMSPatient) only | — |
| `performed[x]` MS | performedDateTime | eProcedures.01 timestamp |
| *EMS additions:* | | |
| `ext-ems-procedure-context` | Added 0..1 MS | eProcedures context data |

### EMSAllergyIntolerance → us-core-allergyintolerance

Full alignment with US Core. EMS-specific additions:
- Substance coded to RxNorm (consistent with NEMSIS eHistory.06)
- `recorder` reference narrowed to Reference(EMSPractitioner)

### EMSPractitioner → us-core-practitioner

Full alignment with US Core. EMS additions:
- `qualification` slice for EMS certification level (dPersonnel.24)
- `ext-ems-certification-level` extension

### EMSOrganization → us-core-organization

Full alignment. EMS additions:
- Identifier slices for state EMS agency number and NPI-2
- `ext-ems-agency-details` for dAgency operational data

---

## Terminology Alignment

fhirEMSCore uses US Core-recommended terminologies wherever NEMSIS data allows:

| Domain | US Core Standard | fhirEMSCore Implementation |
|---|---|---|
| Race/Ethnicity | OMB categories (us-core-race/ethnicity) | Full alignment |
| Vital Signs | LOINC | Full alignment — LOINC mapping table defined |
| Diagnoses | SNOMED CT or ICD-10-CM | SNOMED preferred; ICD-10-CM for billing claims |
| Procedures | SNOMED CT or CPT | SNOMED (NEMSIS eProcedures already uses SNOMED codes) |
| Medications | RxNorm | Full alignment (NEMSIS eMedications already uses RxNorm) |
| Units of Measure | UCUM | Full alignment |
| EMS-specific coded elements | NEMSIS CodeSystem | Used only where no standard code system applies |

---

## Known Gaps and Future Work

| Gap | Description | Planned Resolution |
|---|---|---|
| Home medication history | NEMSIS eHistory records medications patient takes at home | `MedicationStatement` profile (Phase 3) |
| Gender identity | NEMSIS sex codes include transgender values | `gender-identity` extension (HL7 extension) |
| Multi-patient incidents | NEMSIS supports multiple patients per incident | Separate Encounter per patient; shared Location |
| Real-time streaming | NEMSIS supports near-real-time PCR submission | FHIR Subscription or `$process-message` (Phase 4) |
| eInjury section | 29 trauma/injury elements not yet profiled | `Condition` extension or `InjuryCondition` profile (future) |
| eOther section | 22 additional clinical elements | Observation extensions (future) |
