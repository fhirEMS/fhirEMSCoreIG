# EMS Document Reference - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Document Reference**

## Resource Profile: EMS Document Reference 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-documentreference | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSDocumentReference |

 
An external electronic document or file attachment associated with the EMS Patient Care Report (eOther.09–.11, .22): diagnostic images, ECG/lab results, DNR forms, refusal sheets, and similar. The NEMSIS document type (4509xxx) is carried in ext-ems-document-type; DocumentReference.type keeps the US Core LOINC binding. 

**Usages:**

* Examples for this Profile: [DocumentReference/ex-ems-documentreference](DocumentReference-ex-ems-documentreference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-documentreference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-documentreference.csv), [Excel](StructureDefinition-ems-documentreference.xlsx), [Schematron](StructureDefinition-ems-documentreference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-documentreference",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-documentreference",
  "version" : "0.2.0",
  "name" : "EMSDocumentReference",
  "title" : "EMS Document Reference",
  "status" : "active",
  "experimental" : false,
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
  "description" : "An external electronic document or file attachment associated with the EMS Patient Care Report (eOther.09–.11, .22): diagnostic images, ECG/lab results, DNR forms, refusal sheets, and similar. The NEMSIS document type (4509xxx) is carried in ext-ems-document-type; DocumentReference.type keeps the US Core LOINC binding.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.extension",
      "path" : "DocumentReference.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "DocumentReference.extension:nemsisDocumentType",
      "path" : "DocumentReference.extension",
      "sliceName" : "nemsisDocumentType",
      "short" : "eOther.09 - External Electronic Document Type (NEMSIS 4509xxx)",
      "comment" : "US Core requires a LOINC code in DocumentReference.type; the NEMSIS code goes here. Use type.text or LOINC 67796-3 (EMS patient care report) when no specific LOINC equivalent exists.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-document-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "comment" : "US Core-required LOINC binding. Map from eOther.09 where a LOINC equivalent exists (e.g., ECG results → 11524-6); otherwise use the DataAbsentReason-coded UNK pattern permitted by US Core."
    },
    {
      "id" : "DocumentReference.category:uscore",
      "path" : "DocumentReference.category",
      "sliceName" : "uscore",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }]
    },
    {
      "id" : "DocumentReference.author",
      "path" : "DocumentReference.author",
      "comment" : "The crew member or agency attaching the document."
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "short" : "eOther.10 - File Attachment Type",
      "comment" : "NEMSIS eOther.10 (GraphicType, free text). Use a MIME type (e.g., image/jpeg, application/pdf)."
    },
    {
      "id" : "DocumentReference.content.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "short" : "eOther.11 - File Attachment Image (inline)",
      "comment" : "NEMSIS eOther.11. Base64 content; alternatively reference external content via attachment.url."
    },
    {
      "id" : "DocumentReference.content.attachment.title",
      "path" : "DocumentReference.content.attachment.title",
      "short" : "eOther.22 - File Attachment Name",
      "comment" : "NEMSIS eOther.22. Usage: Optional.",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.encounter",
      "path" : "DocumentReference.context.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-encounter"]
      }]
    }]
  }
}

```
