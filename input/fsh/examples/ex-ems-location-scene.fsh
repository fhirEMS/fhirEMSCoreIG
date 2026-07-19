// ============================================================
// Example: EMS Scene Location
// Scenario: MVA on Interstate 15 near Murrieta, CA
// NEMSIS eScene section
// ============================================================

Instance: ex-ems-location-scene
InstanceOf: EMSLocationScene
Title: "Example EMS Scene Location — MVA on I-15"
Description: "Example scene location demonstrating the EMSLocationScene profile. Motor vehicle accident on Interstate 15 northbound near Murrieta, California."
Usage: #example

* meta.profile = "https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ems-location-scene"

* status = #active
* name = "Interstate 15 NB mm 58.4"

// eScene.09 - Incident Location Type (ICD-10-CM Y92.411 — Interstate highway)
* type[0].coding[0].system = "http://hl7.org/fhir/sid/icd-10-cm"
* type[0].coding[0].code = #Y92.411
* type[0].coding[0].display = "Interstate highway as the place of occurrence of the external cause"

// eScene.15–20 - Address
* address.use = #work
* address.type = #physical
* address.line[0] = "I-15 NB Mile Marker 58.4"
* address.city = "Murrieta"
* address.state = "CA"
* address.postalCode = "92563"
* address.country = "US"

// eScene.11 - GPS Location
* extension[sceneGPS].extension[latitude].valueDecimal = 33.5731
* extension[sceneGPS].extension[longitude].valueDecimal = -117.2147

// eScene.01, .06, .07 - Scene context via sceneDetails extension
* extension[sceneDetails].extension[firstUnitOnScene].valueCodeableConcept
    = http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
* extension[sceneDetails].extension[numberOfPatients].valuePositiveInt = 1
* extension[sceneDetails].extension[massCasualtyIncident].valueCodeableConcept
    = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
