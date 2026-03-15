// ============================================================
// ValueSets: EMS Outcome (eOutcome)
// NEMSIS 3.5.1.251001CP2
// ============================================================

// eOutcome.01/.02 — ED / Hospital Discharge Disposition
// Uses UB-04 Patient Discharge Status codes (NUBC standard)
ValueSet: EMSDischargeDispositionVS
Id: vs-ems-discharge-disposition
Title: "EMS Discharge Disposition VS"
Description: "UB-04 patient discharge status codes used for ED disposition (eOutcome.01) and hospital disposition (eOutcome.02)."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-discharge-disposition"
* ^status = #active
* $nubc-discharge#01 "Discharged to home or self care (routine discharge)"
* $nubc-discharge#02 "Discharged/transferred to another short term general hospital for inpatient care"
* $nubc-discharge#03 "Discharged/transferred to a skilled nursing facility (SNF)"
* $nubc-discharge#04 "Discharged/transferred to an intermediate care facility (ICF)"
* $nubc-discharge#05 "Discharged/transferred to another type of institution not defined elsewhere in this code list"
* $nubc-discharge#06 "Discharged/transferred to home under care of organized home health service organization"
* $nubc-discharge#07 "Left against medical advice or discontinued care"
* $nubc-discharge#09 "Admitted as an inpatient to this hospital"
* $nubc-discharge#20 "Deceased/Expired"
* $nubc-discharge#21 "Discharged/transferred to court/law enforcement"
* $nubc-discharge#30 "Still a patient or expected to return for outpatient services"
* $nubc-discharge#43 "Discharged/transferred to a Federal Health Care Facility"
* $nubc-discharge#50 "Discharged/transferred to Hospice - home"
* $nubc-discharge#51 "Discharged/transferred to Hospice - medical facility"
* $nubc-discharge#61 "Discharged/transferred within this institution to a hospital based Medicare approved swing bed"
* $nubc-discharge#62 "Discharged/transferred to a inpatient rehabilitation facility"
* $nubc-discharge#63 "Discharged/transferred to long term care hospitals"
* $nubc-discharge#64 "Discharged/transferred to a nursing facility certified under Medicaid but not certified under Medicare"
* $nubc-discharge#65 "Discharged/transferred to a psychiatric hospital or psychiatric distinct part unit of a hospital"
* $nubc-discharge#66 "Discharged/transferred to a Critical Access Hospital (CAH)"
* $nubc-discharge#70 "Discharged/transferred to another type of health care institution not defined elsewhere in the code list"

// eOutcome.03 — External Report ID Type
ValueSet: EMSExternalReportTypeVS
Id: vs-ems-external-report-type
Title: "EMS External Report Type VS"
Description: "Type of external report associated with the EMS event (eOutcome.03)."
* ^url = "http://hl7.org/fhir/us/emscore/ValueSet/vs-ems-external-report-type"
* ^status = #active
* $nemsis-cs#4303001 "Disaster Tag"
* $nemsis-cs#4303003 "Fire Incident Report"
* $nemsis-cs#4303005 "Hospital-Receiving"
* $nemsis-cs#4303007 "Hospital-Transferring"
* $nemsis-cs#4303009 "Law Enforcement Report"
* $nemsis-cs#4303011 "Other"
* $nemsis-cs#4303013 "Other Registry"
* $nemsis-cs#4303015 "Other Report"
* $nemsis-cs#4303017 "Patient ID"
* $nemsis-cs#4303019 "Prior EMS Patient Care Report"
* $nemsis-cs#4303021 "STEMI Registry"
* $nemsis-cs#4303023 "Stroke Registry"
* $nemsis-cs#4303025 "Trauma Registry"
