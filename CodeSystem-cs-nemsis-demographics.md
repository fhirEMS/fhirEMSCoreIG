# NEMSIS DEM Demographic Code System - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS DEM Demographic Code System**

## CodeSystem: NEMSIS DEM Demographic Code System 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-demographics | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISDemographics |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.20 | |

 
Enumeration codes from the NEMSIS 3.5.1 DEM dataset sections dContact (agency contact type, medical director degree/board certification/compensation), dConfiguration (specialty service capability, EMD provision, patient monitoring capability), and dLocation (EMS location type). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSAgencyContactTypeVS](ValueSet-vs-ems-agency-contact-type.md)
* [EMSAgencyLocationTypeVS](ValueSet-vs-ems-agency-location-type.md)
* [EMSDirectorCompensationVS](ValueSet-vs-ems-director-compensation.md)
* [EMSEMDProvidedVS](ValueSet-vs-ems-emd-provided.md)
* [EMSMedicalDirectorBoardCertVS](ValueSet-vs-ems-medical-director-board-cert.md)
* [EMSMedicalDirectorDegreeVS](ValueSet-vs-ems-medical-director-degree.md)
* [EMSMonitoringCapabilityVS](ValueSet-vs-ems-monitoring-capability.md)
* [EMSSpecialtyServiceCapabilityVS](ValueSet-vs-ems-specialty-service-capability.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-demographics",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-demographics",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.20"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISDemographics",
  "title" : "NEMSIS DEM Demographic Code System",
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
  "description" : "Enumeration codes from the NEMSIS 3.5.1 DEM dataset sections dContact (agency contact type, medical director degree/board certification/compensation), dConfiguration (specialty service capability, EMD provision, patient monitoring capability), and dLocation (EMS location type).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 70,
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
  },
  {
    "code" : "1113001",
    "display" : "Doctor of Medicine"
  },
  {
    "code" : "1113003",
    "display" : "Doctor of Osteopathy"
  },
  {
    "code" : "1114001",
    "display" : "Allergy and Immunology"
  },
  {
    "code" : "1114003",
    "display" : "Anesthesiology"
  },
  {
    "code" : "1114005",
    "display" : "Colon and Rectal Surgery"
  },
  {
    "code" : "1114007",
    "display" : "Dermatology"
  },
  {
    "code" : "1114009",
    "display" : "Emergency Medicine"
  },
  {
    "code" : "1114011",
    "display" : "Family Medicine"
  },
  {
    "code" : "1114013",
    "display" : "Internal Medicine"
  },
  {
    "code" : "1114015",
    "display" : "Neurological Surgery"
  },
  {
    "code" : "1114017",
    "display" : "Neurology"
  },
  {
    "code" : "1114019",
    "display" : "None (Not Board Certified)"
  },
  {
    "code" : "1114021",
    "display" : "Obstetrics and Gynecology"
  },
  {
    "code" : "1114023",
    "display" : "Ophthalmology"
  },
  {
    "code" : "1114025",
    "display" : "Orthopedic Surgery"
  },
  {
    "code" : "1114027",
    "display" : "Otolaryngology"
  },
  {
    "code" : "1114029",
    "display" : "Pediatrics"
  },
  {
    "code" : "1114031",
    "display" : "Physical Medicine and Rehabilitation"
  },
  {
    "code" : "1114033",
    "display" : "Plastic Surgery"
  },
  {
    "code" : "1114035",
    "display" : "Psychiatry"
  },
  {
    "code" : "1114037",
    "display" : "Surgery"
  },
  {
    "code" : "1114039",
    "display" : "Thoracic Surgery"
  },
  {
    "code" : "1114041",
    "display" : "Urology"
  },
  {
    "code" : "1114043",
    "display" : "Vascular Surgery"
  },
  {
    "code" : "1115001",
    "display" : "Compensated"
  },
  {
    "code" : "1115003",
    "display" : "Non-Compensated"
  },
  {
    "code" : "1211001",
    "display" : "Air Rescue"
  },
  {
    "code" : "1211003",
    "display" : "CBRNE"
  },
  {
    "code" : "1211005",
    "display" : "Community Health Medicine"
  },
  {
    "code" : "1211007",
    "display" : "Disaster Medical Assistance Team (DMAT)"
  },
  {
    "code" : "1211009",
    "display" : "Disaster Mortuary (DMORT)"
  },
  {
    "code" : "1211011",
    "display" : "Dive Rescue"
  },
  {
    "code" : "1211013",
    "display" : "Farm Rescue"
  },
  {
    "code" : "1211015",
    "display" : "High Angle Rescue"
  },
  {
    "code" : "1211017",
    "display" : "Machinery Disentanglement"
  },
  {
    "code" : "1211019",
    "display" : "None"
  },
  {
    "code" : "1211021",
    "display" : "Ski / Snow Rescue"
  },
  {
    "code" : "1211023",
    "display" : "Tactical EMS"
  },
  {
    "code" : "1211025",
    "display" : "Trench / Confined Space Rescue"
  },
  {
    "code" : "1211027",
    "display" : "Urban Search and Rescue (USAR)"
  },
  {
    "code" : "1211029",
    "display" : "Vehicle Extrication"
  },
  {
    "code" : "1211031",
    "display" : "Veterinary Medical Assistance Team (VMAT)"
  },
  {
    "code" : "1211033",
    "display" : "Water or Ice Related Rescue (Incl Swift Water)"
  },
  {
    "code" : "1211035",
    "display" : "Wilderness Search and Rescue"
  },
  {
    "code" : "1213001",
    "display" : "No"
  },
  {
    "code" : "1213003",
    "display" : "Yes, 100% of the EMS Agency's Service Area"
  },
  {
    "code" : "1213005",
    "display" : "Yes, Less than 100% of the EMS Agency's Service Area"
  },
  {
    "code" : "1215001",
    "display" : "Capnography-Numeric"
  },
  {
    "code" : "1215003",
    "display" : "Capnography-Waveform"
  },
  {
    "code" : "1215005",
    "display" : "ECG-12 Lead or Greater"
  },
  {
    "code" : "1215007",
    "display" : "ECG-Less than 12 Lead (Cardiac Monitor)"
  },
  {
    "code" : "1215009",
    "display" : "Oximetry-Carbon Monoxide"
  },
  {
    "code" : "1215011",
    "display" : "Oximetry-Oxygen"
  },
  {
    "code" : "1215013",
    "display" : "Pressure Measurement-Invasive (Arterial, CVP, Swan, etc.)"
  },
  {
    "code" : "1215015",
    "display" : "Pressure Measurement-Non-Invasive (Blood Pressure, etc.)"
  },
  {
    "code" : "1215017",
    "display" : "Ventilator-Transport"
  },
  {
    "code" : "1215019",
    "display" : "Vital Sign Monitoring"
  },
  {
    "code" : "1301001",
    "display" : "EMS Agency Headquarters"
  },
  {
    "code" : "1301003",
    "display" : "EMS Staging Area"
  },
  {
    "code" : "1301005",
    "display" : "EMS Station"
  },
  {
    "code" : "1301007",
    "display" : "Other"
  }]
}

```
