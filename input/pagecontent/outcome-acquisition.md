# eOutcome Acquisition over FHIR

NEMSIS eOutcome is the one EMS section whose source of truth lives **outside**
the EMS agency: ED/hospital dispositions, diagnoses, procedures,
admission/discharge times, and registry linkage. This page defines how a
fhirEMSCore encounter acquires that data over FHIR — measure-driven,
minimum-necessary, consent-aware, and fully audited.

## Access postures: Provider (Treatment) vs QA (Operations)

**EMS agencies may hold both postures, per program.** The posture — not the
agency — determines the legal basis, whether responses are mandatory, and the
scope ceiling. Every compiled query plan is tagged with exactly one posture:

| | Provider Access (`TREAT`) | QA Access (`HOPERAT`) |
|---|---|---|
| Programs | Community paramedicine / MIH (eResponse.05 = 2205031), special-referral evaluation (2205033), interfacility legs, active referral navigation | Retrospective outcome feedback, quality-measure computation, case review, registry support |
| HIPAA basis | Treatment — 45 CFR 164.506(c)(2) | Operations (QAPI) — 45 CFR 164.506(c)(4), both entities had a relationship with the patient |
| TEFCA response | Mandatory (Treatment XP) | Voluntary — requires DUA/participation agreement |
| Minimum necessary | Not required, applied anyway | Required — the measure-derived element set is the documented determination |

Posture is **evidenced from the record** (e.g., the MIH response type), never
asserted ad hoc, and must be consistent across the plan → scopes →
purpose-of-use → AuditEvent chain. QA queries must never be labeled as
treatment.

## Measure-driven planning: the `$ems-outcome-plan` operation

The [`$ems-outcome-plan`](OperationDefinition-ems-outcome-plan.html) operation
takes an EMSEncounter (or full PCR Bundle) and returns the acquisition plan:

1. **Recursive evaluation** of the ePCR (conditions, procedures, medications,
   arrest/injury/disposition extensions — e.g., naloxone alone triggers the
   overdose measure even when the impression reads "altered mental status");
2. **Applicable measures** (trauma, stroke, cardiac arrest, substance
   use/overdose, advanced airway, and agency-configured additions), each
   declaring the eOutcome elements its computation requires;
3. The union of those requirements as the **minimum-necessary element set**,
   compiled into FHIR queries with lane assignments and the derived SMART v2
   scope set;
4. The **access posture** with its evidencing element, and **sensitivity
   flags** — plans triggered by SUD/overdose content are flagged for
   42 CFR Part 2 handling: inbound data receives DS4P labels
   (`42CFRPart2`, confidentiality `R`), is segmented, and is not re-disclosed.

A PCR with no applicable measures compiles **no external queries**.

## Acquisition lanes

| Lane | Source | Security | Notes |
|---|---|---|---|
| A — Hospital / HIE | US Core FHIR endpoint (SAFR "Reconcile") | SMART Backend Services; UDAP B2B where required (TEFCA) | Near-real-time ED data; QAPI purpose needs DUA coverage |
| B — Payer (CMS-0057-F Provider Access API, from 2027-01-01) | Claims + encounter data + USCDI | Backend Services; payer attribution (the ambulance claim evidences the treatment relationship); patient opt-out honored silently | Adjudication lag; discharge status/diagnoses/procedures align directly with eOutcome |
| C — Registries | CARES, trauma/stroke registries, state linkage | Program agreements | ISS (eOutcome.21) and registry IDs (.03–.05) |

Patient identity at the target uses `Patient/$match` with
`onlyCertainMatches`; a failed match ends the lane. Every query and response
produces an AuditEvent (IHE BALP pattern) with the plan's purpose-of-use, and
every eOutcome element written back carries `Provenance` naming the source
organization, endpoint, and acquisition posture.

## eOutcome element → FHIR mapping

| eOutcome | FHIR source |
|---|---|
| .01 / .18 ED disposition, admit time | ED `Encounter` (class EMER): `hospitalization.dischargeDisposition`, `period.start` |
| .02 / .11 / .16 hospital disposition, admit, discharge | Inpatient `Encounter` (class IMP), linked via `partOf`/episode |
| .10 / .13 ED, hospital diagnoses | `Condition` (category encounter-diagnosis) per encounter; Lane B: EOB diagnoses |
| .09 / .12 / .19 / .20 procedures + times | `Procedure` per encounter; Lane B: EOB procedures |
| .21 ISS | Registry lane |
| .03 / .04 / .05 registry linkage | Registry lane |

The reference planning engine, measure trigger tables, and regression suite
(verified against the five published NEMSIS 3.5.0 sample PCRs) live in the
repository's `eOutcomeQueries/` folder; the full architecture and phasing are
in `docs/planning/eoutcome-fhir-query-plan.md`.
