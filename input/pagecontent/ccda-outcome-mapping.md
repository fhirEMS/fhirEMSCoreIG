This page defines the normative mapping from a **standard C-CDA document**
(CCD or Discharge Summary, USCDI v3 content) to **NEMSIS eOutcome**, and from
eOutcome to its FHIR representation in this IG — the
[EMS Observation Outcome](StructureDefinition-ems-observation-outcome.html)
panel. It is the document-lane counterpart to the FHIR-endpoint acquisition
described on [Outcome Acquisition](outcome-acquisition.html).

A runnable Liquid template collection implementing this mapping for the
Microsoft FHIR Converter (`ccda` processor) is published in the repository at
`transformationScripts/ccda-to-eoutcome/`.

### C-CDA → eOutcome → FHIR component mapping

| C-CDA source | eOutcome | EMSObservationOutcome component |
|---|---|---|
| `componentOf/encompassingEncounter[code=IMP]/sdtc:dischargeDispositionCode` (NUBC, OID 2.16.840.1.113883.12.112) | eOutcome.02 Hospital Disposition | `hospitalDisposition` — LOINC `8656-1`, value NUBC |
| `encompassingEncounter[IMP]/effectiveTime/low` | eOutcome.11 Hospital Admission Date/Time | `hospitalAdmitDateTime` — LOINC `52455-3` |
| `encompassingEncounter[IMP]/effectiveTime/high` | eOutcome.16 Hospital Discharge Date/Time | `hospitalDischargeDateTime` — LOINC `8651-2` |
| `encompassingEncounter[EMER]` or Encounters section (LOINC `46240-8`) EMER entry: `sdtc:dischargeDispositionCode` | eOutcome.01 ED Disposition | `edDisposition` — `eOutcomeEDDisposition`, value NUBC |
| EMER encounter `effectiveTime/low` | eOutcome.18 ED Arrival Date/Time | `edAdmitDateTime` — `eOutcomeEDArrivalDateTime` |
| ED Diagnosis section (LOINC `18630-4`), observation values/translations in ICD-10-CM (OID …6.90) | eOutcome.10 ED Diagnosis | `edDiagnosis` — LOINC `29548-5`, value ICD-10-CM |
| Hospital Discharge Diagnosis section (LOINC `11535-2`), ICD-10-CM values/translations | eOutcome.13 Hospital Diagnosis | `hospitalDiagnosis` — LOINC `29308-4`, value ICD-10-CM |
| Procedures section (LOINC `47519-4`), procedure codes in ICD-10-PCS (OID …6.4); in a Discharge Summary context these are hospital procedures | eOutcome.12 Hospital Procedure (+ .20 date/time) | `hospitalProcedure` — `eOutcomeHospitalProcedure`, value ICD-10-PCS |

Codes in other systems (SNOMED CT primary codes without an ICD-10 translation,
CPT-only procedures) are **not** mapped — NEMSIS eOutcome constrains these
elements to ICD-10-CM/PCS and NUBC.

### Acquisition provenance

Every Observation produced from a document lane SHALL carry the
[EMS Outcome Acquisition Source](StructureDefinition-ext-ems-outcome-source.html)
extension: `lane` = `ccd-document` (from the
[acquisition-lane CodeSystem](CodeSystem-cs-ems-acquisition-lane.html)),
`sourceDocumentId` = the ClinicalDocument `id` as an OID/UUID identifier, and
`retrievedDateTime`. A full Provenance/AuditEvent per the
[Security and Privacy](security.html) page is still expected; the extension
makes the acquisition channel visible on the resource itself.

### Minimum necessary

A document exchange delivers the whole CCD, so minimum-necessary cannot be
enforced at request time the way scoped FHIR queries allow. Implementers
SHALL enforce it at **ingestion**: extract only the eOutcome elements the
acquisition plan requires, and record (not persist) what was discarded. The
reference implementation of that plan-driven filter is
`eOutcomeQueries/engine/ccd_outcome_extract.py`; the Liquid collection maps
the full eOutcome-relevant content and is intended to run behind such a
filter.
