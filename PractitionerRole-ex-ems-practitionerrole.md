# Example EMS PractitionerRole — Paramedic Crew Member - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS PractitionerRole — Paramedic Crew Member**

## Example PractitionerRole: Example EMS PractitionerRole — Paramedic Crew Member

Profile: [EMS PractitionerRole](StructureDefinition-ems-practitionerrole.md)

**EMS Certification Level**: Paramedic

**identifier**: `http://example.org/ems/crew`/CR-2026-0042-1

**active**: true

**practitioner**: [Practitioner Maria J Ramirez ](Practitioner-ex-ems-practitioner.md)

**organization**: [Organization Riverside County EMS Agency](Organization-ex-ems-organization-agency.md)

**code**: Primary Patient Caregiver-At Scene

**telecom**: ph: 951-555-0142(Work)



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ex-ems-practitionerrole",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-practitionerrole"]
  },
  "extension" : [{
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-certification-level",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-personnel-level",
        "code" : "9925007",
        "display" : "Paramedic"
      }]
    }
  }],
  "identifier" : [{
    "system" : "http://example.org/ems/crew",
    "value" : "CR-2026-0042-1"
  }],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/ex-ems-practitioner"
  },
  "organization" : {
    "reference" : "Organization/ex-ems-organization-agency"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
      "code" : "2403011",
      "display" : "Primary Patient Caregiver-At Scene"
    }]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "951-555-0142",
    "use" : "work"
  }]
}

```
