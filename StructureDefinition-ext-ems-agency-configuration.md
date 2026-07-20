# EMS Agency Configuration - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Agency Configuration**

## Extension: EMS Agency Configuration 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-agency-configuration | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSAgencyConfiguration |

NEMSIS dConfiguration: state, permitted procedures/medications with certification levels, protocols, specialty service capability, billing status, EMD provision/vendor, patient monitoring capability, crew call signs, and dispatch centers. Repeat the extension per configured state (dConfiguration.01).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Organization](StructureDefinition-ems-organization.md)
* Examples for this Extension: [Riverside County EMS Agency](Organization-ex-ems-organization-agency.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-agency-configuration.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-agency-configuration.csv), [Excel](StructureDefinition-ext-ems-agency-configuration.xlsx), [Schematron](StructureDefinition-ext-ems-agency-configuration.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-agency-configuration",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-agency-configuration",
  "version" : "0.2.0",
  "name" : "EMSAgencyConfiguration",
  "title" : "EMS Agency Configuration",
  "status" : "draft",
  "date" : "2026-07-19T20:45:43-04:00",
  "publisher" : "fhirEMSCore Research Project (AI-Generated — Unofficial)",
  "contact" : [{
    "name" : "fhirEMSCore Research Project (AI-Generated — Unofficial)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/fhirEMS/fhirEMSCoreIG"
    }]
  },
  {
    "name" : "fhirEMSCore Research Project",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/fhirEMS/fhirEMSCoreIG"
    }]
  }],
  "description" : "NEMSIS dConfiguration: state, permitted procedures/medications with certification levels, protocols, specialty service capability, billing status, EMD provision/vendor, patient monitoring capability, crew call signs, and dispatch centers. Repeat the extension per configured state (dConfiguration.01).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Organization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Agency Configuration",
      "definition" : "NEMSIS dConfiguration: state, permitted procedures/medications with certification levels, protocols, specialty service capability, billing status, EMD provision/vendor, patient monitoring capability, crew call signs, and dispatch centers. Repeat the extension per configured state (dConfiguration.01)."
    },
    {
      "id" : "Extension.extension:state",
      "path" : "Extension.extension",
      "sliceName" : "state",
      "short" : "dConfiguration.01 - State Associated with this Configuration",
      "comment" : "NEMSIS dConfiguration.01. Usage: Mandatory. 2-letter USPS abbreviation per NDR-004.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:state.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:state.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "state"
    },
    {
      "id" : "Extension.extension:state.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:procedure",
      "path" : "Extension.extension",
      "sliceName" : "procedure",
      "short" : "dConfiguration.06/.07 - EMS Agency Procedures with permitted certification levels",
      "comment" : "NEMSIS dConfiguration.07 (SNOMED procedure code) with dConfiguration.06 (permitted certification levels). Repeat per procedure.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:procedure.extension:code",
      "path" : "Extension.extension.extension",
      "sliceName" : "code",
      "short" : "dConfiguration.07 - Procedure (SNOMED CT)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:procedure.extension:code.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:procedure.extension:code.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "code"
    },
    {
      "id" : "Extension.extension:procedure.extension:code.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:procedure.extension:permittedLevel",
      "path" : "Extension.extension.extension",
      "sliceName" : "permittedLevel",
      "short" : "dConfiguration.06 - Certification level permitted to perform",
      "comment" : "NEMSIS state certification/licensure levels; uses the eCrew.02 certification level codes.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:procedure.extension:permittedLevel.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:procedure.extension:permittedLevel.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "permittedLevel"
    },
    {
      "id" : "Extension.extension:procedure.extension:permittedLevel.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-certification-level"
      }
    },
    {
      "id" : "Extension.extension:procedure.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "procedure"
    },
    {
      "id" : "Extension.extension:procedure.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:medication",
      "path" : "Extension.extension",
      "sliceName" : "medication",
      "short" : "dConfiguration.08/.09 - EMS Agency Medications with permitted certification levels",
      "comment" : "NEMSIS dConfiguration.09 (RxNorm medication code) with dConfiguration.08 (permitted certification levels). Repeat per medication.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:medication.extension:code",
      "path" : "Extension.extension.extension",
      "sliceName" : "code",
      "short" : "dConfiguration.09 - Medication (RxNorm)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:medication.extension:code.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:medication.extension:code.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "code"
    },
    {
      "id" : "Extension.extension:medication.extension:code.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:medication.extension:permittedLevel",
      "path" : "Extension.extension.extension",
      "sliceName" : "permittedLevel",
      "short" : "dConfiguration.08 - Certification level permitted to administer",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:medication.extension:permittedLevel.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:medication.extension:permittedLevel.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "permittedLevel"
    },
    {
      "id" : "Extension.extension:medication.extension:permittedLevel.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-certification-level"
      }
    },
    {
      "id" : "Extension.extension:medication.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "medication"
    },
    {
      "id" : "Extension.extension:medication.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:protocol",
      "path" : "Extension.extension",
      "sliceName" : "protocol",
      "short" : "dConfiguration.10 - EMS Agency Protocols",
      "comment" : "NEMSIS dConfiguration.10. Same 9914xxx protocol codes as eProtocols.01.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:protocol.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:protocol.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "protocol"
    },
    {
      "id" : "Extension.extension:protocol.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-protocol-used"
      }
    },
    {
      "id" : "Extension.extension:specialtyCapability",
      "path" : "Extension.extension",
      "sliceName" : "specialtyCapability",
      "short" : "dConfiguration.11 - EMS Agency Specialty Service Capability",
      "comment" : "NEMSIS dConfiguration.11. Usage: Recommended. Repeating (0..M).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:specialtyCapability.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:specialtyCapability.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "specialtyCapability"
    },
    {
      "id" : "Extension.extension:specialtyCapability.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-specialty-service-capability"
      }
    },
    {
      "id" : "Extension.extension:billingStatus",
      "path" : "Extension.extension",
      "sliceName" : "billingStatus",
      "short" : "dConfiguration.12 - Billing Status",
      "comment" : "NEMSIS dConfiguration.12. Usage: Optional. Whether the agency bills for service; NEMSIS YesNoValues mapped to boolean.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:billingStatus.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:billingStatus.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "billingStatus"
    },
    {
      "id" : "Extension.extension:billingStatus.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:emdProvided",
      "path" : "Extension.extension",
      "sliceName" : "emdProvided",
      "short" : "dConfiguration.13 - EMD Provided to EMS Agency Service Area",
      "comment" : "NEMSIS dConfiguration.13. Usage: Mandatory.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:emdProvided.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:emdProvided.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "emdProvided"
    },
    {
      "id" : "Extension.extension:emdProvided.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-emd-provided"
      }
    },
    {
      "id" : "Extension.extension:emdVendor",
      "path" : "Extension.extension",
      "sliceName" : "emdVendor",
      "short" : "dConfiguration.14 - EMD Vendor",
      "comment" : "NEMSIS dConfiguration.14. Usage: Recommended. Free-text vendor name. Repeating (0..M).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:emdVendor.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:emdVendor.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "emdVendor"
    },
    {
      "id" : "Extension.extension:emdVendor.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:monitoringCapability",
      "path" : "Extension.extension",
      "sliceName" : "monitoringCapability",
      "short" : "dConfiguration.15 - Patient Monitoring Capability(ies)",
      "comment" : "NEMSIS dConfiguration.15. Usage: Recommended. Repeating (0..M).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:monitoringCapability.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:monitoringCapability.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "monitoringCapability"
    },
    {
      "id" : "Extension.extension:monitoringCapability.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-monitoring-capability"
      }
    },
    {
      "id" : "Extension.extension:crewCallSign",
      "path" : "Extension.extension",
      "sliceName" : "crewCallSign",
      "short" : "dConfiguration.16 - Crew Call Sign",
      "comment" : "NEMSIS dConfiguration.16. Usage: Mandatory. Repeating (1..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:crewCallSign.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:crewCallSign.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "crewCallSign"
    },
    {
      "id" : "Extension.extension:crewCallSign.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:dispatchCenter",
      "path" : "Extension.extension",
      "sliceName" : "dispatchCenter",
      "short" : "dConfiguration.17 - Dispatch Center (CAD) Name or ID",
      "comment" : "NEMSIS dConfiguration.17. Usage: Optional. Repeating (0..M).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:dispatchCenter.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dispatchCenter.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dispatchCenter"
    },
    {
      "id" : "Extension.extension:dispatchCenter.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-agency-configuration"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
