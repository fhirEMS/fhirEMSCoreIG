# EMS Agency Details - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Agency Details**

## Extension: EMS Agency Details 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-agency-details | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSAgencyDetails |

Groups NEMSIS dAgency data elements that have no FHIR Organization base equivalent: dAgency.09 (Primary Type of Service), dAgency.10 (Other Types of Service), dAgency.11 (Level of Service), dAgency.12 (Organization Status). All Mandatory or Required/National.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Organization](StructureDefinition-ems-organization.md)
* Examples for this Extension: [Riverside County EMS Agency](Organization-ex-ems-organization-agency.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-agency-details.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-agency-details.csv), [Excel](StructureDefinition-ext-ems-agency-details.xlsx), [Schematron](StructureDefinition-ext-ems-agency-details.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-agency-details",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-agency-details",
  "version" : "0.2.0",
  "name" : "EMSAgencyDetails",
  "title" : "EMS Agency Details",
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
  "description" : "Groups NEMSIS dAgency data elements that have no FHIR Organization base equivalent:\ndAgency.09 (Primary Type of Service), dAgency.10 (Other Types of Service),\ndAgency.11 (Level of Service), dAgency.12 (Organization Status).\nAll Mandatory or Required/National.",
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
      "short" : "EMS Agency Details",
      "definition" : "Groups NEMSIS dAgency data elements that have no FHIR Organization base equivalent:\ndAgency.09 (Primary Type of Service), dAgency.10 (Other Types of Service),\ndAgency.11 (Level of Service), dAgency.12 (Organization Status).\nAll Mandatory or Required/National."
    },
    {
      "id" : "Extension.extension:primaryServiceType",
      "path" : "Extension.extension",
      "sliceName" : "primaryServiceType",
      "short" : "dAgency.09 - Primary Type of Service",
      "comment" : "NEMSIS dAgency.09. Usage: Mandatory/National. Not nillable. No NV or PN. The primary type of EMS service provided.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:primaryServiceType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:primaryServiceType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "primaryServiceType"
    },
    {
      "id" : "Extension.extension:primaryServiceType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-service-type"
      }
    },
    {
      "id" : "Extension.extension:otherServiceType",
      "path" : "Extension.extension",
      "sliceName" : "otherServiceType",
      "short" : "dAgency.10 - Other Types of Service",
      "comment" : "NEMSIS dAgency.10. Usage: Recommended. Nillable. NV: NotRecorded, NotApplicable. Additional service types beyond the primary.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:otherServiceType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:otherServiceType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "otherServiceType"
    },
    {
      "id" : "Extension.extension:otherServiceType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-service-type"
      }
    },
    {
      "id" : "Extension.extension:levelOfService",
      "path" : "Extension.extension",
      "sliceName" : "levelOfService",
      "short" : "dAgency.11 - Level of Service",
      "comment" : "NEMSIS dAgency.11. Usage: Mandatory/National. Not nillable. No NV or PN. The highest level of care the agency is licensed/certified to provide.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:levelOfService.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:levelOfService.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "levelOfService"
    },
    {
      "id" : "Extension.extension:levelOfService.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-level-of-service"
      }
    },
    {
      "id" : "Extension.extension:organizationStatus",
      "path" : "Extension.extension",
      "sliceName" : "organizationStatus",
      "short" : "dAgency.12 - Organization Status",
      "comment" : "NEMSIS dAgency.12. Usage: Mandatory/National. Not nillable. No NV or PN. Whether the agency is volunteer, non-volunteer, or mixed.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:organizationStatus.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:organizationStatus.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "organizationStatus"
    },
    {
      "id" : "Extension.extension:organizationStatus.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-org-status"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-agency-details"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
