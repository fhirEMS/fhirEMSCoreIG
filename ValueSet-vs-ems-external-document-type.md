# EMS ExternalDocumentType VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS ExternalDocumentType VS**

## ValueSet: EMS ExternalDocumentType VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-external-document-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSExternalDocumentTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.141 | |

 
Type of external electronic document associated with the PCR (eOther.09). 

 **References** 

* [EMS External Document Type](StructureDefinition-ext-ems-document-type.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-ems-external-document-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-external-document-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.141"
  }],
  "version" : "0.2.0",
  "name" : "EMSExternalDocumentTypeVS",
  "title" : "EMS ExternalDocumentType VS",
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
  "description" : "Type of external electronic document associated with the PCR (eOther.09).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-other",
      "concept" : [{
        "code" : "4509001",
        "display" : "Other Audio Recording"
      },
      {
        "code" : "4509003",
        "display" : "Billing Information"
      },
      {
        "code" : "4509005",
        "display" : "Diagnostic Image (CT, X-ray, US, etc.)"
      },
      {
        "code" : "4509006",
        "display" : "DNR"
      },
      {
        "code" : "4509008",
        "display" : "Living Will"
      },
      {
        "code" : "4509009",
        "display" : "ECG/Lab Results"
      },
      {
        "code" : "4509011",
        "display" : "Guardianship/Power of Attorney"
      },
      {
        "code" : "4509013",
        "display" : "Other Healthcare Record"
      },
      {
        "code" : "4509015",
        "display" : "Other"
      },
      {
        "code" : "4509017",
        "display" : "Patient Identification"
      },
      {
        "code" : "4509019",
        "display" : "Patient Refusal Sheet"
      },
      {
        "code" : "4509021",
        "display" : "Other Picture/Graphic"
      },
      {
        "code" : "4509025",
        "display" : "Other Video/Movie"
      },
      {
        "code" : "4509027",
        "display" : "ePCR"
      }]
    }]
  }
}

```
