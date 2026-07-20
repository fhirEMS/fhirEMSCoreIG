# Example EMS Destination — Level I Trauma Center - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Destination — Level I Trauma Center**

## Example Location: Example EMS Destination — Level I Trauma Center

Profile: [EMS Destination Location](StructureDefinition-ems-location-destination.md)

**identifier**: [United States National Provider Identifier](http://terminology.hl7.org/5.5.0/NamingSystem-npi.html)/1508855537

**status**: Active

**name**: Riverside University Health System Medical Center

**type**: Hospital

**address**: 26520 Cactus Avenue Moreno Valley CA 92555 US (work)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "ex-ems-location-destination",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-destination"]
  },
  "identifier" : [{
    "system" : "http://hl7.org/fhir/sid/us-npi",
    "value" : "1508855537"
  }],
  "status" : "active",
  "name" : "Riverside University Health System Medical Center",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "HOSP",
      "display" : "Hospital"
    }]
  }],
  "address" : {
    "use" : "work",
    "type" : "physical",
    "line" : ["26520 Cactus Avenue"],
    "city" : "Moreno Valley",
    "state" : "CA",
    "postalCode" : "92555",
    "country" : "US"
  }
}

```
