# Downloads

This page provides access to the downloadable artifacts for fhirEMSCore v0.1.0.

---

## Implementation Guide Package

The complete fhirEMSCore NPM package, for use with FHIR tooling, validators, and SUSHI-based IGs that depend on fhirEMSCore.

| Artifact | Description |
|---|---|
| `fhirems.emscore-0.1.0.tgz` | Full IG NPM package (FHIR JSON resources) |
| `full-ig.zip` | Complete IG including HTML, narrative, and all artifacts |
| `definitions.json.zip` | All StructureDefinitions, ValueSets, and CodeSystems in JSON |
| `definitions.xml.zip` | All StructureDefinitions, ValueSets, and CodeSystems in XML |
| `examples.json.zip` | All example instances in JSON |
| `examples.xml.zip` | All example instances in XML |

---

## Individual Artifact Downloads

After IG Publisher generation, individual artifacts are available at the following URL patterns:

```
[IG base URL]/StructureDefinition-[id].json
[IG base URL]/ValueSet-[id].json
[IG base URL]/CodeSystem-[id].json
```

---

## Profiles

| Profile | Id | Download |
|---|---|---|
| EMS Composition | ems-composition | StructureDefinition-ems-composition.json |
| EMS Patient | ems-patient | StructureDefinition-ems-patient.json |
| EMS Encounter | ems-encounter | StructureDefinition-ems-encounter.json |
| EMS Location (Scene) | ems-location-scene | StructureDefinition-ems-location-scene.json |
| EMS Location (Destination) | ems-location-destination | StructureDefinition-ems-location-destination.json |
| EMS Condition | ems-condition | StructureDefinition-ems-condition.json |
| EMS Condition (Arrest) | ems-condition-arrest | StructureDefinition-ems-condition-arrest.json |
| EMS Observation (Vital Signs) | ems-observation-vitalsigns | StructureDefinition-ems-observation-vitalsigns.json |
| EMS Observation (Blood Pressure) | ems-observation-bp | StructureDefinition-ems-observation-bp.json |
| EMS Observation (GCS) | ems-observation-gcs | StructureDefinition-ems-observation-gcs.json |
| EMS Observation (Exam) | ems-observation-exam | StructureDefinition-ems-observation-exam.json |
| EMS Observation (Airway) | ems-observation-airway | StructureDefinition-ems-observation-airway.json |
| EMS Observation (Labs) | ems-observation-labs | StructureDefinition-ems-observation-labs.json |
| EMS Observation (Outcome) | ems-observation-outcome | StructureDefinition-ems-observation-outcome.json |
| EMS Procedure | ems-procedure | StructureDefinition-ems-procedure.json |
| EMS Medication Administration | ems-medicationadministration | StructureDefinition-ems-medicationadministration.json |
| EMS AllergyIntolerance | ems-allergyintolerance | StructureDefinition-ems-allergyintolerance.json |
| EMS Organization | ems-organization | StructureDefinition-ems-organization.json |
| EMS Practitioner | ems-practitioner | StructureDefinition-ems-practitioner.json |
| EMS PractitionerRole | ems-practitionerrole | StructureDefinition-ems-practitionerrole.json |
| EMS Device (Vehicle) | ems-device-vehicle | StructureDefinition-ems-device-vehicle.json |
| EMS Coverage | ems-coverage | StructureDefinition-ems-coverage.json |
| EMS Claim | ems-claim | StructureDefinition-ems-claim.json |

---

## Extensions

| Extension | Id | Download |
|---|---|---|
| EMS Times | ext-ems-times | StructureDefinition-ext-ems-times.json |
| EMS Response Mode | ext-ems-response-mode | StructureDefinition-ext-ems-response-mode.json |
| EMS Dispatch Info | ext-ems-dispatch-info | StructureDefinition-ext-ems-dispatch-info.json |
| EMS Arrest Context | ext-ems-arrest-context | StructureDefinition-ext-ems-arrest-context.json |
| EMS Airway Context | ext-ems-airway-context | StructureDefinition-ext-ems-airway-context.json |
| EMS Not Value | ext-ems-not-value | StructureDefinition-ext-ems-not-value.json |
| EMS Pertinent Negative | ext-ems-pertinent-negative | StructureDefinition-ext-ems-pertinent-negative.json |
| *(See Extensions page for complete list)* | | |

---

## Source Files

The FSH source files for this IG are available in the project repository.

| Directory | Contents |
|---|---|
| `input/fsh/profiles/` | All profile FSH files |
| `input/fsh/extensions/` | All extension FSH files |
| `input/fsh/valuesets/` | All value set FSH files |
| `input/fsh/codesystems/` | All code system FSH files |
| `input/fsh/examples/` | All example instance FSH files |
| `input/fsh/instances/` | CapabilityStatement and other instances |
| `input/fsh/aliases.fsh` | Canonical URL aliases |

---

## NEMSIS Reference Files

For reference, the NEMSIS 3.5.1.251001CP2 specification files used to build this IG include:

- `EMSDataSet_v3.xsd` — Master EMS PCR schema
- `ePayment_v3.xsd` — Payment section schema
- `commonTypes_v3.xsd` — Shared data types
- `Combined_ElementDetails_Full.txt` — All 657 element definitions
- `Combined_ElementEnumerations.txt` — All 3,372 enumeration codes

These files are maintained by [NEMSIS Technology Assistance Center (TAC)](https://nemsis.org) at the University of Utah.

---

## Validator

To validate resources against fhirEMSCore profiles, download the FHIR Validator:

```bash
# Download the HL7 FHIR Validator
wget https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar

# Validate a resource
java -jar validator_cli.jar [resource.json] \
  -version 4.0.1 \
  -ig hl7.fhir.us.core#6.1.0 \
  -ig fhirems.emscore#0.1.0
```
