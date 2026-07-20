# EMS Lab Result Type VS - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Lab Result Type VS**

## ValueSet: EMS Lab Result Type VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-lab-result-type | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:EMSLabResultTypeVS |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.2.81 | |

 
Type of lab result obtained (eLabs.03). 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "vs-ems-lab-result-type",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/ValueSet/vs-ems-lab-result-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.2.81"
  }],
  "version" : "0.2.0",
  "name" : "EMSLabResultTypeVS",
  "title" : "EMS Lab Result Type VS",
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
  "description" : "Type of lab result obtained (eLabs.03).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-labs",
      "concept" : [{
        "code" : "3403001",
        "display" : "Alanine Transaminase"
      },
      {
        "code" : "3403003",
        "display" : "Alcohol-Blood"
      },
      {
        "code" : "3403005",
        "display" : "Alcohol-Breath"
      },
      {
        "code" : "3403007",
        "display" : "Alkaline Phosphatase"
      },
      {
        "code" : "3403009",
        "display" : "Amylase"
      },
      {
        "code" : "3403013",
        "display" : "Aspartate Transaminase"
      },
      {
        "code" : "3403015",
        "display" : "B-Type Natriuretic Peptide (BNP)"
      },
      {
        "code" : "3403017",
        "display" : "Base Excess"
      },
      {
        "code" : "3403019",
        "display" : "Bilirubin-Direct"
      },
      {
        "code" : "3403021",
        "display" : "Bilirubin-Total"
      },
      {
        "code" : "3403023",
        "display" : "BUN"
      },
      {
        "code" : "3403025",
        "display" : "Calcium-Ionized"
      },
      {
        "code" : "3403027",
        "display" : "Calcium-Serum"
      },
      {
        "code" : "3403029",
        "display" : "Carbon Dioxide-Partial Pressure"
      },
      {
        "code" : "3403033",
        "display" : "Chloride"
      },
      {
        "code" : "3403035",
        "display" : "Creatine Kinase"
      },
      {
        "code" : "3403037",
        "display" : "Creatine Kinase-MB"
      },
      {
        "code" : "3403039",
        "display" : "Creatinine"
      },
      {
        "code" : "3403041",
        "display" : "Gamma Glutamyl Transpeptidase"
      },
      {
        "code" : "3403043",
        "display" : "Glucose"
      },
      {
        "code" : "3403045",
        "display" : "Hematocrit"
      },
      {
        "code" : "3403047",
        "display" : "Hemoglobin"
      },
      {
        "code" : "3403049",
        "display" : "Human Chorionic Gonadotropin-Serum"
      },
      {
        "code" : "3403051",
        "display" : "Human Chorionic Gonadotropin-Urine"
      },
      {
        "code" : "3403053",
        "display" : "International Normalized Ratio (INR)"
      },
      {
        "code" : "3403055",
        "display" : "Lactate Dehydrogenase"
      },
      {
        "code" : "3403057",
        "display" : "Lactate-Arterial"
      },
      {
        "code" : "3403059",
        "display" : "Lactate-Venous"
      },
      {
        "code" : "3403061",
        "display" : "Lipase"
      },
      {
        "code" : "3403063",
        "display" : "Magnesium"
      },
      {
        "code" : "3403065",
        "display" : "Oxygen-Partial Pressure"
      },
      {
        "code" : "3403067",
        "display" : "Partial Thromboplastin Time"
      },
      {
        "code" : "3403071",
        "display" : "pH-ABG"
      },
      {
        "code" : "3403073",
        "display" : "pH-Venous"
      },
      {
        "code" : "3403075",
        "display" : "Platelets"
      },
      {
        "code" : "3403077",
        "display" : "Potassium"
      },
      {
        "code" : "3403079",
        "display" : "Prothrombin Time"
      },
      {
        "code" : "3403081",
        "display" : "Red Blood Cells"
      },
      {
        "code" : "3403083",
        "display" : "Sodium"
      },
      {
        "code" : "3403085",
        "display" : "Troponin"
      },
      {
        "code" : "3403087",
        "display" : "White Blood Cells"
      },
      {
        "code" : "3403089",
        "display" : "Ammonia"
      },
      {
        "code" : "3403091",
        "display" : "Bicarbonate (HCO3)"
      },
      {
        "code" : "3403093",
        "display" : "Carboxyhemoglobin"
      },
      {
        "code" : "3403095",
        "display" : "CO2, Total (Bicarbonate)"
      },
      {
        "code" : "3403097",
        "display" : "CRP (C-Reactive Protein)"
      },
      {
        "code" : "3403099",
        "display" : "Dilantin"
      },
      {
        "code" : "3403101",
        "display" : "Leukocytes"
      },
      {
        "code" : "3403103",
        "display" : "Nitrates"
      },
      {
        "code" : "3403105",
        "display" : "Phenobarbital"
      },
      {
        "code" : "3403107",
        "display" : "Protein"
      },
      {
        "code" : "3403109",
        "display" : "Salicylate"
      },
      {
        "code" : "3403111",
        "display" : "Specific Gravity"
      },
      {
        "code" : "3403113",
        "display" : "Tylenol"
      },
      {
        "code" : "3403115",
        "display" : "ACT Celite (ACTc)"
      },
      {
        "code" : "3403117",
        "display" : "ACT Kaolin (ACTk)"
      },
      {
        "code" : "3403119",
        "display" : "Bands"
      },
      {
        "code" : "3403121",
        "display" : "Basophils"
      },
      {
        "code" : "3403125",
        "display" : "Eosinophils"
      },
      {
        "code" : "3403127",
        "display" : "Erythrocyte Count"
      },
      {
        "code" : "3403129",
        "display" : "Erythrocyte Morphology"
      },
      {
        "code" : "3403131",
        "display" : "Erythrocyte Sedimentation Rate"
      },
      {
        "code" : "3403133",
        "display" : "High-Sensitivity C-reactive Protein (hs-CRP)"
      },
      {
        "code" : "3403135",
        "display" : "Lymphocytes"
      },
      {
        "code" : "3403137",
        "display" : "Mean Corpuscular Hemoglobin (MCH)"
      },
      {
        "code" : "3403139",
        "display" : "Mean Corpuscular Hemoglobin Concentration (MCHC)"
      },
      {
        "code" : "3403141",
        "display" : "Mean Corpuscular Volume (MCV)"
      },
      {
        "code" : "3403143",
        "display" : "Monocytes"
      },
      {
        "code" : "3403145",
        "display" : "Myoglobin"
      },
      {
        "code" : "3403147",
        "display" : "Neutrophils"
      },
      {
        "code" : "3403149",
        "display" : "Oxygen Saturation (SaO2)"
      },
      {
        "code" : "3403151",
        "display" : "Oxygen Volume/Content (SVO2)"
      },
      {
        "code" : "3403153",
        "display" : "Phosphorus (PO4)"
      },
      {
        "code" : "3403155",
        "display" : "Prothromblin test time (PT/INR)"
      },
      {
        "code" : "3403157",
        "display" : "Red Cell Distribution Width (RDW)"
      },
      {
        "code" : "3403159",
        "display" : "Reticulocyte Count"
      },
      {
        "code" : "3403161",
        "display" : "Troponin T (cTnT)"
      }]
    }]
  }
}

```
