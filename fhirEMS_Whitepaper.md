# **The Case for a FHIR-Based Standard in United States Emergency Medical Services**

## **Executive Summary**

The United States Emergency Medical Services (EMS) system currently relies on the National Emergency Medical Services Information System (NEMSIS) for data collection and reporting. While NEMSIS has been instrumental in creating a national repository for pre-hospital care, its architectural foundation—built on static XML schemas—has created a "data silo." As the rest of the healthcare ecosystem transitions to real-time, API-driven interoperability via HL7 FHIR (Fast Healthcare Interoperability Resources), EMS remains decoupled from the clinical continuum.  
This paper argues for the transition of US EMS data standards to FHIR. By adopting a FHIR-based standard, similar to the Swiss EMS Implementation Guide (CH EMS), the US can maintain its robust registry requirements while enabling real-time clinical integration, improving patient outcomes, and preparing for AI-driven decision support.

## ---

**1\. The Interoperability Gap: Registry vs. Clinical Care**

The fundamental limitation of NEMSIS is its design intent. It was built as a **reporting registry** to answer administrative and population health questions. It was not designed as a **clinical exchange protocol**.

* **Static vs. Liquid Data:** NEMSIS data is typically batch-uploaded to state and federal repositories. In contrast, FHIR allows for "liquid data" that flows between providers via RESTful APIs.  
* **Semantic Isolation:** NEMSIS often utilizes internal codes that require complex mapping to be understood by hospital Electronic Health Records (EHRs). FHIR mandates the use of global standards like SNOMED CT and LOINC.  
* **The "Dead-End" Document:** Current EMS handoffs often consist of a printed PDF or a faxed summary. A FHIR-based exchange allows the EMS record to become a native part of the hospital's clinical data stream.

## ---

**2\. Maintaining Registry Integrity: FHIR as a NEMSIS Successor**

A primary concern regarding a move to FHIR is the potential loss of the granular data required for the NEMSIS national database. However, the FHIR specification is modular and extensible, meaning it can capture every element currently defined in NEMSIS v3.5 through specialized **Profiles** and **Extensions**.

### **Example NEMSIS-to-FHIR Mappings**

| NEMSIS Element | NEMSIS Description | FHIR Resource | Coding/System |
| :---- | :---- | :---- | :---- |
| **eMedications.03** | Medication Administered | MedicationAdministration | RxNorm / SNOMED CT |
| **eVitals.10** | Heart Rate | Observation | LOINC 8867-4 |
| **eProcedures.03** | Procedure Performed | Procedure | SNOMED CT |
| **eTimes.03** | Unit Arrived on Scene | Encounter.location.period.start | ISO 8601 Timestamp |
| **eHistory.08** | Medical History | Condition | ICD-10-CM / SNOMED CT |
| **ePatient.13** | Gender | Patient.gender | HL7 AdministrativeGender |

By mapping NEMSIS elements to FHIR Resources, the registry use case is satisfied via a "Resource Bundle." Instead of a flat XML file, the EMS agency submits a FHIR Bundle containing all resources related to the encounter.

## ---

**3\. Global Benchmarks: The Swiss EMS IG (CH EMS)**

Switzerland provides a successful roadmap for this transition. The **CH EMS Implementation Guide** is a FHIR-native standard designed for the digital transfer of emergency logs.

* **Standardized Handover:** Using the FHIR Composition resource, Swiss EMS agencies can "push" a machine-readable summary directly into hospital systems.  
* **Reduced Redundancy:** Because the Swiss standard is built on the same FHIR "Core" as the rest of their healthcare system, data entered by a paramedic automatically populates relevant fields in the hospital’s EHR, reducing manual entry and errors.

## ---

**4\. Unlocking the Future: AI and Patient Engagement**

Transitioning to FHIR is a prerequisite for modernizing EMS through advanced technology.

* **Real-Time AI Decision Support:** AI models require structured, real-time data. FHIR APIs enable platforms like **Corti** to analyze dispatch audio and field vitals simultaneously to identify critical conditions like cardiac arrest or stroke with higher precision.  
* **Predictive Triage:** Research into **LLM-based triage** (e.g., URGENTIAPARSE) demonstrates that standardized clinical data can predict hospital admission needs with high accuracy (F1-score of 0.900), allowing hospitals to clear beds before the ambulance arrives.  
* **Citizen Integration:** FHIR-based apps allow bystanders to stream data (video, vitals) directly to dispatch. This data can be instantly attached to a FHIR Encounter record, providing the responding crew with a "pre-arrival" clinical picture.

## ---

**5\. Strategic Recommendations**

To align US EMS with the broader healthcare landscape, the following steps are recommended:

1. **Develop a US EMS FHIR Implementation Guide:** Create a national profile that aligns NEMSIS requirements with US Core and Da Vinci Project standards.  
2. **Incentivize Vendor Adoption:** Encourage ePCR (Electronic Patient Care Report) vendors to implement FHIR APIs for data submission and hospital exchange.  
3. **Bridge the Semantic Gap:** Move toward a primary reliance on SNOMED CT and LOINC for all pre-hospital clinical findings.

## **Conclusion**

The transition from NEMSIS XML to HL7 FHIR is not merely a technical upgrade; it is a clinical necessity. By adopting FHIR, the US EMS system can move beyond retrospective reporting and become a fully integrated partner in the healthcare continuum, ensuring that life-saving data is available when and where it is needed most.