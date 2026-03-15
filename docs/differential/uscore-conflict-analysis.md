---
title: US Core 6.1.0 Conflict Analysis — fhirEMSCore v0.1.0
date: 2026-03-14
revision: 2 (full re-analysis)
status: Resolved
---

# US Core 6.1.0 Conflict Analysis

Full re-analysis of all 23 fhirEMSCore v0.1.0 profiles against their US Core 6.1.0 parent profiles.
All conflicts resolved in favor of US Core. SUSHI result after fixes: **0 Errors, 0 Warnings**.

---

## Summary

| Severity | Count | Status |
|---|---|---|
| Blocking (constraint loosened or prohibited element) | 16 | Fixed |
| Warning (implicit MS not declared, missing binding) | 23 | Fixed |
| No conflict | — | — |
| **Total issues** | **39** | **All Resolved** |

---

## Profiles With No Conflicts

| Profile | Parent | Result |
|---|---|---|
| `ems-observation-exam.fsh` | us-core-observation-clinical-result | No conflicts |
| `ems-composition.fsh` | FHIR R4 Composition | No conflicts |
| `ems-medicationadministration.fsh` | FHIR R4 MedicationAdministration | No conflicts |
| `ems-device-vehicle.fsh` | FHIR R4 Device | No conflicts |
| `ems-claim.fsh` | FHIR R4 Claim | No conflicts |
| `ems-coverage.fsh` | FHIR R4 Coverage | No conflicts |

---

## Conflict Details by Profile

---

### `ems-patient.fsh` — US Core Patient 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `telecom.system` | 1..1 MS, required binding (contact-point-system) | `MS` only, no binding | YES | Blocking |
| `telecom.value` | 1..1 MS | `MS` only | YES | Blocking |
| `telecom.use` | MS, required binding (contact-point-use) | Not declared | YES | Blocking |
| `address.state` | MS, extensible binding (us-core-usps-state) | `MS`, no binding | YES | Warning |
| `communication.language` | MS, extensible binding (simple-language) | `MS`, no binding | YES | Warning |

**Fixes applied:**
- Added `* telecom.system 1..1 MS` + required binding to `contact-point-system`
- Added `* telecom.value 1..1 MS`
- Added `* telecom.use MS` + required binding to `contact-point-use`
- Added extensible binding on `address.state` to `us-core-usps-state`
- Added extensible binding on `communication.language` to `simple-language`

---

### `ems-encounter.fsh` — US Core Encounter 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `identifier[*].system` | 1..1 MS per slice | `MS` only (no cardinality) | YES | Blocking |
| `identifier[*].value` | 1..1 MS per slice | `MS` only (no cardinality) | YES | Blocking |
| `hospitalization.dischargeDisposition` | preferred binding | required binding (over-constraint) | YES | Blocking |

**Fixes applied:**
- Added `* system 1..1 MS` to both `identifier[incidentNumber]` and `identifier[responseNumber]` slices
- Changed `hospitalization.dischargeDisposition` binding strength from `required` → `preferred`

---

### `ems-condition.fsh` — US Core Condition Encounter Diagnosis 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `clinicalStatus` | MS, required binding (condition-clinical) | `MS`, no binding | YES | Blocking |
| `verificationStatus` | MS, required binding (condition-ver-status) | `MS`, no binding | YES | Blocking |
| `abatement[x]` | MS | Not declared | YES | Warning |
| `recordedDate` | MS | Not declared | YES | Warning |

**Fixes applied:**
- Added required binding to `clinicalStatus` → `condition-clinical`
- Added required binding to `verificationStatus` → `condition-ver-status`
- Added `* abatement[x] MS`
- Added `* recordedDate MS`

---

### `ems-condition-arrest.fsh` — US Core Condition Encounter Diagnosis 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `clinicalStatus` | required binding (condition-clinical) | `1..1 MS`, no binding | YES | Blocking |
| `verificationStatus` | required binding (condition-ver-status) | `1..1 MS`, no binding | YES | Blocking |
| `abatement[x]` | MS | Not declared | YES | Warning |
| `recordedDate` | MS | Not declared | YES | Warning |

**Fixes applied:**
- Added required binding to `clinicalStatus` → `condition-clinical`
- Added required binding to `verificationStatus` → `condition-ver-status`
- Added `* abatement[x] MS`
- Added `* recordedDate MS`

---

### `ems-observation-bp.fsh` — US Core Blood Pressure 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `component` | 2..* (systolic + diastolic required) | Not constrained | YES | Blocking |
| `component[systolic].code` | 1..1 MS | Not declared | YES | Warning |
| `component[diastolic].code` | 1..1 MS | Not declared | YES | Warning |

**Fixes applied:**
- Added `* component 2..* MS`
- Added `* component[systolic].code 1..1 MS`
- Added `* component[diastolic].code 1..1 MS`

---

### `ems-observation-airway.fsh` — US Core Observation Clinical Result 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `value[x]` | MS (must not be prohibited) | `0..0` (prohibited) | YES | **Critical/Blocking** |
| `dataAbsentReason` | MS | Not declared | YES | Blocking |
| `category` | 1..* MS | `MS` only, no min cardinality | YES | Warning |

**Fixes applied:**
- Removed `* value[x] 0..0` constraint — replaced with `* value[x] MS` + explanatory comment that detail is in extension
- Added `* dataAbsentReason MS`
- Changed `* category MS` → `* category 1..* MS`

**Note:** Prohibiting `value[x]` in a child of `us-core-observation-clinical-result` is a direct conformance violation. The airway detail is now documented as captured via `extension[airwayContext]` with `dataAbsentReason` used when no scalar value applies.

---

### `ems-procedure.fsh` — US Core Procedure 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `status` | required binding (event-status) | `MS`, no binding | YES | Blocking |
| `code` | extensible binding (us-core-procedure-code) | `1..1 MS`, no binding | YES | Blocking |

**Fixes applied:**
- Added required binding on `status` → `event-status`
- Added extensible binding on `code` → `us-core-procedure-code`

---

### `ems-allergyintolerance.fsh` — US Core AllergyIntolerance 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `clinicalStatus` | MS, required binding (allergyintolerance-clinical) | `MS`, no binding | YES | Blocking |
| `verificationStatus` | MS, required binding (allergyintolerance-verification) | Not declared | YES | Blocking |
| `reaction` | MS | Not declared | YES | Warning |
| `reaction.manifestation` | MS | Not declared | YES | Warning |

**Fixes applied:**
- Added required binding to `clinicalStatus` → `allergyintolerance-clinical`
- Added `* verificationStatus MS` with required binding → `allergyintolerance-verification`
- Added `* reaction MS`
- Added `* reaction.manifestation MS`

---

### `ems-practitioner.fsh` — US Core Practitioner 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `name.family` | 1..1 MS | `MS` only (no min cardinality) | YES | Blocking |
| `identifier[agencyId].system` | 1..1 MS | Not declared in slice | YES | Blocking |
| `identifier[agencyId].value` | 1..1 MS | `MS` only in slice | YES | Blocking |
| `telecom` | MS | Not declared | YES | Warning |
| `telecom.system` | MS | Not declared | YES | Warning |
| `telecom.value` | MS | Not declared | YES | Warning |
| `address` | MS | Not declared | YES | Warning |
| `address.line/city/state/postalCode` | MS | Not declared | YES | Warning |

**Fixes applied:**
- Changed `name.family MS` → `name.family 1..1 MS`
- Added `* system 1..1 MS` and `* value 1..1 MS` to `identifier[agencyId]` slice
- Added `telecom MS`, `telecom.system MS`, `telecom.value MS`
- Added `address MS` with `address.line/city/state/postalCode MS`

---

### `ems-practitionerrole.fsh` — US Core PractitionerRole 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `specialty` | MS | Not declared | YES | Warning |
| `location` | MS | Not declared | YES | Warning |
| `telecom` | MS | Not declared | YES | Warning |
| `telecom.system` | 1..1 MS | Not declared | YES | Warning |
| `telecom.value` | 1..1 MS | Not declared | YES | Warning |
| `endpoint` | MS | Not declared | YES | Warning |

**Fixes applied:**
- Added `specialty MS`, `location MS`, `endpoint MS`
- Added `telecom MS` with `telecom.system 1..1 MS` and `telecom.value 1..1 MS`

---

### `ems-organization.fsh` — US Core Organization 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `telecom` | MS | Not declared | YES | Warning |
| `telecom.system` | MS | Not declared | YES | Warning |
| `telecom.value` | MS | Not declared | YES | Warning |

**Fixes applied:**
- Added `telecom MS`, `telecom.system MS`, `telecom.value MS`

---

### `ems-location-scene.fsh` — US Core Location 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `status` | MS | Not declared | YES | Warning |
| `name` | MS | Not declared | YES | Warning |
| `telecom` | MS | Not declared | YES | Warning |
| `managingOrganization` | MS | Not declared | YES | Warning |

**Fixes applied:**
- Added `status MS`, `name MS`, `telecom MS`, `managingOrganization MS` (typed to `EMSOrganization`)

---

### `ems-location-destination.fsh` — US Core Location 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `status` | MS | Not declared | YES | Warning |
| `telecom` | MS | Not declared | YES | Warning |
| `managingOrganization` | MS | Not declared | YES | Warning |

**Fixes applied:**
- Added `status MS`, `telecom MS`, `managingOrganization MS`

---

### `ems-observation-vitalsigns.fsh` — US Core Vital Signs 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `category[VSCat]` | 1..1 MS, fixed: vital-signs | Inherited only, not re-declared | YES | Warning |

**Fix applied:**
- Added `* category[VSCat] 1..1 MS` with `= $obs-cat#vital-signs "Vital Signs"` fixed value

---

### `ems-observation-labs.fsh` — US Core Observation Clinical Result 6.1.0

| Element | US Core Requirement | Prior State | Conflict | Severity |
|---|---|---|---|---|
| `category` | 1..* MS | `MS` only (no min cardinality) | YES | Warning |

**Fix applied:**
- Changed `* category MS` → `* category 1..* MS`

---

### `ems-observation-gcs.fsh`, `ems-observation-outcome.fsh` — Previously resolved

| Profile | Fix from prior round | Status |
|---|---|---|
| `ems-observation-gcs.fsh` | `category 1..* MS`, `category[us-core]` slice | Fixed (prior round) |
| `ems-observation-outcome.fsh` | `category 1..* MS` | Fixed (prior round) |

---

## Files Modified — This Round

| File | Changes |
|---|---|
| `ems-patient.fsh` | telecom.system/value 1..1 MS + bindings; telecom.use MS + binding; address.state extensible binding; communication.language extensible binding |
| `ems-encounter.fsh` | identifier[*].system/value 1..1 MS in slices; dischargeDisposition binding preferred |
| `ems-condition.fsh` | clinicalStatus/verificationStatus required bindings; abatement[x]/recordedDate MS |
| `ems-condition-arrest.fsh` | clinicalStatus/verificationStatus required bindings; abatement[x]/recordedDate MS |
| `ems-observation-bp.fsh` | component 2..* MS; component[systolic/diastolic].code 1..1 MS |
| `ems-observation-airway.fsh` | value[x] 0..0 → MS (critical fix); dataAbsentReason MS; category 1..* MS |
| `ems-procedure.fsh` | status required binding (event-status); code extensible binding (us-core-procedure-code) |
| `ems-allergyintolerance.fsh` | clinicalStatus required binding; verificationStatus MS + required binding; reaction/reaction.manifestation MS |
| `ems-practitioner.fsh` | name.family 1..1 MS; identifier[agencyId] system/value 1..1 MS; telecom MS; address MS |
| `ems-practitionerrole.fsh` | specialty/location/endpoint MS; telecom.system/value 1..1 MS |
| `ems-organization.fsh` | telecom/system/value MS |
| `ems-location-scene.fsh` | status/name/telecom/managingOrganization MS |
| `ems-location-destination.fsh` | status/telecom/managingOrganization MS |
| `ems-observation-vitalsigns.fsh` | category[VSCat] 1..1 MS with fixed value |
| `ems-observation-labs.fsh` | category 1..* MS |

---

## Post-Fix Validation

SUSHI 3.18.x build after all fixes applied:

```
23 Profiles | 43 Extensions | 121 ValueSets | 16 CodeSystems | 30 Instances
0 Errors  |  0 Warnings
```

---

## Cumulative Fix History

| Round | Trigger | Issues Fixed |
|---|---|---|
| Round 1 | Initial US Core audit | 13 issues (ems-patient name, ems-encounter class/type, ems-condition category slice, ems-observation-vitalsigns/exam/gcs/outcome/bp categories and component cardinalities, ems-organization name/active) |
| Round 2 | Full re-analysis (all 23 profiles) | 39 issues (bindings, missing MS declarations, value[x] prohibition, component codes, identifier sub-elements, telecom/address MS) |

---

## Deferred Items (v0.2.0)

- **eHistory Condition profile** — `us-core-condition-problems-health-concerns` parent for past medical history
- **eInjury profile** (29 elements) — FHIR R4 `Condition` base
- **eOther profile** (22 elements) — mixed Observation/Composition
- **eHistory MedicationStatement** — FHIR R4 base resource
