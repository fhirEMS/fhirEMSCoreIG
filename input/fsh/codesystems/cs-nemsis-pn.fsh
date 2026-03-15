// ============================================================
// NEMSIS Pertinent Negative (PN) CodeSystem
// Fourteen meta-codes used across 70 of 657 NEMSIS elements
// NEMSIS 3.5.1.251001CP2
// ============================================================

CodeSystem: NEMSISPertinentNegative
Id: cs-nemsis-pertinent-negative
Title: "NEMSIS Pertinent Negative Codes"
Description: "NEMSIS Pertinent Negative (PN) codes indicating a clinically significant documented absence. Applied to clinical data elements where documenting a negative finding is as meaningful as documenting a positive one."
* ^version = "3.5.1.251001CP2"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #PN.Approximate               "Approximate"                    "The value is an estimate (e.g., estimated age)."
* #PN.ContraindicationNoted     "Contraindication Noted"         "A contraindication was identified that prevented the action."
* #PN.DeniedByOrder             "Denied By Order"                "The action was denied by a physician or standing order."
* #PN.ExamFindingNotPresent     "Exam Finding Not Present"       "The physical exam finding was specifically assessed and not found."
* #PN.MedicationAllergy         "Medication Allergy"             "The patient has a known allergy to the medication."
* #PN.MedicationAlreadyTaken    "Medication Already Taken"       "The patient had already taken the medication prior to EMS arrival."
* #PN.NoKnownDrugAllergy        "No Known Drug Allergy"          "The patient has no known drug allergies."
* #PN.NoneReported              "None Reported"                  "No pertinent history or findings were reported."
* #PN.NotImmunized              "Not Immunized"                  "The patient has not received the relevant immunization."
* #PN.OrderCriteriaNotMet       "Order Criteria Not Met"         "The criteria required for a standing order were not met."
* #PN.Refused                   "Refused"                        "The patient refused the assessment or intervention."
* #PN.SymptomNotPresent         "Symptom Not Present"            "The symptom was specifically assessed and denied by the patient."
* #PN.UnableToComplete          "Unable To Complete"             "The assessment or intervention could not be completed."
* #PN.Unresponsive              "Unresponsive"                   "The patient was unresponsive and unable to provide information."
