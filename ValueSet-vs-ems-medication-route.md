# EMS Medication Administered Route - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Medication Administered Route**

## ValueSet: EMS Medication Administered Route 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medication-route | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSMedicationRouteVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.87 | |

 
NEMSIS eMedications.04 - The route by which the medication was administered. 

 **References** 

* [EMS Medication Administration](StructureDefinition-ems-medicationadministration.md)
* [EMS Medication Statement — Home Medications](StructureDefinition-ems-medicationstatement.md)

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
  "id" : "vs-ems-medication-route",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-medication-route",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.87"
  }],
  "version" : "0.2.0",
  "name" : "EMSMedicationRouteVS",
  "title" : "EMS Medication Administered Route",
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
  "description" : "NEMSIS eMedications.04 - The route by which the medication was administered.",
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
        "code" : "9927001",
        "display" : "Blow-By"
      },
      {
        "code" : "9927003",
        "display" : "Buccal"
      },
      {
        "code" : "9927005",
        "display" : "Endotracheal Tube (ET)"
      },
      {
        "code" : "9927007",
        "display" : "Gastrostomy Tube"
      },
      {
        "code" : "9927009",
        "display" : "Inhalation"
      },
      {
        "code" : "9927011",
        "display" : "Intraarterial"
      },
      {
        "code" : "9927013",
        "display" : "Intradermal"
      },
      {
        "code" : "9927015",
        "display" : "Intramuscular (IM)"
      },
      {
        "code" : "9927017",
        "display" : "Intranasal"
      },
      {
        "code" : "9927019",
        "display" : "Intraocular"
      },
      {
        "code" : "9927021",
        "display" : "Intraosseous (IO)"
      },
      {
        "code" : "9927023",
        "display" : "Intravenous (IV)"
      },
      {
        "code" : "9927025",
        "display" : "Nasal Cannula"
      },
      {
        "code" : "9927027",
        "display" : "Nasogastric"
      },
      {
        "code" : "9927029",
        "display" : "Nasotracheal Tube"
      },
      {
        "code" : "9927031",
        "display" : "Non-Rebreather Mask"
      },
      {
        "code" : "9927033",
        "display" : "Ophthalmic"
      },
      {
        "code" : "9927035",
        "display" : "Oral"
      },
      {
        "code" : "9927037",
        "display" : "Other/miscellaneous"
      },
      {
        "code" : "9927039",
        "display" : "Otic"
      },
      {
        "code" : "9927041",
        "display" : "Re-breather mask"
      },
      {
        "code" : "9927043",
        "display" : "Rectal"
      },
      {
        "code" : "9927045",
        "display" : "Subcutaneous"
      },
      {
        "code" : "9927047",
        "display" : "Sublingual"
      },
      {
        "code" : "9927049",
        "display" : "Topical"
      },
      {
        "code" : "9927051",
        "display" : "Tracheostomy"
      },
      {
        "code" : "9927053",
        "display" : "Transdermal"
      },
      {
        "code" : "9927055",
        "display" : "Urethral"
      },
      {
        "code" : "9927057",
        "display" : "Ventimask"
      },
      {
        "code" : "9927059",
        "display" : "Wound"
      },
      {
        "code" : "9927061",
        "display" : "Portacath"
      },
      {
        "code" : "9927063",
        "display" : "Auto Injector"
      },
      {
        "code" : "9927065",
        "display" : "BVM"
      },
      {
        "code" : "9927067",
        "display" : "CPAP"
      },
      {
        "code" : "9927069",
        "display" : "IV Pump"
      },
      {
        "code" : "9927071",
        "display" : "Nebulizer"
      },
      {
        "code" : "9927073",
        "display" : "Umbilical Artery Catheter"
      },
      {
        "code" : "9927075",
        "display" : "Umbilical Venous Catheter"
      }]
    }]
  }
}

```
