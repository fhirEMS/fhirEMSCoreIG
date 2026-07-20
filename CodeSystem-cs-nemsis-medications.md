# NEMSIS Medications and Procedures Codes - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEMSIS Medications and Procedures Codes**

## CodeSystem: NEMSIS Medications and Procedures Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications | *Version*:0.2.0 |
| Active as of 2026-07-19 | *Computable Name*:NEMSISMedications |
| *Other Identifiers:*OID:2.25.219926138944530828037824748808947630693.1.8 | |

 
Enumeration codes for the NEMSIS eMedications and eProcedures sections. Covers administration routes, dosage units, complications, vascular access locations, airway techniques, clinical response, authorization types, caregiver levels, and Yes/No values shared across both sections. NEMSIS 3.5.1.251001CP2. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EMSAirwayTechniqueVS](ValueSet-vs-ems-airway-technique.md)
* [EMSAuthorizationTypeVS](ValueSet-vs-ems-authorization-type.md)
* [EMSCaregiverLevelVS](ValueSet-vs-ems-caregiver-level.md)
* [EMSClinicalResponseVS](ValueSet-vs-ems-clinical-response.md)
* [EMSMedicationComplicationVS](ValueSet-vs-ems-medication-complication.md)
* [EMSMedicationDosageUnitsVS](ValueSet-vs-ems-medication-dosage-units.md)
* [EMSMedicationRouteVS](ValueSet-vs-ems-medication-route.md)
* [EMSProcedureComplicationVS](ValueSet-vs-ems-procedure-complication.md)
* [EMSVascularAccessLocationVS](ValueSet-vs-ems-vascular-access-location.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-nemsis-medications",
  "url" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-medications",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.219926138944530828037824748808947630693.1.8"
  }],
  "version" : "0.2.0",
  "name" : "NEMSISMedications",
  "title" : "NEMSIS Medications and Procedures Codes",
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
  "description" : "Enumeration codes for the NEMSIS eMedications and eProcedures sections. Covers administration routes, dosage units, complications, vascular access locations, airway techniques, clinical response, authorization types, caregiver levels, and Yes/No values shared across both sections. NEMSIS 3.5.1.251001CP2.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 188,
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
  },
  {
    "code" : "9916001",
    "display" : "Improved"
  },
  {
    "code" : "9916003",
    "display" : "Unchanged"
  },
  {
    "code" : "9916005",
    "display" : "Worse"
  },
  {
    "code" : "9918001",
    "display" : "On-Line (Remote Verbal Order)"
  },
  {
    "code" : "9918003",
    "display" : "On-Scene"
  },
  {
    "code" : "9918005",
    "display" : "Protocol (Standing Order)"
  },
  {
    "code" : "9918007",
    "display" : "Written Orders (Patient Specific)"
  },
  {
    "code" : "9923001",
    "display" : "No"
  },
  {
    "code" : "9923003",
    "display" : "Yes"
  },
  {
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
  },
  {
    "code" : "3706001",
    "display" : "Grams (gms)"
  },
  {
    "code" : "3706003",
    "display" : "Inches (in)"
  },
  {
    "code" : "3706005",
    "display" : "International Units (IU)"
  },
  {
    "code" : "3706007",
    "display" : "Keep Vein Open (kvo)"
  },
  {
    "code" : "3706009",
    "display" : "Liters (l)"
  },
  {
    "code" : "3706013",
    "display" : "Metered Dose (MDI)"
  },
  {
    "code" : "3706015",
    "display" : "Micrograms (mcg)"
  },
  {
    "code" : "3706017",
    "display" : "Micrograms per Kilogram per Minute (mcg/kg/min)"
  },
  {
    "code" : "3706019",
    "display" : "Milliequivalents (mEq)"
  },
  {
    "code" : "3706021",
    "display" : "Milligrams (mg)"
  },
  {
    "code" : "3706023",
    "display" : "Milligrams per Kilogram Per Minute (mg/kg/min)"
  },
  {
    "code" : "3706025",
    "display" : "Milliliters (ml)"
  },
  {
    "code" : "3706027",
    "display" : "Milliliters per Hour (ml/hr)"
  },
  {
    "code" : "3706029",
    "display" : "Other"
  },
  {
    "code" : "3706031",
    "display" : "Centimeters (cm)"
  },
  {
    "code" : "3706033",
    "display" : "Drops (gtts)"
  },
  {
    "code" : "3706035",
    "display" : "Liters Per Minute (LPM [gas])"
  },
  {
    "code" : "3706037",
    "display" : "Micrograms per Minute (mcg/min)"
  },
  {
    "code" : "3706039",
    "display" : "Milligrams per Kilogram (mg/kg)"
  },
  {
    "code" : "3706041",
    "display" : "Milligrams per Minute (mg/min)"
  },
  {
    "code" : "3706043",
    "display" : "Puffs"
  },
  {
    "code" : "3706045",
    "display" : "Units per Hour (units/hr)"
  },
  {
    "code" : "3706047",
    "display" : "Micrograms per Kilogram (mcg/kg)"
  },
  {
    "code" : "3706049",
    "display" : "Units"
  },
  {
    "code" : "3706051",
    "display" : "Units per Kilogram per Hour (units/kg/hr)"
  },
  {
    "code" : "3706053",
    "display" : "Units per Kilogram (units/kg)"
  },
  {
    "code" : "3706055",
    "display" : "Milligrams per Hour (mg/hr)"
  },
  {
    "code" : "3708001",
    "display" : "Altered Mental Status"
  },
  {
    "code" : "3708003",
    "display" : "Apnea"
  },
  {
    "code" : "3708005",
    "display" : "Bleeding"
  },
  {
    "code" : "3708007",
    "display" : "Bradycardia"
  },
  {
    "code" : "3708009",
    "display" : "Bradypnea"
  },
  {
    "code" : "3708011",
    "display" : "Diarrhea"
  },
  {
    "code" : "3708013",
    "display" : "Extravasation"
  },
  {
    "code" : "3708015",
    "display" : "Hypertension"
  },
  {
    "code" : "3708017",
    "display" : "Hyperthermia"
  },
  {
    "code" : "3708019",
    "display" : "Hypotension"
  },
  {
    "code" : "3708021",
    "display" : "Hypothermia"
  },
  {
    "code" : "3708023",
    "display" : "Hypoxia"
  },
  {
    "code" : "3708025",
    "display" : "Injury"
  },
  {
    "code" : "3708029",
    "display" : "Nausea"
  },
  {
    "code" : "3708031",
    "display" : "None"
  },
  {
    "code" : "3708033",
    "display" : "Other"
  },
  {
    "code" : "3708035",
    "display" : "Respiratory Distress"
  },
  {
    "code" : "3708037",
    "display" : "Tachycardia"
  },
  {
    "code" : "3708039",
    "display" : "Tachypnea"
  },
  {
    "code" : "3708041",
    "display" : "Vomiting"
  },
  {
    "code" : "3708043",
    "display" : "Itching"
  },
  {
    "code" : "3708045",
    "display" : "Urticaria"
  },
  {
    "code" : "3907001",
    "display" : "Altered Mental Status"
  },
  {
    "code" : "3907003",
    "display" : "Apnea"
  },
  {
    "code" : "3907005",
    "display" : "Bleeding"
  },
  {
    "code" : "3907007",
    "display" : "Bradypnea"
  },
  {
    "code" : "3907009",
    "display" : "Diarrhea"
  },
  {
    "code" : "3907011",
    "display" : "Esophageal Intubation-immediately"
  },
  {
    "code" : "3907013",
    "display" : "Esophageal Intubation-other"
  },
  {
    "code" : "3907015",
    "display" : "Extravasation"
  },
  {
    "code" : "3907017",
    "display" : "Hypertension"
  },
  {
    "code" : "3907019",
    "display" : "Hyperthermia"
  },
  {
    "code" : "3907021",
    "display" : "Hypotension"
  },
  {
    "code" : "3907023",
    "display" : "Hypothermia"
  },
  {
    "code" : "3907025",
    "display" : "Hypoxia"
  },
  {
    "code" : "3907027",
    "display" : "Injury"
  },
  {
    "code" : "3907031",
    "display" : "Nausea"
  },
  {
    "code" : "3907033",
    "display" : "None"
  },
  {
    "code" : "3907035",
    "display" : "Other"
  },
  {
    "code" : "3907039",
    "display" : "Respiratory Distress"
  },
  {
    "code" : "3907041",
    "display" : "Tachycardia"
  },
  {
    "code" : "3907043",
    "display" : "Tachypnea"
  },
  {
    "code" : "3907045",
    "display" : "Vomiting"
  },
  {
    "code" : "3907047",
    "display" : "Bradycardia"
  },
  {
    "code" : "3907049",
    "display" : "Itching"
  },
  {
    "code" : "3907051",
    "display" : "Urticaria"
  },
  {
    "code" : "3913001",
    "display" : "Antecubital-Left"
  },
  {
    "code" : "3913003",
    "display" : "Antecubital-Right"
  },
  {
    "code" : "3913005",
    "display" : "External Jugular-Left"
  },
  {
    "code" : "3913007",
    "display" : "External Jugular-Right"
  },
  {
    "code" : "3913009",
    "display" : "Femoral-Left IV"
  },
  {
    "code" : "3913011",
    "display" : "Femoral-Right IV"
  },
  {
    "code" : "3913013",
    "display" : "Foot-Right"
  },
  {
    "code" : "3913015",
    "display" : "Foot-Left"
  },
  {
    "code" : "3913017",
    "display" : "Forearm-Left"
  },
  {
    "code" : "3913019",
    "display" : "Forearm-Right"
  },
  {
    "code" : "3913021",
    "display" : "Hand-Left"
  },
  {
    "code" : "3913023",
    "display" : "Hand-Right"
  },
  {
    "code" : "3913025",
    "display" : "Internal Jugular-Left"
  },
  {
    "code" : "3913027",
    "display" : "Internal Jugular-Right"
  },
  {
    "code" : "3913029",
    "display" : "IO-Iliac Crest-Left"
  },
  {
    "code" : "3913031",
    "display" : "IO-Iliac Crest-Right"
  },
  {
    "code" : "3913033",
    "display" : "IO-Femoral-Left Distal"
  },
  {
    "code" : "3913035",
    "display" : "IO-Femoral-Right Distal"
  },
  {
    "code" : "3913037",
    "display" : "IO-Humeral-Left"
  },
  {
    "code" : "3913039",
    "display" : "IO-Humeral-Right"
  },
  {
    "code" : "3913041",
    "display" : "IO-Tibia-Left Distal"
  },
  {
    "code" : "3913043",
    "display" : "IO-Sternum"
  },
  {
    "code" : "3913045",
    "display" : "IO-Tibia-Right Distal"
  },
  {
    "code" : "3913047",
    "display" : "IO-Tibia-Left Proximal"
  },
  {
    "code" : "3913049",
    "display" : "IO-Tibia-Right Proximal"
  },
  {
    "code" : "3913051",
    "display" : "Lower Extremity-Left"
  },
  {
    "code" : "3913053",
    "display" : "Lower Extremity-Right"
  },
  {
    "code" : "3913055",
    "display" : "Other Peripheral"
  },
  {
    "code" : "3913057",
    "display" : "Other Central (PICC, Portacath, etc.)"
  },
  {
    "code" : "3913059",
    "display" : "Scalp"
  },
  {
    "code" : "3913061",
    "display" : "Subclavian-Left"
  },
  {
    "code" : "3913063",
    "display" : "Subclavian-Right"
  },
  {
    "code" : "3913065",
    "display" : "Umbilical"
  },
  {
    "code" : "3913067",
    "display" : "Venous Cutdown-Left Lower Extremity"
  },
  {
    "code" : "3913069",
    "display" : "Venous Cutdown-Right Lower Extremity"
  },
  {
    "code" : "3913071",
    "display" : "Upper Arm-Left"
  },
  {
    "code" : "3913073",
    "display" : "Upper Arm-Right"
  },
  {
    "code" : "3913075",
    "display" : "Radial-Left"
  },
  {
    "code" : "3913077",
    "display" : "Radial-Right"
  },
  {
    "code" : "3913079",
    "display" : "Wrist-Left"
  },
  {
    "code" : "3913081",
    "display" : "Wrist-Right"
  },
  {
    "code" : "3914001",
    "display" : "Blind Digital Technique"
  },
  {
    "code" : "3914003",
    "display" : "Cross Finger Technique"
  },
  {
    "code" : "3914005",
    "display" : "Direct Laryngoscopy"
  },
  {
    "code" : "3914007",
    "display" : "Fiberoptic Laryngoscopy"
  },
  {
    "code" : "3914009",
    "display" : "Indirect Laryngoscopy"
  },
  {
    "code" : "3914011",
    "display" : "Video Laryngoscopy"
  }]
}

```
