# eOutcome Acquisition over FHIR — Planning Deep Dive

**Status:** PLANNING (v0.3.0 candidate) · 2026-07-19
**Scope:** How a fhirEMSCore encounter pulls every eOutcome element that applies
to its ePCR from external FHIR sources, with privacy and security designed for
the CMS regulatory posture effective **January 1, 2027**.

---

## 1. Problem statement

eOutcome is the only NEMSIS EMS section whose source of truth lives **outside
the EMS agency**: ED/hospital dispositions (eOutcome.01/.02), ED and hospital
ICD-10 diagnoses and procedures with timestamps (.09/.10/.12/.13/.18/.19/.20),
admission/discharge times (.11/.16), registry linkage (.03–.05), and ISS (.21).
Today this loop closes through state-office batch linkage or manual chart
requests — weeks late, incomplete, and invisible to QA.

The goal: for each `EMSEncounter`, automatically determine **which outcome
elements matter for THIS ePCR** (measure-driven), query the systems that hold
them over FHIR, and reconcile results back into eOutcome / EMSObservationOutcome
— under provable minimum-necessary, consent-aware, fully-audited exchange.

## 2. eOutcome element → FHIR query target

| eOutcome | FHIR source (receiving system) |
|---|---|
| .01 ED Disposition | ED `Encounter.hospitalization.dischargeDisposition` (class=EMER) |
| .02 Hospital Disposition | Inpatient `Encounter.hospitalization.dischargeDisposition` (NUBC) |
| .18/.11/.16 ED admit / hospital admit / discharge times | `Encounter.period` on ED / inpatient encounters (ED→IP linked via `partOf` / episode) |
| .10/.13 ED / hospital Dx (ICD-10-CM) | `Condition` (category encounter-diagnosis, `encounter=` the ED/IP encounter); claims lane: EOB diagnosis lists |
| .09/.12/.19/.20 ED / hospital procedures + times | `Procedure` (`encounter=`; ICD-10-PCS or SNOMED→PCS map); claims lane: EOB procedure lists |
| .21 ISS | `Observation` (trauma registry; often only via registry lane) |
| .03/.04/.05 external report/registry IDs | Registry lane (CARES, trauma/stroke registries); `DocumentReference`/`Encounter.identifier` when exposed |

## 3. Three acquisition lanes

### Lane A — Hospital / HIE FHIR endpoint (SAFR "Reconcile")
The California EMSA **SAFR** model (Search, Alert, File, Reconcile) is the
established EMS↔HIE pattern; this plan is its Reconcile leg, modernized:
- **Trust/authN:** SMART **Backend Services** (client_credentials +
  private_key_jwt, RFC 7523) against the hospital/HIE authorization server;
  **UDAP B2B** dynamic client registration where the network requires it
  (TEFCA facilitated FHIR). fhirEngine already ships both (ADR-0031..0036).
- **Data:** US Core 6.1.0+ (USCDI) — everything in §2 except ISS.
- **Purpose of use:** outcome feedback for EMS QA is **health care
  operations** (QAPI), *not* treatment. HIPAA 164.506(c)(4) permits CE→CE
  disclosure for the recipient's QA operations when both had a relationship
  with the patient — but **TEFCA mandates responses only for Treatment**;
  operations-purpose exchange is voluntary. Consequence: Lane A needs either
  (a) an HIE/DUA that covers QAPI purpose, or (b) framing within the
  treatment-adjacent SAFR agreement. This is the plan's #1 governance work item.
- **Latency:** near-real-time for ED events; discharge data requires re-query.

### Lane B — CMS-0057-F **Provider Access API** (payer) — the 1/1/2027 unlock
Impacted payers (MA, Medicaid/CHIP FFS + managed care, QHP-FFE) must serve
**claims + encounter data (no remittance/cost-sharing), all USCDI data, and
prior-auth data** to **in-network providers with a treatment relationship**,
within **one business day**, with payer-maintained **attribution** and patient
**opt-out** ([CMS-0057-F fact sheet](https://www.cms.gov/newsroom/fact-sheets/cms-interoperability-prior-authorization-final-rule-cms-0057-f)).
- Why it matters for EMS: the **ambulance claim itself evidences the treatment
  relationship** for attribution, and adjudicated hospital claims carry exactly
  what eOutcome wants — admission/discharge dates, discharge status (NUBC — the
  same codes as vs-ems-discharge-disposition), ICD-10-CM diagnoses, ICD-10-PCS
  procedures. C4BB `ExplanationOfBenefit` (inpatient/outpatient institutional)
  + PDex clinical data are the payloads; Bulk `$export` on attributed Groups.
- Trade-offs: only for that payer's members; claims lag adjudication (days to
  weeks — fine for QA, useless for alerts); patient opt-out must be honored
  silently (absence of data ≠ negative finding).
- Open question (governance): whether EMS **suppliers** (Part B ambulance) are
  uniformly treated as "in-network providers" for attribution across payer
  implementations — engage 2–3 payers early; fallback is Lane A/C.

### Lane A2 — Document exchange (USCDI v3 C-CDA CCD)
Many hospitals cannot serve granular US Core queries but CAN produce USCDI v3
C-CDA documents (CCD / discharge summary) via HIE document exchange, TEFCA
document QHINs, or Direct. Same USCDI v3 data classes, different syntax:
- **Extraction**: encompassingEncounter `sdtc:dischargeDispositionCode` (NUBC)
  + effectiveTime → dispositions/times; Discharge Diagnosis section
  (ICD-10-CM) → .10/.13; Procedures section (ICD-10-PCS) → .09/.12.
- **Privacy difference vs FHIR lane (important)**: a document lane delivers the
  ENTIRE CCD — minimum necessary cannot be enforced at request time via scoped
  queries. It is enforced at **ingestion**: only plan-required elements are
  extracted; everything else is discarded unpersisted and the discard is
  recorded for audit. This is inherently weaker than query-time minimization —
  prefer the FHIR lane when both exist, and say so in DUAs.
- **Retrieval security**: same trust fabric (IHE XCA/XCPD via QHIN, or FHIR
  `DocumentReference`/`$docref` where offered); posture rules (§3.5) unchanged.

### Lane C — Registry / state linkage (existing rails)
CARES, state trauma/stroke registries, state EMS office hospital-linkage
programs. Source for .03/.04/.05 and usually the only source of **ISS (.21)**.
Keep as batch reconciliation; out of scope for the FHIR query engine except
recording linkage IDs.

## 3.5 Access postures — Provider (Treatment) vs QA (Operations)

**EMS is not one thing.** The same agency may hold BOTH postures, per program —
and the posture, not the agency, determines the legal basis, the mandatory-ness
of responses, and the scope ceiling. The plan engine must tag every compiled
query plan with exactly one posture.

| | **Provider Access (Treatment)** | **QA Access (Operations/QAPI)** |
|---|---|---|
| EMS programs | Community paramedicine / MIH; treat-in-place & follow-up; interfacility and ongoing care coordination; active referral navigation | Retrospective outcome feedback; NEMSQA/agency measure computation; case review; system QI; registry submission support |
| HIPAA basis | Treatment (164.506(c)(2)) | Operations — CE→CE for the recipient's QA when both had a relationship with the patient (164.506(c)(4)) |
| Purpose-of-use label | `TREAT` | `HOPERAT` (QAPI) |
| TEFCA | Response **mandatory** (Treatment XP) | Response **voluntary** — needs DUA/participation agreements |
| CMS-0057-F Provider Access API | Fits the rule's premise directly: treatment relationship, attribution current | *Request* premise is still the treatment relationship (the transport); **downstream internal use** for QAPI of lawfully received data is a permitted HIPAA *use* — but do not represent a QA-only retrieval program as active treatment to obtain attribution you wouldn't otherwise have |
| Minimum necessary | Not required for treatment disclosures, but we apply plan-scoping anyway (defense in depth) | Required — the measure-derived element set IS the documented minimum-necessary determination |
| Latency need | Near-real-time (care is ongoing) | Batch-tolerant (T+24h…T+90d re-queries) |
| Token/client hygiene | Separate client registration (or at minimum per-request POU claim) per posture; never reuse a TREAT-scoped token for QA pulls | Same — plus QA tokens carry the narrower scope set |
| Audit | AuditEvent.purposeOfEvent = TREAT | AuditEvent.purposeOfEvent = HOPERAT; feeds accounting-of-disclosures at the responder |

Rules of engagement:
1. **Posture is assigned per program, applied per query plan.** A hybrid agency
   runs two logical clients. The measure engine defaults to QA; a plan is
   elevated to Treatment only when the triggering program is an active-care
   program (MIH enrollment, interfacility leg, referral in flight) — evidenced
   in the ePCR/CarePlan, not asserted ad hoc.
2. **Never launder.** QA queries under a TREAT label is the fastest way to lose
   HIE/TEFCA trust (and violates the framework's flow-down terms). The audit
   trail must show posture consistency: plan → scopes → POU → AuditEvent.
3. **Dual-posture data separation.** Data pulled under TREAT for an MIH patient
   may later be *used* internally for QA (permitted use), but data pulled under
   QA must never backfill a treatment record without clinician review — mark
   provenance with the acquisition posture so downstream consumers can tell.

## 4. Measure-driven recursive ePCR evaluation ("what applies")

The privacy keystone: **never query broadly**. The ePCR itself determines which
measures apply, and measures determine which outcome elements are needed —
giving a per-encounter, purpose-bound, *minimum-necessary* query plan.

### 4.1 Representation
- Each quality measure (NEMSQA set + agency/state measures) becomes a FHIR
  **`Measure`** resource in the IG with:
  - population criteria as **CQL** (`Library`) over fhirEMSCore profiles —
    v1 may ship a simpler **trigger-table** (Basic/CodeSystem) representation
    and graduate to CQL;
  - a fhirEMSCore extension **`ext-ems-outcome-requirements`** enumerating the
    eOutcome elements (and FHIR queries) the measure's numerator/outcome needs.
- Examples (illustrative):
  | Measure family | ePCR triggers (recursive walk hits) | Outcome needs |
  |---|---|---|
  | Stroke (e.g., NEMSQA Stroke-01 lineage) | eSituation.11/.12 ∈ I60–I63; eVitals.29 positive stroke scale | .10/.13 (dx confirm), .18 (door time), .02 |
  | Trauma | eInjury cause V00–Y38; trauma triage criteria present; trauma activation (eDisposition.24) | .10/.13, .09/.12, .11/.16, **.21 ISS** |
  | Cardiac arrest (CARES) | eArrest.01 = yes | .02 (survival to discharge), .16, registry .03–.05 |
  | Overdose | eSituation/impression T40*/F11*; naloxone in eMedications | .01/.10 — **42 CFR Part 2 lane, see §5.4** |
  | Airway | advanced airway in eProcedures/eAirway | .01/.10 (aspiration/complication dx) |

### 4.2 Recursive evaluation algorithm
```
evaluate(ePCR bundle B):
  facts ← walk(B)                    # recursive: Composition → Encounter →
                                     # every Condition/Procedure/MedAdmin/Obs/
                                     # extension (arrest, injury, disposition…),
                                     # following references + contained/extension trees
  M ← { m ∈ MeasureRegistry | m.appliesTo(facts) }         # CQL/trigger eval
  needs ← ⋃ m.outcomeRequirements  # element-level union → minimum necessary
  posture ← TREAT if activeCareProgram(B) else HOPERAT       # §3.5 — per plan, evidenced
  plan ← compile(needs, destination(B), payer(B), posture)   # lane selection per element
  return (M, needs, plan, posture)
```
`walk` must be genuinely recursive: e.g., naloxone (MedicationAdministration)
→ overdose measures even when the impression is "altered mental status"; a
trauma-activation extension deep in eDisposition → trauma measures.

### 4.3 Query execution (per encounter)
```
acquire(plan):
  subject ← Patient/$match at target (name/DOB/sex + incident date + facility)
            require match-grade ≥ certain; NEVER fan out on weak matches
  edEnc   ← Encounter?patient={id}&class=EMER&date=ge{transport-date}&date=le{+2d}
  ipEnc   ← follow edEnc.partOf / Encounter?part-of= / hospitalization linkage
  per element in plan:                       # ONLY planned elements
    Condition?encounter={enc}&category=encounter-diagnosis
    Procedure?encounter={enc}
    (Lane B: EOB?patient=&service-date=…; or attributed-Group $export delta)
  reconcile(results) → eOutcome fields + EMSObservationOutcome components
                       + Provenance per element (source org/endpoint/query id)
  schedule re-query: T+24h (ED), T+72h (admit), T+30d (discharge/ISS), stop on
  discharge disposition present or T+90d
```
Idempotent; re-queries narrow to still-missing elements (minimum necessary over
time, not just per call).

## 5. Privacy & security architecture (2027 posture)

1. **Identity & trust:** SMART Backend Services everywhere; UDAP B2B
   certificates for TEFCA-facilitated FHIR and payer endpoints that require
   dynamic registration. No shared secrets; keys in HSM/KMS; per-target client
   registrations.
2. **Authorization / minimum necessary:** SMART **v2 granular scopes** derived
   from the compiled plan — e.g., a stroke-only encounter requests
   `system/Encounter.rs?class=EMER system/Condition.rs?category=encounter-diagnosis`
   and *nothing else*; the measure engine is the documented minimum-necessary
   rationale (persist plan → scopes mapping as the justification record).
3. **Purpose of use:** label every request (TEFCA XP / SMART `fhirContext`
   conventions): `TREAT` only where true (active interfacility care),
   otherwise `HOPERAT`/QAPI. Do not launder QA queries as treatment. DUAs must
   name the purpose; TEFCA response is voluntary for operations (§3 Lane A).
4. **Consent & 42 CFR Part 2:** honor payer-side opt-out silently (Lane B);
   HIE consent policies per DUA (Lane A). **Part 2:** overdose/SUD-triggered
   plans are flagged at plan-compile time (the measure engine knows *why* it's
   querying); inbound SUD-related data gets DS4P labels
   (`42CFRPart2`/`R` confidentiality), is segmented from general QA views, and
   is excluded from re-disclosure. fhirEngine's consent + DS4P enforcement
   (ADR-0030) is the enforcement point.
5. **Patient matching:** `Patient/$match` with onlyCertainMatches=true;
   demographics + transport metadata as match evidence; log match grade; a
   failed match ends the lane (no probabilistic fishing).
6. **Audit & provenance:** IHE **BALP**-shaped `AuditEvent` for every query and
   response on our side (hash-chained per fhirEngine ADR-0035);
   `Provenance` on every written eOutcome element (target = the
   EMSObservationOutcome/element, agent = external org + our system, entity =
   query id). Accounting-of-disclosures ready.
7. **Data minimization at rest:** persist only the mapped eOutcome elements +
   provenance; full FHIR responses are processed in memory / short-TTL cache,
   never archived. Responses carrying more than requested (bulk lanes) are
   filtered at ingestion to the plan's element set.
8. **Transport & residue:** TLS 1.2+ hardened (NIST SP 800-52r2, already in
   fhirEngine); no PHI in URLs beyond FHIR search params over POST
   (`_search` POST form for demographic queries); tokens ≤5 min.

## 6. Deliverables

### fhirEMSCore IG (v0.3.0)
1. **Guidance page** `outcome-acquisition.md`: lanes, SAFR alignment, sequence
   diagrams, consent/Part 2 patterns, CMS-0057-F lane guidance.
2. **`Measure` + `Library` profiles** (`ems-measure`) + the
   `ext-ems-outcome-requirements` extension; 3–5 seed measures (stroke, trauma,
   arrest, overdose, airway) as IG examples with trigger tables (CQL phase 2).
3. **OperationDefinition `$ems-outcome-plan`** — input `EMSEncounter` (or PCR
   Bundle), output `Parameters`: applicable measures, required elements,
   compiled queries, required scopes, sensitivity flags, and the **access
   posture** (TREAT vs HOPERAT, §3.5) with its evidencing reference. (Server-side
   `$ems-outcome-acquire` is an engine concern, not IG.)
4. **ValueSets**: measure trigger sets (stroke dx, overdose dx/med, trauma
   cause) — reuse existing cs-nemsis-*/ICD-10/SNOMED content.
5. **CapabilityStatement** (client actor: "EMS Outcome Requester") declaring
   SMART BS + the query set; align with IHE QORE/Paramedicine work
   ([IHE FHIR work items](https://wiki.ihe.net/index.php/Category:FHIR)).
6. **eOutcome write-back mapping table** (§2) added to the mapping page, with
   Provenance requirements normative-ish (SHALL for source org + timestamp).

### fhirEngine (separate repo — alignment only)
Orchestrator job = the CMS-0057 plan's substrate reused as a **client**:
Backend Services/UDAP client, $match client, plan executor, DS4P labeling on
ingest, scheduled re-queries. Its `cms-0057-b2b-apis-plan.md` covers the payer
side; this plan is the provider-side consumer.

### Transforms
`eOutcome` reconciliation writer: FHIR results → NEMSIS eOutcome XML/JSON
elements (inverse direction of transformationScripts; same canonical layer).

## 7. Phasing

| Phase | Content | Exit test |
|---|---|---|
| P1 | IG guidance page + mapping table + trigger-table Measures + `$ems-outcome-plan` OpDef + ValueSets | IG builds 0/0/0; plan operation examples validate |
| P2 | Plan engine prototype (python, transforms-style) over the 5 real sample PCRs — measures fire correctly (MVC→trauma, Overdose→overdose+Part 2 flag, CPMIH→behavioral) | golden-file plan outputs per sample |
| P3 | Lane A end-to-end against a sandbox US Core server (fhirEngine as the "hospital") — $match → queries → eOutcome write-back with Provenance + AuditEvent | round-trip test: seeded hospital data → populated eOutcome validates against ems-observation-outcome |
| P4 | Lane B against a payer sandbox (C4BB/PDex reference) post-attribution | EOB→eOutcome mapping verified |
| P5 | CQL measures; QORE/IHE + NEMSQA alignment review; governance docs (DUA/POU templates) | external review |

## 8. Open questions (decide before P3/P4)
1. EMS supplier attribution under Provider Access — payer-by-payer variance.
2. TEFCA operations-purpose responses: rely on DUAs or wait for policy?
3. ED↔inpatient encounter linkage heterogeneity (`partOf` vs episode vs none) —
   how much heuristic linkage is acceptable before data quality suffers?
4. ISS: computable from queried dx (AIS mapping licensing!) vs registry-only.
5. Minors/guardian consent and state-law overlays on Part 2 segmentation.
6. Where the measure registry lives: IG-shipped vs agency-configured overlay.
