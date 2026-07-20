# eOutcomeQueries — measure-driven eOutcome acquisition engine

Implementation of the plan in
[`docs/planning/eoutcome-fhir-query-plan.md`](../docs/planning/eoutcome-fhir-query-plan.md):
each ePCR is recursively evaluated to find which outcome-linkage measures
apply; the union of their declared eOutcome requirements becomes a
**minimum-necessary, posture-tagged FHIR query plan**.

```
eOutcomeQueries/
├── measures/            one JSON trigger-table per measure (trauma, stroke,
│                        cardiac-arrest, overdose, airway) — CQL in a later phase
├── engine/ems_outcome_plan.py   the $ems-outcome-plan prototype
├── golden/              expected plans for the 5 real NEMSIS sample PCRs
└── test_plan_engine.py  golden + invariant regression tests
```

## Run

```bash
python3 eOutcomeQueries/engine/ems_outcome_plan.py <pcr.xml> --pretty
python3 eOutcomeQueries/test_plan_engine.py      # regression suite
```

## What a plan contains

Per PatientCareReport: **posture** (`TREAT` only with recorded evidence, e.g.
`eResponse.05=2205031` MIH encounter; default `HOPERAT`/QAPI), applicable
measures with the triggers that fired, the required eOutcome elements, compiled
FHIR queries with lane assignment (HIE/payer vs registry), the derived SMART v2
scope set, and sensitivity flags (`part2` for SUD-triggered plans → DS4P
labeling on ingest, no re-disclosure).

## Verified behavior (5 real NEMSIS 3.5.0 sample PCRs)

| Sample | Posture | Measures | Elements | Part 2 |
|---|---|---|---|---|
| Overdose | HOPERAT | overdose | 3 (minimum necessary) | **yes** |
| Suicide | HOPERAT | cardiac-arrest + trauma | 13 (incl. registry lane) | no |
| MVC | HOPERAT | trauma | 10 (incl. ISS) | no |
| eBike | HOPERAT | airway + trauma | 10 | no |
| CPMIH | **TREAT** (evidenced: MIH encounter) | — | 0 → **no external queries** | no |

Measure triggers are data-tuned: the overdose measure covers the full F10–F19
SUD block + T-poisoning ranges (the real sample presents as F19, not T40), and
naloxone is RxNorm 7242 only.

## P3 — plan execution (DONE, sandbox-verified)

`engine/ems_outcome_acquire.py` executes plans against a hospital-side FHIR
endpoint; `tools/seed_hospital.py` seeds Synthea-style synthetic hospital data
matching the sample PCR patients (demographics lifted from the PCRs so
matching is genuinely tested); `test_acquire_e2e.py` runs the loop with
fhirEngine as the hospital. Verified behavior (ALL PASS):

- **Matching**: tries `Patient/$match` (onlyCertainMatches), falls back to
  demographic search requiring exactly one hit; zero/ambiguous ends the lane.
- **ED→inpatient linkage**: `Encounter?part-of` first, then 72h temporal
  adjacency — the method used is recorded in Provenance (eBike scenario has no
  `partOf` and links via adjacency).
- **Minimum necessary enforced at execution**: only planned elements are
  queried; acquired ⊆ planned asserted; nothing fabricated when the inpatient
  encounter doesn't exist (Overdose ED-only case).
- **Privacy artifacts**: Part 2 plans yield DS4P labels (`42CFRPart2`, `R`) on
  the outcome Observation; Provenance carries the acquisition posture +
  evidence + linkage method; AuditEvent.purposeOfEvent always equals the plan
  posture; registry-lane elements (ISS) are explicitly deferred, not faked.
- Outputs land as `golden/acquired/<pcrId>.outcome.json`: NEMSIS eOutcome
  element values + EMSObservationOutcome instance + Provenance + AuditEvent.

## Next phases

Payer-lane C4BB EOB mapping (P4), CQL measure representations (P5), and
production hardening (retry/re-query schedule T+24h…T+90d, real SMART BS/UDAP
client wiring — fhirEngine has the substrate).
