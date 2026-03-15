# fhirEMSCore Normalization Decision Records (NDR)

This document captures architectural decisions made during the normalization of NEMSIS 3.5.1.251001CP2 data elements into FHIR R4 / US Core 6.1.0.

---

## NDR-001: NEMSIS Not Values (NV) Pattern

**Status:** Accepted
**Date:** March 2026
**Context:** NEMSIS allows elements to carry special "Not Value" codes (NV.NotApplicable, NV.NotRecorded, NV.NotReporting) in addition to, or instead of, actual values. This is a pattern on nearly every NEMSIS element.

**Decision:**
- Map NV.NotApplicable → FHIR `dataAbsentReason = 'not-applicable'`
- Map NV.NotRecorded → FHIR `dataAbsentReason = 'not-asked'`
- Map NV.NotReporting → FHIR `dataAbsentReason = 'unknown'`
- For elements where FHIR does not support `dataAbsentReason` natively, use the `ext-ems-not-value` extension

**Consequences:** Implementing systems must be aware that NEMSIS NV patterns may result in absent FHIR elements rather than populated coded values.

---

## NDR-002: NEMSIS Pertinent Negatives (PN) Pattern

**Status:** Accepted
**Date:** March 2026
**Context:** NEMSIS allows clinical elements to carry "Pertinent Negative" values (e.g., PN.DeniesChestPain) to document a clinically meaningful absence. This is distinct from NV and carries clinical significance.

**Decision:**
- Represent PN values as FHIR Observations with:
  - `Observation.code` = the NEMSIS element's clinical meaning (e.g., SNOMED "Chest pain finding")
  - `Observation.value[x]` = SNOMED concept for absence
  - `Observation.extension[ext-ems-pertinent-negative]` = the specific PN code
- Do not omit PN values; they are clinically significant and must be preserved

**Consequences:** Receiving systems need to understand the PN extension to interpret clinical absence correctly.

---

## NDR-003: NEMSIS City Codes (GNIS) to FHIR

**Status:** Accepted
**Date:** March 2026
**Context:** NEMSIS uses USGS GNIS (Geographic Names Information System) codes for city names (e.g., ePatient.19, eScene.08). These are numeric codes, not plain text.

**Decision:**
- Store the GNIS code in `address.city.extension` using a custom GNIS code extension
- Optionally populate `address.city` with the human-readable city name after lookup
- Maintain a ConceptMap or lookup table: GNIS code → City Name

**Consequences:** Requires GNIS-to-city-name lookup infrastructure. FHIR `address.city` should contain the plain text city name for human readability.

---

## NDR-004: NEMSIS State Codes (ANSI 2-digit) to FHIR

**Status:** Accepted
**Date:** March 2026
**Context:** NEMSIS uses 2-digit ANSI numeric state codes (e.g., 49 = Utah, 06 = California). FHIR `address.state` expects 2-letter USPS abbreviations (e.g., UT, CA).

**Decision:**
- Store the 2-letter USPS abbreviation in `address.state` (FHIR standard)
- Maintain a ConceptMap: ANSI 2-digit → USPS 2-letter
- Conversion table: 01=AL, 02=AK, 04=AZ, 05=AR, 06=CA, 08=CO, 09=CT, 10=DE, 11=DC, 12=FL, 13=GA, 15=HI, 16=ID, 17=IL, 18=IN, 19=IA, 20=KS, 21=KY, 22=LA, 23=ME, 24=MD, 25=MA, 26=MI, 27=MN, 28=MS, 29=MO, 30=MT, 31=NE, 32=NV, 33=NH, 34=NJ, 35=NM, 36=NY, 37=NC, 38=ND, 39=OH, 40=OK, 41=OR, 42=PA, 44=RI, 45=SC, 46=SD, 47=TN, 48=TX, 49=UT, 50=VT, 51=VA, 53=WA, 54=WV, 55=WI, 56=WY

**Consequences:** Conversion required in both import (NEMSIS→FHIR) and export (FHIR→NEMSIS) transforms.

---

## NDR-005: EMS Times — Complex Timestamp Extension

**Status:** Accepted
**Date:** March 2026
**Context:** NEMSIS eTimes defines up to 19 discrete timestamps for a single EMS call (PSAP call, dispatch, en route, on scene, at patient, etc.). US Core Encounter only provides `period.start` and `period.end`.

**Decision:**
- Map `eTimes.03` (Unit Notified by Dispatch) to `Encounter.period.start`
- Map `eTimes.12` (Patient Transfer of Care at Destination) to `Encounter.period.end`
- Define complex extension `ext-ems-times` on Encounter with sub-extensions for all 19 timestamps
- Each sub-extension uses `dateTime` data type

**Consequences:** Receiving systems unaware of the extension will only have period.start/end. Full EMS timing data (response time, scene time, transport time) requires extension support.

---

## NDR-006: NEMSIS Sex (ePatient.11) vs. FHIR Gender

**Status:** Accepted
**Date:** March 2026
**Context:** NEMSIS ePatient.11 captures "Sex" with values: Male, Female, Unknown, Trans Male (FTM), Trans Female (MTF), Other. FHIR `Patient.gender` supports: male, female, other, unknown. US Core adds the `us-core-birthsex` extension with values M, F, UNK.

**Decision:**
- Map NEMSIS Male → `Patient.gender = male`
- Map NEMSIS Female → `Patient.gender = female`
- Map NEMSIS Trans Male → `Patient.gender = male` + `birthsex extension = F`
- Map NEMSIS Trans Female → `Patient.gender = female` + `birthsex extension = M`
- Map NEMSIS Other → `Patient.gender = other`
- Map NEMSIS Unknown → `Patient.gender = unknown`
- For full fidelity, preserve original NEMSIS sex code in a custom extension

**Consequences:** Some nuance of NEMSIS sex coding may be lost without the custom extension. Recommend including original NEMSIS value.

---

## NDR-007: NEMSIS Vitals Grouping (VitalGroup)

**Status:** Accepted
**Date:** March 2026
**Context:** NEMSIS allows multiple sets of vital signs (VitalGroup) per call. Each VitalGroup has its own timestamp (eVitals.01). FHIR individual Observations each have their own `effective[x]`.

**Decision:**
- Create one FHIR Observation per NEMSIS vital element per VitalGroup
- Use `Observation.effectiveDateTime` from eVitals.01 for each Observation in the group
- Optionally create a grouping/panel Observation that references individual vital Observations using `Observation.hasMember`
- Reference all vital Observations from the eVitals section of the PCR Composition

**Consequences:** A call with 5 sets of vitals and 10 measured elements = 50 Observation resources. This is appropriate for FHIR but systems should be designed for this cardinality.

---

## NDR-008: EMS Medications — MedicationAdministration vs. MedicationRequest

**Status:** Accepted
**Date:** March 2026
**Context:** US Core does not have a MedicationAdministration profile (only MedicationRequest). NEMSIS eMedications represents drugs actually given to the patient (administered).

**Decision:**
- Use FHIR `MedicationAdministration` (base R4 resource, not US Core profiled) for NEMSIS eMedications
- Profile directly from FHIR R4 base `MedicationAdministration`
- Use RxNorm for drug codes (NEMSIS already specifies RxNorm)
- Use SNOMED CT for route codes
- Use UCUM for dose units

**Consequences:** Not covered by US Core conformance but follows FHIR R4 standards. Future US Core versions may add a MedicationAdministration profile.

---

## NDR-009: Cardiac Arrest Data (eArrest)

**Status:** Under Review
**Date:** March 2026
**Context:** NEMSIS eArrest has a complex data model (18+ elements) covering: cardiac arrest witnessed, bystander CPR, AED use, resuscitation attempts, ROSC, cardiac arrest reason, hypothermia, etc. No single FHIR resource captures all of this.

**Decision (Proposed):**
- Model cardiac arrest as a FHIR `Condition` with code = SNOMED 410429000 (Cardiac arrest)
- Add `Condition.onset[x]` from eArrest.09 (Date/Time)
- Create individual `Observation` resources for discrete arrest metrics:
  - eArrest.01 (Cardiac Arrest) → Observation.valueBoolean
  - eArrest.02 (Witnessed Arrest) → Observation.valueCodeableConcept
  - eArrest.03 (Resuscitation Attempted) → Observation.valueCodeableConcept
  - eArrest.11 (ROSC) → Observation.valueBoolean
  - eArrest.12 (ROSC Time) → Observation.effectiveDateTime
- Define complex extension `ext-ems-arrest` on the Condition for remaining elements
- Reference all arrest Observations from eArrest section of PCR Composition

**Open Questions:** Should we use a dedicated EMS Cardiac Arrest profile? Review against Resuscitation Outcomes Consortium (ROC) FHIR work.

---

## NDR-010: NEMSIS Custom Configuration Elements

**Status:** Accepted
**Date:** March 2026
**Context:** NEMSIS allows EMS agencies and states to define custom data elements (seCustomConfiguration, sdCustomConfiguration). These are agency/state-specific and variable.

**Decision:**
- Do not attempt to pre-define profiles for custom elements
- Support custom elements via FHIR `Questionnaire` + `QuestionnaireResponse` pattern
- Alternatively, support via `Observation` with `code` derived from the custom element title
- Document the pattern for state/agency implementers in the IG

**Consequences:** Custom elements will not be interoperable across agencies without shared Questionnaire definitions. This is acceptable given their inherently non-standard nature.
