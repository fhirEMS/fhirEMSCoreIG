<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile USCoreEncounterProfile
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Encounter</sch:title>
    <sch:rule context="f:Encounter">
      <sch:assert test="count(f:extension[@url = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-type']) &lt;= 1">extension with URL = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-unit-type']) &lt;= 1">extension with URL = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-unit-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-mode']) &lt;= 1">extension with URL = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-mode': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-delays']) &lt;= 1">extension with URL = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-response-delays': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-unit']) &lt;= 1">extension with URL = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-unit': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-times']) &lt;= 1">extension with URL = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-times': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-dispatch-reason']) &lt;= 1">extension with URL = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-dispatch-reason': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-dispatch-info']) &lt;= 1">extension with URL = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-dispatch-info': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-disposition-codes']) &lt;= 1">extension with URL = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-disposition-codes': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-transport-details']) &lt;= 1">extension with URL = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-transport-details': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-destination-details']) &lt;= 1">extension with URL = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-destination-details': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-other-context']) &lt;= 1">extension with URL = 'https://fhirems.github.io/fhirEMSCoreIG/StructureDefinition/ext-ems-other-context': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:serviceProvider) &gt;= 1">serviceProvider: minimum cardinality of 'serviceProvider' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:identifier</sch:title>
    <sch:rule context="f:Encounter/f:identifier">
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:period</sch:title>
    <sch:rule context="f:Encounter/f:period">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:location</sch:title>
    <sch:rule context="f:Encounter/f:location">
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
