# NEMSIS eLabs Code System - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS eLabs Code System**

## CodeSystem: NEMSIS eLabs Code System 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-labs | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISLabs |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.7 | |

 
Enumeration codes from the NEMSIS 3.5.1 eLabs section covering lab result types and imaging study types. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSImagingStudyTypeVS](ValueSet-vs-ems-imaging-study-type.md)
* [EMSLabResultTypeVS](ValueSet-vs-ems-lab-result-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-labs",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-labs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.7"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISLabs",
  "title" : "NEMSIS eLabs Code System",
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
  "description" : "Enumeration codes from the NEMSIS 3.5.1 eLabs section covering lab result types and imaging study types.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 85,
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
    "code" : "3403123",
    "display" : "Creatine Phosphokinase (CK) (DEPRECATED)"
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
  },
  {
    "code" : "3405001",
    "display" : "Computed Tomography (CT) Scan"
  },
  {
    "code" : "3405003",
    "display" : "Magnetic Resonance Imaging (MRI)"
  },
  {
    "code" : "3405005",
    "display" : "Other"
  },
  {
    "code" : "3405007",
    "display" : "Positron Emission Tomography (PET) Scan"
  },
  {
    "code" : "3405009",
    "display" : "Ultrasound"
  },
  {
    "code" : "3405011",
    "display" : "X-ray"
  },
  {
    "code" : "3405013",
    "display" : "Angiography"
  }]
}

```
