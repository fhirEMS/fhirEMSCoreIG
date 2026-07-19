// ============================================================
// Profile: EMS Document Reference — External Attachments
// NEMSIS 3.5.1.251001CP2 — eOther.09–.11, .22
// Parent: US Core DocumentReference
// ============================================================

Profile: EMSDocumentReference
Id: ems-documentreference
Title: "EMS Document Reference"
Description: "An external electronic document or file attachment associated with the EMS Patient Care Report (eOther.09–.11, .22): diagnostic images, ECG/lab results, DNR forms, refusal sheets, and similar. The NEMSIS document type (4509xxx) is carried in ext-ems-document-type; DocumentReference.type keeps the US Core LOINC binding."
Parent: $us-core-docref

* ^url = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-documentreference"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false

// ── NEMSIS document type extension ────────────────────────────
* extension contains $ext-ems-document-type named nemsisDocumentType 0..1 MS
* extension[nemsisDocumentType]
  * ^short = "eOther.09 - External Electronic Document Type (NEMSIS 4509xxx)"
  * ^comment = "US Core requires a LOINC code in DocumentReference.type; the NEMSIS code goes here. Use type.text or LOINC 67796-3 (EMS patient care report) when no specific LOINC equivalent exists."

// ── Type / status ─────────────────────────────────────────────
* status MS
* category[uscore] MS
* type MS
  * ^comment = "US Core-required LOINC binding. Map from eOther.09 where a LOINC equivalent exists (e.g., ECG results → 11524-6); otherwise use the DataAbsentReason-coded UNK pattern permitted by US Core."

// ── Subject and context ───────────────────────────────────────
* subject 1..1 MS
* subject only Reference(EMSPatient)
* context MS
* context.encounter MS
* context.encounter only Reference(EMSEncounter)

// ── Attachment — eOther.10/.11/.22 ───────────────────────────
* content MS
* content.attachment MS
* content.attachment.contentType MS
  * ^short = "eOther.10 - File Attachment Type"
  * ^comment = "NEMSIS eOther.10 (GraphicType, free text). Use a MIME type (e.g., image/jpeg, application/pdf)."
* content.attachment.title MS
  * ^short = "eOther.22 - File Attachment Name"
  * ^comment = "NEMSIS eOther.22. Usage: Optional."
* content.attachment.data
  * ^short = "eOther.11 - File Attachment Image (inline)"
  * ^comment = "NEMSIS eOther.11. Base64 content; alternatively reference external content via attachment.url."

* date MS
* author MS
  * ^comment = "The crew member or agency attaching the document."
