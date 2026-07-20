# EMS AgencyContactType VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS AgencyContactType VS**

## ValueSet: EMS AgencyContactType VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-contact-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSAgencyContactTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.146 | |

 
The role/type of the agency contact person (dContact.01). 

 **References** 

* [EMS Organization](StructureDefinition-ems-organization.md)

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
  "id" : "vs-ems-agency-contact-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-agency-contact-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.146"
  }],
  "version" : "0.2.0",
  "name" : "EMSAgencyContactTypeVS",
  "title" : "EMS AgencyContactType VS",
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
  "description" : "The role/type of the agency contact person (dContact.01).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-demographics",
      "concept" : [{
        "code" : "1101001",
        "display" : "Administrative Assistant"
      },
      {
        "code" : "1101003",
        "display" : "EMS Agency Director/Chief/Lead Administrator/CEO"
      },
      {
        "code" : "1101005",
        "display" : "EMS Assistant Agency Director/Chief/Administrator/CEO"
      },
      {
        "code" : "1101007",
        "display" : "EMS Assistant Medical Director"
      },
      {
        "code" : "1101009",
        "display" : "EMS IT/Data Specialist"
      },
      {
        "code" : "1101011",
        "display" : "EMS Medical Director"
      },
      {
        "code" : "1101013",
        "display" : "EMS Quality/Performance Improvement Specialist"
      },
      {
        "code" : "1101015",
        "display" : "EMS Training/Education Specialist"
      },
      {
        "code" : "1101017",
        "display" : "Other"
      }]
    }]
  }
}

```
