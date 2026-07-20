# EMS Signature Context - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Signature Context**

## Extension: EMS Signature Context 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-signature-context | *Version*:0.2.0 |
| Draft as of 2026-07-19 | *Computable Name*:EMSSignatureContext |

NEMSIS signature metadata for the PCR: type of person signing (eOther.12), signature reason (eOther.13), patient representative type (eOther.14), signature status (eOther.15), signature file name/type (eOther.16/.17), and signer name (eOther.20/.21).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EMS Provenance — PCR Signature](StructureDefinition-ems-provenance.md)
* Examples for this Extension: [Provenance/ex-ems-provenance](Provenance-ex-ems-provenance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ext-ems-signature-context.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-ems-signature-context.csv), [Excel](StructureDefinition-ext-ems-signature-context.xlsx), [Schematron](StructureDefinition-ext-ems-signature-context.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-ems-signature-context",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-signature-context",
  "version" : "0.2.0",
  "name" : "EMSSignatureContext",
  "title" : "EMS Signature Context",
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
  "description" : "NEMSIS signature metadata for the PCR: type of person signing (eOther.12), signature reason (eOther.13), patient representative type (eOther.14), signature status (eOther.15), signature file name/type (eOther.16/.17), and signer name (eOther.20/.21).",
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
    "expression" : "Provenance"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS Signature Context",
      "definition" : "NEMSIS signature metadata for the PCR: type of person signing (eOther.12), signature reason (eOther.13), patient representative type (eOther.14), signature status (eOther.15), signature file name/type (eOther.16/.17), and signer name (eOther.20/.21)."
    },
    {
      "id" : "Extension.extension:signerType",
      "path" : "Extension.extension",
      "sliceName" : "signerType",
      "short" : "eOther.12 - Type of Person Signing",
      "comment" : "NEMSIS eOther.12. Usage: Optional.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:signerType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:signerType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "signerType"
    },
    {
      "id" : "Extension.extension:signerType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-signer-type"
      }
    },
    {
      "id" : "Extension.extension:signatureReason",
      "path" : "Extension.extension",
      "sliceName" : "signatureReason",
      "short" : "eOther.13 - Signature Reason",
      "comment" : "NEMSIS eOther.13. Usage: Optional. Repeating (0..M).",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:signatureReason.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:signatureReason.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "signatureReason"
    },
    {
      "id" : "Extension.extension:signatureReason.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-signature-reason"
      }
    },
    {
      "id" : "Extension.extension:representativeType",
      "path" : "Extension.extension",
      "sliceName" : "representativeType",
      "short" : "eOther.14 - Type Of Patient Representative",
      "comment" : "NEMSIS eOther.14. Usage: Optional. Populate when the signer is a patient representative.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:representativeType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:representativeType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "representativeType"
    },
    {
      "id" : "Extension.extension:representativeType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-patient-representative"
      }
    },
    {
      "id" : "Extension.extension:signatureStatus",
      "path" : "Extension.extension",
      "sliceName" : "signatureStatus",
      "short" : "eOther.15 - Signature Status",
      "comment" : "NEMSIS eOther.15. Usage: Optional. Signed, or the reason not signed.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:signatureStatus.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:signatureStatus.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "signatureStatus"
    },
    {
      "id" : "Extension.extension:signatureStatus.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-signature-status"
      }
    },
    {
      "id" : "Extension.extension:signatureFileName",
      "path" : "Extension.extension",
      "sliceName" : "signatureFileName",
      "short" : "eOther.16 - Signature File Name",
      "comment" : "NEMSIS eOther.16. Usage: Optional.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:signatureFileName.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:signatureFileName.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "signatureFileName"
    },
    {
      "id" : "Extension.extension:signatureFileName.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:signatureFileType",
      "path" : "Extension.extension",
      "sliceName" : "signatureFileType",
      "short" : "eOther.17 - Signature File Type",
      "comment" : "NEMSIS eOther.17. Usage: Optional. Free-text graphic/MIME type (NEMSIS GraphicType is a string). Align with Provenance.signature.sigFormat when possible.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:signatureFileType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:signatureFileType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "signatureFileType"
    },
    {
      "id" : "Extension.extension:signatureFileType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:signerName",
      "path" : "Extension.extension",
      "sliceName" : "signerName",
      "short" : "eOther.20/.21 - Signature Last/First Name",
      "comment" : "NEMSIS eOther.20 (Last) and eOther.21 (First). Usage: Optional. Name of the person who signed, as a HumanName.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:signerName.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:signerName.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "signerName"
    },
    {
      "id" : "Extension.extension:signerName.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "HumanName"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-signature-context"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
