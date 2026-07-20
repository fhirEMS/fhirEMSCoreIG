# EMS Coverage (Insurance) - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Coverage (Insurance)**

## Resource Profile: EMS Coverage (Insurance) 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-coverage | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSCoverage |

 
Represents insurance coverage information collected during an EMS response. Derived from FHIR R4 Coverage base resource (no US Core profile exists). Maps to NEMSIS ePayment insurance elements (ePayment.09–22, .57–60): insurance company identity, address, billing priority, policy and group IDs, insured person demographics, and payer type. 

**Usages:**

* Refer to this Profile: [EMS Ambulance Claim](StructureDefinition-ems-claim.md)
* Examples for this Profile: [Coverage/ex-ems-coverage](Coverage-ex-ems-coverage.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhirems.emscore|current/StructureDefinition/StructureDefinition-ems-coverage.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ems-coverage.csv), [Excel](StructureDefinition-ems-coverage.xlsx), [Schematron](StructureDefinition-ems-coverage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-coverage",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-coverage",
  "version" : "0.2.0",
  "name" : "EMSCoverage",
  "title" : "EMS Coverage (Insurance)",
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
  "description" : "Represents insurance coverage information collected during an EMS response. Derived from FHIR R4 Coverage base resource (no US Core profile exists). Maps to NEMSIS ePayment insurance elements (ePayment.09–22, .57–60): insurance company identity, address, billing priority, policy and group IDs, insured person demographics, and payer type.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "cdanetv4",
    "uri" : "http://www.cda-adc.ca/en/services/cdanet/",
    "name" : "Canadian Dental Association eclaims standard"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "cpha3pharm",
    "uri" : "http://www.pharmacists.ca/",
    "name" : "Canadian Pharmacy Associaiton eclaims standard"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Coverage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Coverage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Coverage",
      "path" : "Coverage"
    },
    {
      "id" : "Coverage.extension",
      "path" : "Coverage.extension",
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
      "id" : "Coverage.extension:payerType",
      "path" : "Coverage.extension",
      "sliceName" : "payerType",
      "short" : "ePayment.57 - Payer Type (X12 code)",
      "comment" : "NEMSIS ePayment.57. Usage: Optional. X12 payer type code.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-payer-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Coverage.status",
      "path" : "Coverage.status",
      "short" : "Coverage status — active during EMS response",
      "patternCode" : "active",
      "mustSupport" : true
    },
    {
      "id" : "Coverage.subscriber",
      "path" : "Coverage.subscriber",
      "short" : "ePayment.19–21 - Last/First/Middle Name of the Insured",
      "comment" : "NEMSIS ePayment.19/20/21. Usage: Optional. Reference to the insured person (Patient if self; RelatedPerson if other).",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Coverage.subscriberId",
      "path" : "Coverage.subscriberId",
      "short" : "ePayment.18 - Insurance Policy ID Number",
      "comment" : "NEMSIS ePayment.18. Usage: Optional. The insurance policy identification number.",
      "mustSupport" : true
    },
    {
      "id" : "Coverage.beneficiary",
      "path" : "Coverage.beneficiary",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Coverage.relationship",
      "path" : "Coverage.relationship",
      "short" : "ePayment.22 - Patient's Relationship to the Insured",
      "comment" : "NEMSIS ePayment.22. Usage: Optional.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-insured-relationship"
      }
    },
    {
      "id" : "Coverage.payor",
      "path" : "Coverage.payor",
      "short" : "ePayment.09/10 - Insurance Company ID and Name",
      "comment" : "NEMSIS ePayment.09 (ID) and ePayment.10 (Name). Usage: Optional. Reference to the insurance company Organization.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Coverage.class",
      "path" : "Coverage.class",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Coverage.class:group",
      "path" : "Coverage.class",
      "sliceName" : "group",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Coverage.class:group.type",
      "path" : "Coverage.class.type",
      "short" : "ePayment.17 / ePayment.58 - Insurance Group ID and Group Name",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
          "code" : "group"
        }]
      }
    },
    {
      "id" : "Coverage.class:group.value",
      "path" : "Coverage.class.value",
      "short" : "ePayment.17 - Insurance Group ID",
      "comment" : "NEMSIS ePayment.17. Usage: Optional.",
      "mustSupport" : true
    },
    {
      "id" : "Coverage.class:group.name",
      "path" : "Coverage.class.name",
      "short" : "ePayment.58 - Insurance Group Name",
      "comment" : "NEMSIS ePayment.58. Usage: Optional.",
      "mustSupport" : true
    },
    {
      "id" : "Coverage.class:plan",
      "path" : "Coverage.class",
      "sliceName" : "plan",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Coverage.class:plan.type",
      "path" : "Coverage.class.type",
      "short" : "Insurance plan identifier",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
          "code" : "plan"
        }]
      }
    },
    {
      "id" : "Coverage.class:plan.value",
      "path" : "Coverage.class.value",
      "mustSupport" : true
    },
    {
      "id" : "Coverage.order",
      "path" : "Coverage.order",
      "short" : "ePayment.11 - Insurance Company Billing Priority (1=Primary, 2=Secondary, 3=Tertiary)",
      "comment" : "NEMSIS ePayment.11. Usage: Optional. Maps Primary=1, Secondary=2, Tertiary=3, etc.",
      "mustSupport" : true
    }]
  }
}

```
