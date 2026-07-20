# EMS Agency Medical Director - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Agency Medical Director**

## Extension: EMS Agency Medical Director 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-medical-director | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSMedicalDirector |

NEMSIS agency medical director credentials: degree (dContact.13), board certification type (dContact.14), compensation (dContact.15), and board certified/eligible status (dContact.16).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Organization](StructureDefinition-ems-organization.md)
* Examples for this Extension: [Riverside County EMS Agency](Organization-ex-ems-organization-agency.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-medical-director.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-medical-director.csv), [Excel](StructureDefinition-ext-ems-medical-director.xlsx), [Schematron](StructureDefinition-ext-ems-medical-director.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-medical-director",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-medical-director",
  "version" : "0.2.0",
  "name" : "EMSMedicalDirector",
  "title" : "EMS Agency Medical Director",
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
  "description" : "NEMSIS agency medical director credentials: degree (dContact.13), board certification type (dContact.14), compensation (dContact.15), and board certified/eligible status (dContact.16).",
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
      "short" : "EMS Agency Medical Director",
      "definition" : "NEMSIS agency medical director credentials: degree (dContact.13), board certification type (dContact.14), compensation (dContact.15), and board certified/eligible status (dContact.16)."
    },
    {
      "id" : "Extension.extension:degree",
      "path" : "Extension.extension",
      "sliceName" : "degree",
      "short" : "dContact.13 - Agency Medical Director Degree",
      "comment" : "NEMSIS dContact.13. Usage: Recommended.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:degree.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:degree.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "degree"
    },
    {
      "id" : "Extension.extension:degree.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medical-director-degree"
      }
    },
    {
      "id" : "Extension.extension:boardCertificationType",
      "path" : "Extension.extension",
      "sliceName" : "boardCertificationType",
      "short" : "dContact.14 - Agency Medical Director Board Certification Type",
      "comment" : "NEMSIS dContact.14. Usage: Recommended. Repeating (0..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:boardCertificationType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:boardCertificationType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "boardCertificationType"
    },
    {
      "id" : "Extension.extension:boardCertificationType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medical-director-board-cert"
      }
    },
    {
      "id" : "Extension.extension:compensation",
      "path" : "Extension.extension",
      "sliceName" : "compensation",
      "short" : "dContact.15 - Medical Director Compensation",
      "comment" : "NEMSIS dContact.15. Usage: Optional.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:compensation.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:compensation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "compensation"
    },
    {
      "id" : "Extension.extension:compensation.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-director-compensation"
      }
    },
    {
      "id" : "Extension.extension:boardCertifiedEligible",
      "path" : "Extension.extension",
      "sliceName" : "boardCertifiedEligible",
      "short" : "dContact.16 - EMS Medical Director Board Certified/Eligible",
      "comment" : "NEMSIS dContact.16. Usage: Optional. NEMSIS YesNoValues mapped to boolean.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:boardCertifiedEligible.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:boardCertifiedEligible.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "boardCertifiedEligible"
    },
    {
      "id" : "Extension.extension:boardCertifiedEligible.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-medical-director"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
