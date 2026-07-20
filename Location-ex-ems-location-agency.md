# Example EMS Agency Station — Station 7 - FHIR EMS Core Implementation Guide (Unofficial Research Project) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example EMS Agency Station — Station 7**

## Example Location: Example EMS Agency Station — Station 7

Profile: [EMS Location — Agency Station](StructureDefinition-ems-location-agency.md)

**US National Grid Coordinates**: 11SMT8236514637

**identifier**: `http://example.org/ems/stations`/STA-7

**status**: Active

**name**: Riverside County Fire Station 7

**type**: EMS Station

**telecom**: ph: 951-555-0107

**address**: 28155 Baxter Rd Murrieta CA 92563 US 

### Positions

| | | |
| :--- | :--- | :--- |
| - | **Longitude** | **Latitude** |
| * | -117.2138 | 33.5547 |

**managingOrganization**: [Organization Riverside County EMS Agency](Organization-ex-ems-organization-agency.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "ex-ems-location-agency",
  "meta" : {
    "profile" : ["https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-agency"]
  },
  "extension" : [{
    "url" : "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-usng",
    "valueString" : "11SMT8236514637"
  }],
  "identifier" : [{
    "system" : "http://example.org/ems/stations",
    "value" : "STA-7"
  }],
  "status" : "active",
  "name" : "Riverside County Fire Station 7",
  "type" : [{
    "coding" : [{
      "system" : "https://fhirems.github.io/fhirEMSCoreIG/CodeSystem/cs-nemsis-demographics",
      "code" : "1301005",
      "display" : "EMS Station"
    }]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "951-555-0107"
  }],
  "address" : {
    "line" : ["28155 Baxter Rd"],
    "city" : "Murrieta",
    "district" : "06065",
    "state" : "CA",
    "postalCode" : "92563",
    "country" : "US"
  },
  "position" : {
    "longitude" : -117.2138,
    "latitude" : 33.5547
  },
  "managingOrganization" : {
    "reference" : "Organization/ex-ems-organization-agency"
  }
}

```
