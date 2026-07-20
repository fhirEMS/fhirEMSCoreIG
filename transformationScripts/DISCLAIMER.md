# DISCLAIMER — Verification Status of the Conversion Pipeline

_2026-07-19. This file states precisely what has and has NOT been verified.
Nothing here has been reviewed by clinical, NEMSIS, or regulatory domain
experts, and none of it is approved for production or clinical use._

## Verified (automated, repeatable)

For the **full pipeline** (all sections, including the 2026-07-19 coverage
expansion: Composition, eArrest, eInjury, eHistory→Allergy/Problems/
MedicationStatement, eExam regions, eLabs, eCrew):

- Renders identically on **python-liquid (CI harness)** and the **real
  Microsoft FHIR Converter (DotLiquid)** — resource counts match on all five
  published NEMSIS 3.5.0 sample PCRs.
- Output is valid JSON; every internal bundle reference resolves; every
  resource has a deterministic id; every `meta.profile` URL exists in the
  built IG package; **every IG-namespace coding resolves against the
  package's CodeSystems**; NDR-001 nil/NV omission honored.
- Fixture harness: 17 structural + content checks.

For the **original core-path sections only** (Patient, Encounter, scene
Location, primary-impression Condition, vitals, Procedure,
MedicationAdministration, crew): additionally validated resource-by-resource
against the IG's own profiles via the HL7 Java validator, served from
fhirEngine, and run through Inferno US Core v6.1.0 (zero profile-validation
failures).

## NOT yet verified — treat as "should work"

1. **HL7-validator profile conformance of the NEW section outputs**
   (ConditionArrest/-Injury/-Problems, AllergyIntolerance,
   MedicationStatement, exam/labs Observations, Composition incl. its
   section-slice discriminators). The harness checks profiles exist and codes
   resolve — it does not run the full validator against these instances.
2. **Server-side ingestion** of the expanded bundles (fhirEngine invariant
   checks caught real bugs before; the new resources haven't been POSTed).
3. **Clinical/terminology content pass-through**: source codes (ICD-10-CM/PCS,
   RxNorm, SNOMED, CodeType-attributed history codes) are passed through
   as-is; the real samples demonstrably contain miscoded entries (e.g., a PCS
   code in a diagnosis field, a SNOMED-looking code typed as RxNorm). No
   correction or validation is attempted.
4. **Exam mapping design choices**: region observations use LOINC codes only
   where the profile suggests them (skin/head/neuro/lung); other regions use
   text-only codes. Finding→component granularity is one interpretation of
   the profile's guidance, not a validated one.
5. **Composition completeness**: only the sections with emitted resources are
   populated; narrative `text.div` is placeholder; attester/custodian are not
   emitted.
6. **The Whistle maps** (`google-whistle/`) do not include the expanded
   sections and remain reference-only.

## ccda-to-eoutcome collection (added 2026-07-19)

Verified: renders on the **real Microsoft FHIR Converter `ccda` processor**
against the synthetic fixture CCD (`eOutcomeQueries/fixtures/
mvc-discharge-ccd.xml`) with 17 automated checks
(`tools/test_ccda_to_eoutcome.py`): all nine eOutcome components, correct
code systems, no fabricated components, acquisition-source extension, and
IG-namespace code resolution against the built package.

Additionally verified: the emitted Observation was run through the HL7 Java
validator (validator_cli, FHIR 4.0.1) against the built IG package with the
`ems-observation-outcome` profile asserted — all component/category slices
match and no structural errors (`-tx n/a` mode; one spurious
SocketTimeoutException from the validator's LOINC display lookup is
environmental, not content).

NOT verified: (a) real-world C-CDA variability — the fixture is one clean
synthetic Discharge Summary; production CCDs vary widely in section
templates, null flavors, translation nesting, and repeated-element shapes;
(b) terminology-server code validation (NUBC / ICD-10-CM/PCS codes are
passed through, display texts unchecked); (c) this collection has **no**
minimum-necessary filter — it must run behind the plan-driven ingestion
filter (see its README).

## Recommended before relying on the expanded output

Run the expanded bundles through the HL7 validator with the IG loaded
(pattern in the repo history), POST them to fhirEngine, and re-run the
Inferno suite — the same loop that hardened the core path.
