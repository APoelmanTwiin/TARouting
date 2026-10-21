Profile: NlGfEndpoint
Parent: Endpoint
Id: nl-gf-endpoint
Title: "NL Generic Functions Endpoint Profile"
Description: "The technical details of an endpoint that can be used for electronic services, such as for web services providing access to FHIR resources."
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Endpoint
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Endpoint
* managingOrganization 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Endpoint
* payloadType from NlGfDataExchangeCapabilitiesVS (extensible)

Extension: SupportedActivityDefinitions
Id:        supported-activity-definitions
Title:    "Supported ActivityDefinitions and PlanDefinitions by HealthcareServices"
Description: "ActivityDefinitions or PlanDefinitions to specify the codeable concepts in HealthcareService.type."
Context: HealthcareService
* value[x] only Canonical(ActivityDefinition or PlanDefinition)

Profile: NlGfHealthcareService
Parent: HealthcareService
Id: nl-gf-healthcareservice
Title: "NL Generic Functions HealthcareService Profile"
Description: "The technical details of a healthcare service that can be used in referrals, requests and orders"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "assigner.identifier.type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId].system 1..1
* identifier[AssignedId].value 1..1
* identifier[AssignedId].assigner 1..1
* identifier[AssignedId].assigner.identifier 1..1
* identifier[AssignedId].assigner.identifier.system = "http://fhir.nl/fhir/NamingSystem/ura"
* identifier[AssignedId].assigner.identifier.value 1..1
* identifier[AssignedId].assigner.identifier.type 1..1
* identifier[AssignedId].assigner.identifier.type.coding 1..1
* identifier[AssignedId].assigner.identifier.type.coding.system = $provenance-participant-type
* identifier[AssignedId].assigner.identifier.type.coding.code = #author
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.HealthcareService
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.HealthcareService
* name 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.HealthcareService
* type 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.HealthcareService
* providedBy 1.. 
* specialty from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.121.11.22--20200901000000 (required)
* type from NlGfWlzZorgprofielenVS (required)
* type.extension contains SupportedActivityDefinitions named supportedActivityDefinitions 0..*

Profile: NlGfLocation
Parent: $NlLocation
Id: nl-gf-location
Title: "NL Generic Functions Location Profile"
Description: "Physical location details for healthcare services, organizations, and practitioners."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "assigner.identifier.type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId].system 1..1
* identifier[AssignedId].value 1..1
* identifier[AssignedId].assigner 1..1
* identifier[AssignedId].assigner.identifier 1..1
* identifier[AssignedId].assigner.identifier.system = "http://fhir.nl/fhir/NamingSystem/ura"
* identifier[AssignedId].assigner.identifier.value 1..1
* identifier[AssignedId].assigner.identifier.type 1..1
* identifier[AssignedId].assigner.identifier.type.coding 1..1
* identifier[AssignedId].assigner.identifier.type.coding.system = $provenance-participant-type
* identifier[AssignedId].assigner.identifier.type.coding.code = #author

* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* name 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* type 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* status 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* managingOrganization 1..
