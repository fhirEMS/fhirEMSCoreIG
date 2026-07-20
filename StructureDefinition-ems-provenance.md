# EMS Provenance — PCR Signature - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Provenance — PCR Signature**

## Resource Profile: EMS Provenance — PCR Signature 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-provenance | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSProvenance |

 
Records a signature event on the EMS Patient Care Report (eOther.12–.21): who signed, in what role, for what reason, with what outcome. The FHIR Signature datatype carries the signature graphic (eOther.18 → signature.data) and time (eOther.19 → signature.when); NEMSIS signer/reason/status metadata is carried in ext-ems-signature-context. One Provenance per signature event. 

**Usages:**

* Examples for this Profile: [Provenance/ex-ems-provenance](Provenance-ex-ems-provenance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-provenance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-provenance.csv), [Excel](StructureDefinition-ems-provenance.xlsx), [Schematron](StructureDefinition-ems-provenance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-provenance",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-provenance",
  "version" : "0.2.0",
  "name" : "EMSProvenance",
  "title" : "EMS Provenance — PCR Signature",
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
  "description" : "Records a signature event on the EMS Patient Care Report (eOther.12–.21): who signed, in what role, for what reason, with what outcome. The FHIR Signature datatype carries the signature graphic (eOther.18 → signature.data) and time (eOther.19 → signature.when); NEMSIS signer/reason/status metadata is carried in ext-ems-signature-context. One Provenance per signature event.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "fhirauditevent",
    "uri" : "http://hl7.org/fhir/auditevent",
    "name" : "FHIR AuditEvent Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Provenance",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-provenance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Provenance",
      "path" : "Provenance"
    },
    {
      "id" : "Provenance.extension",
      "path" : "Provenance.extension",
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
      "id" : "Provenance.extension:signatureContext",
      "path" : "Provenance.extension",
      "sliceName" : "signatureContext",
      "short" : "eOther.12–.17, .20/.21 - NEMSIS signature metadata",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-signature-context"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Provenance.target",
      "path" : "Provenance.target",
      "short" : "The PCR (EMSComposition) or Encounter this signature applies to",
      "comment" : "Typically Reference(EMSComposition). US Core requires MS."
    },
    {
      "id" : "Provenance.recorded",
      "path" : "Provenance.recorded",
      "comment" : "When the provenance record was created; the signature time itself is signature.when (eOther.19)."
    },
    {
      "id" : "Provenance.agent",
      "path" : "Provenance.agent"
    },
    {
      "id" : "Provenance.agent.who",
      "path" : "Provenance.agent.who",
      "comment" : "The signer: EMSPractitioner (crew), Patient, or RelatedPerson (patient representative, eOther.14). The NEMSIS signer classification (eOther.12) is in extension[signatureContext].extension[signerType]."
    },
    {
      "id" : "Provenance.agent.onBehalfOf",
      "path" : "Provenance.agent.onBehalfOf",
      "comment" : "US Core provenance-1: required (reference the EMS agency Organization) whenever agent.who is a Practitioner."
    },
    {
      "id" : "Provenance.agent:ProvenanceAuthor",
      "path" : "Provenance.agent",
      "sliceName" : "ProvenanceAuthor"
    },
    {
      "id" : "Provenance.agent:ProvenanceAuthor.who",
      "path" : "Provenance.agent.who",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:ProvenanceAuthor.onBehalfOf",
      "path" : "Provenance.agent.onBehalfOf",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:ProvenanceTransmitter",
      "path" : "Provenance.agent",
      "sliceName" : "ProvenanceTransmitter"
    },
    {
      "id" : "Provenance.agent:ProvenanceTransmitter.who",
      "path" : "Provenance.agent.who",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:ProvenanceTransmitter.onBehalfOf",
      "path" : "Provenance.agent.onBehalfOf",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.signature",
      "path" : "Provenance.signature",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.signature.when",
      "path" : "Provenance.signature.when",
      "short" : "eOther.19 - Date/Time of Signature",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.signature.who",
      "path" : "Provenance.signature.who",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.signature.data",
      "path" : "Provenance.signature.data",
      "short" : "eOther.18 - Signature Graphic (base64)",
      "comment" : "NEMSIS eOther.18. Usage: Optional. The captured signature image; sigFormat should carry the MIME type (eOther.17).",
      "mustSupport" : true
    }]
  }
}

```
