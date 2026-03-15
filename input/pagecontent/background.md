# Background

## Emergency Medical Services in the United States

Emergency Medical Services (EMS) agencies respond to approximately 40 million calls per year in the United States, providing pre-hospital emergency care and medical transport. Each response generates a **Patient Care Report (PCR)** — a structured clinical record documenting the patient encounter from dispatch through transfer of care.

EMS PCR data is used for:
- **Clinical care continuity**: Communicating patient history and treatments to receiving emergency departments
- **Quality improvement**: Measuring response time compliance, treatment adherence, and clinical outcomes
- **Public health surveillance**: Tracking opioid overdoses, cardiac arrest rates, trauma incidence
- **Billing and reimbursement**: CMS ambulance claims (HCPCS codes A0425–A0999)
- **Research**: Outcomes studies, protocol effectiveness, system performance analysis

## The NEMSIS Standard

The **National EMS Information System (NEMSIS)** is the national data standard for EMS. Managed by the **NEMSIS Technical Assistance Center (TAC)** at the University of Utah, NEMSIS defines the data elements, code sets, and schema that EMS agencies use to document patient care.

### NEMSIS Version History

| Version | Status |
|---------|--------|
| NEMSIS 2.x | Retired |
| NEMSIS 3.3.x | Retired |
| NEMSIS 3.4.x | Legacy |
| NEMSIS 3.5.0 | Current base |
| **NEMSIS 3.5.1.251001CP2** | **This IG** (October 2025 CP2) |

### NEMSIS Data Architecture

NEMSIS organizes data into three datasets:

| Dataset | Purpose | Elements |
|---------|---------|---------|
| **EMSDataSet** | EMS Patient Care Report | 453 elements across 24 sections |
| **DEMDataSet** | Agency Demographics | 157 elements |
| **StateDataSet** | State Configuration | 47 elements |

All 50 states collect NEMSIS-compliant PCR data. EMS agencies submit to state repositories, which submit to the **National EMS Database (NEMSID)** at NHTSA. As of 2024, NEMSID contains data on over 150 million EMS activations.

## The Interoperability Challenge

NEMSIS uses an **XML-based schema** incompatible with modern healthcare interoperability standards:

- **FHIR-based HIE systems** (CommonWell, Carequality, state HIEs)
- **EHR APIs** (USCDI, Da Vinci, SMART on FHIR)
- **CMS interoperability rules** (CMS-9115-F, Patient Access API)
- **HL7 C-CDA** documents used in transitions of care

This gap means that EMS clinical data — highly relevant to emergency department care and hospital admissions — is largely siloed from the broader healthcare ecosystem.

## This Implementation Guide

The **fhirEMSCore IG** bridges NEMSIS 3.5.1 and FHIR R4, enabling:

1. **EMS PCR → FHIR**: Transform NEMSIS XML PCRs into FHIR Bundles for HIE submission
2. **EMS → ED handoff**: FHIR-based transfer of pre-hospital data to receiving facilities
3. **Population health**: Aggregate EMS data in FHIR-compliant analytics platforms
4. **Bidirectional exchange**: Future roadmap for FHIR → EMS data flows

The IG is grounded in real-world EMS workflows and aligns with both the US Core 6.1.0 profiles and the normative NEMSIS 3.5.1 XSD schemas.
