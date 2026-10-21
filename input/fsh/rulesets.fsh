
RuleSet: Expectation( conformance )
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * valueCode = #{conformance}
  
RuleSet: BundleEntryPUT (type, resource)
* entry[+].fullUrl = "https://example.org/fhir/{type}/{resource}"
* entry[=].resource = {resource}
* entry[=].request.method = #PUT
* entry[=].request.url = "{type}/{resource}"

RuleSet: AuthorAssignedIdentifier (system, value, assigner-system, assigner-value)
* identifier[+].system = {system}
* identifier[=].value = {value}
* identifier[=].assigner.identifier.system = {assigner-system}
* identifier[=].assigner.identifier.value = {assigner-value}
* identifier[=].assigner.identifier.type = $provenance-participant-type#author

RuleSet: CustodianAssignedIdentifier (system, value, assigner-system, assigner-value)
* identifier[+].system = {system}
* identifier[=].value = {value}
* identifier[=].use = #official
* identifier[=].assigner.identifier.system = {assigner-system}
* identifier[=].assigner.identifier.value = {assigner-value}
* identifier[=].assigner.identifier.type = $provenance-participant-type#custodian