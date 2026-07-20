# ccda-to-eoutcome — Standard C-CDA → NEMSIS eOutcome → FHIR

Liquid template collection for the [Microsoft FHIR Converter](https://github.com/microsoft/FHIR-Converter)
`ccda` processor (`metadata.json: { "type": "ccda" }`). Maps a standard C-CDA
CCD / Discharge Summary (USCDI v3 content) to a single
**EMSObservationOutcome** resource (the IG's eOutcome panel), wrapped in a
collection Bundle, with the `ext-ems-outcome-source` acquisition-provenance
extension (`lane = ccd-document`).

Normative mapping table: IG page **C-CDA to eOutcome Mapping**
(`input/pagecontent/ccda-outcome-mapping.md`).

Run:

```sh
dotnet Microsoft.Health.Fhir.Liquid.Converter.Tool.dll convert \
  -d transformationScripts/ccda-to-eoutcome -r CcdaToEmsOutcome \
  -n eOutcomeQueries/fixtures/mvc-discharge-ccd.xml -f out.json
```

Notes on the `ccda` processor's JSON projection (empirically verified):
namespaced elements surface with `_` in place of `:`
(`sdtc:dischargeDispositionCode` → `sdtc_dischargeDispositionCode`); XML
attributes are direct properties; element text content is under `_`;
repeated elements become arrays (use the `to_array` filter to normalize).

This collection is **unfiltered** — it maps all eOutcome-relevant content in
the document. Plan-driven, ingestion-time minimum-necessary filtering (the
privacy posture required for document lanes) is implemented in
`eOutcomeQueries/engine/ccd_outcome_extract.py`; run this converter behind
that plan or an equivalent filter. Test: `python3 transformationScripts/tools/test_ccda_to_eoutcome.py`
(requires the built MS converter DLL; see DISCLAIMER.md).
