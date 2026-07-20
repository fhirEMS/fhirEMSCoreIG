# Example EMS Device — ALS Ambulance - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Device — ALS Ambulance**

## Example Device: Example EMS Device — ALS Ambulance

Profile: [EMS Vehicle Device](StructureDefinition-ems-device-vehicle.md)

**identifier**: Visit number/4321 (use: official, ), [EMSVehicleVIN](NamingSystem-ns-ems-vin.md)/1FDFE4FS0GDA12345 (use: secondary, ), `http://example.org/ems/callsigns`/Medic 21 (use: usual, )

**manufactureDate**: 2022-01-01

**type**: Ambulance

**owner**: [Organization Riverside County EMS Agency](Organization-ex-ems-organization-agency.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "ex-ems-device-vehicle",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-device-vehicle"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "VN"
      }]
    },
    "system" : "http://example.org/ems/units",
    "value" : "4321"
  },
  {
    "use" : "secondary",
    "system" : "https://fhirems.github.io/fhirEMSCoreIG/identifier/vin",
    "value" : "1FDFE4FS0GDA12345"
  },
  {
    "use" : "usual",
    "system" : "http://example.org/ems/callsigns",
    "value" : "Medic 21"
  }],
  "manufactureDate" : "2022-01-01",
  "type" : {
    "coding" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-codes",
      "code" : "1404001",
      "display" : "Ambulance"
    }]
  },
  "owner" : {
    "reference" : "Organization/ex-ems-organization-agency"
  }
}

```
