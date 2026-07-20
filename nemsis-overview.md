# NEMSIS Overview - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* **NEMSIS Overview**

## NEMSIS Overview

# NEMSIS Overview

## What is NEMSIS?

The **National EMS Information System (NEMSIS)** is the national repository of EMS data collected from 911 calls across the United States. The NEMSIS Technical Assistance Center (TAC), hosted at the University of Utah, maintains the data standard and provides technical assistance to states and EMS agencies.

Website: [https://nemsis.org](https://nemsis.org)

## NEMSIS Version 3.5.1

This IG is based on **NEMSIS Version 3.5.1.251001CP2** — the October 2025 Compliance Package 2 release.

## Dataset Structure

### EMSDataSet (EMS PCR)

The primary dataset for a Patient Care Report. Contains 24 sections:

| | | |
| :--- | :--- | :--- |
| eRecord | Record metadata | Composition |
| eResponse | Unit and response data | Encounter |
| eDispatch | Dispatch information | Encounter (extension) |
| eCrew | Crew member data | Practitioner/PractitionerRole |
| eTimes | Response timestamps (19 times) | Encounter (ext-ems-times) |
| ePatient | Patient demographics | Patient |
| eScene | Scene location data | Location |
| eSituation | Chief complaint, impressions | Condition |
| eHistory | Medical history, allergies | Condition, AllergyIntolerance |
| eVitals | Vital signs | Observation |
| eLabs | Lab and imaging results | Observation |
| eExam | Physical examination | Observation |
| eProcedures | Procedures performed | Procedure |
| eMedications | Medications administered | MedicationAdministration |
| eAirway | Airway management | Observation |
| eArrest | Cardiac arrest data | Condition + Observation |
| eInjury | Injury details | Condition |
| eDisposition | Destination and transport | Encounter.hospitalization + Location |
| eOutcome | Hospital/ED outcomes | Observation |
| ePayment | Billing and insurance | Coverage + Claim |
| eOther | Miscellaneous | Observation + Composition |
| eDevice | Device data | Device |
| eProtocols | Protocols used | Encounter (extension) |
| eNarrative | Free-text narrative | Composition.section |

### DEMDataSet (Agency Demographics)

Agency-level data updated periodically. Maps to Organization, Location, Practitioner, and Device resources.

### StateDataSet

State-specific configuration. Not directly profiled in this IG; informs value set content.

## Key NEMSIS Concepts

### National vs. State Elements

Each element has a "National" or "State" designation:

* **National**: Required by the national NEMSIS standard; all agencies must collect
* **State**: Optional or state-specific; not required at the national level

### Usage Levels

| | | |
| :--- | :--- | :--- |
| Mandatory | Must be populated | MS (1..1 or 1..*) |
| Required | Should be populated; NV permitted | MS with NV handling |
| Recommended | Collect when possible | MS with comment |
| Optional | Collect at agency discretion | No MS requirement |

### Not Values (NV)

NEMSIS allows 269 elements to carry a "Not Value" (NV) instead of data:

* `NV.NotApplicable` → `dataAbsentReason = not-applicable`
* `NV.NotRecorded` → `dataAbsentReason = not-asked`
* `NV.NotReporting` → `dataAbsentReason = unknown`

See NDR-001 in the normalization decisions document.

### Pertinent Negatives (PN)

NEMSIS PN codes (70 elements) represent clinically significant documented absence — e.g., "no chest pain" rather than "chest pain not recorded." In FHIR, PNs are represented using the `ext-ems-pertinent-negative` extension on the relevant Observation or element.

### Nillable Elements

271 NEMSIS elements are "nillable" — they can be submitted as `xsi:nil="true"` in XML when a value exists but cannot be captured. In FHIR, nillable elements are simply omitted when not available; the NV extension handles the semantic "not recorded" case.

## NEMSIS XML to FHIR Mapping Approach

The core transformation rules are:

1. One EMS response → one FHIR`Bundle`containing a`Composition`as the entry point
1. VitalGroup repeating groups → multiple`Observation`resources linked by`encounter`and`effectiveDateTime`
1. Timestamps from`eTimes`→`ext-ems-times`complex extension on`Encounter`
1. NEMSIS coded values → FHIR`CodeableConcept`bound to NEMSIS-defined`ValueSet`or standard code systems (LOINC, SNOMED CT, RxNorm, ICD-10-CM)

For full element-level mapping, see the [NEMSIS-to-FHIR Mapping](mapping.md) page.

