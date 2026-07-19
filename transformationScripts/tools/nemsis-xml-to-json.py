#!/usr/bin/env python3
"""Canonicalize NEMSIS v3 EMSDataSet XML to JSON for FHIR transformation.

Both the Microsoft FHIR Converter (Liquid) and Google Whistle consume JSON,
so NEMSIS XML is first normalized with these deterministic rules:

1. Every LEAF element becomes an object: {"value": <text or null>, ...attrs}.
   Attributes (NV, PN, CorrelationID, ...) become sibling keys of "value".
   xsi:nil="true" leaves have value = null (the NV attribute explains why).
2. Container elements become objects keyed by child tag name.
3. Elements that may repeat are ALWAYS arrays (even when one instance is
   present): Header, PatientCareReport, every *Group element, and the
   known repeating leaf elements listed in FORCE_ARRAY.
4. Namespaces are stripped; tag names keep their NEMSIS dotted form
   (e.g. "eVitals.06").

Usage:
  python3 nemsis-xml-to-json.py input.xml > output.json
"""
import json
import sys
import xml.etree.ElementTree as ET

# Leaf elements defined with maxOccurs="unbounded" that transforms iterate.
FORCE_ARRAY = {
    "Header", "PatientCareReport",
    # All maxOccurs="unbounded" elements, generated from the NEMSIS v3.5.1
    # XSDs (grep maxOccurs=\"unbounded\" over *_v3.xsd) — do not hand-edit.
    "DemographicReport", "dAgency.06", "dAgency.07", "dAgency.08",
    "dAgency.10", "dAgency.25", "dAgency.26", "dAgency.AgencyServiceGroup",
    "dAgency.AgencyYearGroup", "dConfiguration.07", "dConfiguration.09", "dConfiguration.10",
    "dConfiguration.11", "dConfiguration.14", "dConfiguration.15", "dConfiguration.16",
    "dConfiguration.17", "dConfiguration.ConfigurationGroup", "dConfiguration.MedicationGroup", "dConfiguration.ProcedureGroup",
    "dContact.10", "dContact.11", "dContact.14", "dContact.ContactInfoGroup",
    "dCustomConfiguration.06", "dCustomConfiguration.07", "dCustomConfiguration.08", "dCustomConfiguration.CustomGroup",
    "dCustomResults.01", "dCustomResults.ResultsGroup", "dDevice.03", "dDevice.DeviceGroup",
    "dFacility.04", "dFacility.05", "dFacility.15", "dFacility.FacilityGroup",
    "dFacilityGroup", "dLocation.12", "dLocation.LocationGroup", "dPersonnel.09",
    "dPersonnel.10", "dPersonnel.13", "dPersonnel.16", "dPersonnel.17",
    "dPersonnel.20", "dPersonnel.35", "dPersonnel.CertificationLevelGroup", "dPersonnel.ImmunizationsGroup",
    "dPersonnel.LicensureGroup", "dPersonnel.PersonnelGroup", "dVehicle.VehicleCertificationLevelsGroup", "dVehicle.VehicleGroup",
    "dVehicle.YearGroup", "eAirway.01", "eAirway.04", "eAirway.08",
    "eAirway.09", "eAirway.ConfirmationGroup", "eArrest.03", "eArrest.04",
    "eArrest.09", "eArrest.12", "eArrest.17", "eCrew.03",
    "eCrew.CrewGroup", "eCustomConfiguration.06", "eCustomConfiguration.07", "eCustomConfiguration.08",
    "eCustomConfiguration.CustomGroup", "eCustomResults.01", "eCustomResults.ResultsGroup", "eDevice.03",
    "eDevice.07", "eDevice.DeviceGroup", "eDisposition.13", "eDisposition.14",
    "eDisposition.15", "eDisposition.18", "eDisposition.20", "eDisposition.23",
    "eDisposition.26", "eDisposition.31", "eDisposition.HospitalTeamActivationGroup", "eExam.04",
    "eExam.05", "eExam.06", "eExam.07", "eExam.09",
    "eExam.11", "eExam.12", "eExam.14", "eExam.16",
    "eExam.18", "eExam.19", "eExam.20", "eExam.23",
    "eExam.25", "eExam.AbdomenGroup", "eExam.AssessmentGroup", "eExam.ChestGroup",
    "eExam.ExtremityGroup", "eExam.EyeGroup", "eExam.LungGroup", "eExam.SpineGroup",
    "eHistory.01", "eHistory.05", "eHistory.06", "eHistory.07",
    "eHistory.08", "eHistory.09", "eHistory.17", "eHistory.CurrentMedsGroup",
    "eHistory.ImmunizationsGroup", "eHistory.PractitionerGroup", "eInjury.01", "eInjury.02",
    "eInjury.03", "eInjury.04", "eInjury.07", "eInjury.08",
    "eInjury.10", "eInjury.13", "eInjury.22", "eInjury.SeatGroup",
    "eLabs.LabGroup", "eLabs.LabImageGroup", "eLabs.LabResultGroup", "eLabs.WaveformGraphicGroup",
    "eMedications.08", "eMedications.MedicationGroup", "eOther.02", "eOther.03",
    "eOther.06", "eOther.07", "eOther.13", "eOther.EMSCrewMemberGroup",
    "eOther.FileGroup", "eOther.SignatureGroup", "eOutcome.10", "eOutcome.13",
    "eOutcome.EmergencyDepartmentProceduresGroup", "eOutcome.ExternalDataGroup", "eOutcome.HospitalProceduresGroup", "ePatient.14",
    "ePatient.18", "ePatient.19", "ePatient.24", "ePayment.04",
    "ePayment.31", "ePayment.41", "ePayment.42", "ePayment.44",
    "ePayment.47", "ePayment.51", "ePayment.52", "ePayment.59",
    "ePayment.InsuranceGroup", "ePayment.SupplyItemGroup", "eProcedures.07", "eProcedures.14",
    "eProcedures.ProcedureGroup", "eProtocols.ProtocolGroup", "eResponse.08", "eResponse.09",
    "eResponse.10", "eResponse.11", "eResponse.12", "eResponse.24",
    "eScene.ResponderGroup", "eSituation.10", "eSituation.12", "eSituation.17",
    "eSituation.PatientComplaintGroup", "eVitals.03", "eVitals.05", "eVitals.22",
    "eVitals.VitalGroup", "sAgencyGroup", "sConfiguration.01", "sConfiguration.03",
    "sConfiguration.05", "sConfiguration.06", "sConfiguration.MedicationGroup", "sConfiguration.ProcedureGroup",
    "sElement.01", "sFacility.04", "sFacility.05", "sFacility.15",
    "sFacility.FacilityGroup", "sFacilityGroup", "sdCustomConfiguration.06", "sdCustomConfiguration.07",
    "sdCustomConfiguration.08", "sdCustomConfiguration.CustomGroup", "seCustomConfiguration.06", "seCustomConfiguration.07",
    "seCustomConfiguration.08", "seCustomConfiguration.CustomGroup",
}

def localname(tag: str) -> str:
    return tag.split("}", 1)[1] if "}" in tag else tag

def is_repeating(name: str) -> bool:
    return name in FORCE_ARRAY or name.endswith("Group")

def convert(elem: ET.Element):
    children = list(elem)
    attrs = {localname(k): v for k, v in elem.attrib.items()}
    nil = attrs.pop("nil", "false") == "true"
    if not children:  # leaf
        text = None if nil else (elem.text.strip() if elem.text and elem.text.strip() else None)
        return {"value": text, **attrs}
    out = {}
    if attrs:
        out.update({f"@{k}": v for k, v in attrs.items()})
    for child in children:
        name = localname(child.tag)
        val = convert(child)
        if is_repeating(name):
            out.setdefault(name, []).append(val)
        elif name in out:  # unexpected repeat — promote to array rather than drop
            if not isinstance(out[name], list):
                out[name] = [out[name]]
            out[name].append(val)
        else:
            out[name] = val
    return out

def main():
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    root = ET.parse(sys.argv[1]).getroot()
    doc = {localname(root.tag): convert(root)}
    json.dump(doc, sys.stdout, indent=2)
    print()

if __name__ == "__main__":
    main()
