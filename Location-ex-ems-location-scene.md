# Example EMS Scene Location — MVA on I-15 - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Scene Location — MVA on I-15**

## Example Location: Example EMS Scene Location — MVA on I-15

Profile: [EMS Scene Location](StructureDefinition-ems-location-scene.md)

> **EMS Scene GPS Location**
* latitude: 33.5731
* longitude: -117.2147

> **EMS Scene Details**
* firstUnitOnScene: Yes
* numberOfPatients: 1
* massCasualtyIncident: No

**status**: Active

**name**: Interstate 15 NB mm 58.4

**type**: Interstate highway as the place of occurrence of the external cause

**address**: I-15 NB Mile Marker 58.4 Murrieta CA 92563 US (work)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "ex-ems-location-scene",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-scene"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "latitude",
      "valueDecimal" : 33.5731
    },
    {
      "url" : "longitude",
      "valueDecimal" : -117.2147
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-scene-gps"
  },
  {
    "extension" : [{
      "url" : "firstUnitOnScene",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0136",
          "code" : "Y",
          "display" : "Yes"
        }]
      }
    },
    {
      "url" : "numberOfPatients",
      "valuePositiveInt" : 1
    },
    {
      "url" : "massCasualtyIncident",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0136",
          "code" : "N",
          "display" : "No"
        }]
      }
    }],
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-scene-details"
  }],
  "status" : "active",
  "name" : "Interstate 15 NB mm 58.4",
  "type" : [{
    "coding" : [{
      "system" : "http://hl7.org/fhir/sid/icd-10-cm",
      "code" : "Y92.411",
      "display" : "Interstate highway as the place of occurrence of the external cause"
    }]
  }],
  "address" : {
    "use" : "work",
    "type" : "physical",
    "line" : ["I-15 NB Mile Marker 58.4"],
    "city" : "Murrieta",
    "state" : "CA",
    "postalCode" : "92563",
    "country" : "US"
  }
}

```
