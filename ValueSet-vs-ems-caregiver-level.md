# EMS Caregiver Level - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Caregiver Level**

## ValueSet: EMS Caregiver Level 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-caregiver-level | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSCaregiverLevelVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.31 | |

 
NEMSIS eMedications.10 / eProcedures.10 - Level/role of the healthcare professional who administered the medication or performed the procedure. 

 **References** 

* [EMS Medication Administration](StructureDefinition-ems-medicationadministration.md)
* [EMS Procedure](StructureDefinition-ems-procedure.md)

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
  "id" : "vs-ems-caregiver-level",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-caregiver-level",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.31"
  }],
  "version" : "0.2.0",
  "name" : "EMSCaregiverLevelVS",
  "title" : "EMS Caregiver Level",
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
  "description" : "NEMSIS eMedications.10 / eProcedures.10 - Level/role of the healthcare professional who administered the medication or performed the procedure.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications",
      "concept" : [{
        "code" : "9905001",
        "display" : "Advanced Emergency Medical Technician (AEMT)"
      },
      {
        "code" : "9905002",
        "display" : "Emergency Medical Technician - Intermediate"
      },
      {
        "code" : "9905003",
        "display" : "Emergency Medical Responder (EMR)"
      },
      {
        "code" : "9905005",
        "display" : "Emergency Medical Technician (EMT)"
      },
      {
        "code" : "9905007",
        "display" : "Paramedic"
      },
      {
        "code" : "9905019",
        "display" : "Other Healthcare Professional"
      },
      {
        "code" : "9905021",
        "display" : "Other Non-Healthcare Professional"
      },
      {
        "code" : "9905025",
        "display" : "Physician"
      },
      {
        "code" : "9905027",
        "display" : "Respiratory Therapist"
      },
      {
        "code" : "9905029",
        "display" : "Student"
      },
      {
        "code" : "9905031",
        "display" : "Critical Care Paramedic"
      },
      {
        "code" : "9905033",
        "display" : "Community Paramedicine"
      },
      {
        "code" : "9905035",
        "display" : "Nurse Practitioner"
      },
      {
        "code" : "9905037",
        "display" : "Physician Assistant"
      },
      {
        "code" : "9905039",
        "display" : "Licensed Practical Nurse (LPN)"
      },
      {
        "code" : "9905041",
        "display" : "Registered Nurse"
      },
      {
        "code" : "9905043",
        "display" : "Patient"
      },
      {
        "code" : "9905045",
        "display" : "Lay Person"
      },
      {
        "code" : "9905047",
        "display" : "Law Enforcement"
      },
      {
        "code" : "9905049",
        "display" : "Family Member"
      },
      {
        "code" : "9905051",
        "display" : "Fire Personnel (non EMS)"
      }]
    }]
  }
}

```
