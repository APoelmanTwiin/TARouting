Instance: nl-gf-query-directory-query-client-reads
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Query Directory for Query Client for only Read operations"
* version = "20250828"
* title = "Query Directory for Query Client for only Read operations"
* status = #active
* experimental = false
* date = "2025-08-28"
* description = "Dutch profile of the CapabilityStatement for Query Directory Actor that should be able to work with an Query Client for only Read operations."
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "Dutch profile of the IHE ITI mCSD ITI-90 endpoint for just read operations"
  * resource[+]
    * insert Expectation(MAY)
    * type = #HealthcareService
    * supportedProfile = Canonical(NlGfHealthcareService)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read
  * resource[+]
    * insert Expectation(MAY)
    * type = #Location
    * supportedProfile[+] = Canonical(NlcoreHealthcareProviderOrganization)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read
  * resource[+]
    * insert Expectation(MAY)
    * type = #Organization
    * supportedProfile[+] = Canonical(NlcoreHealthcareProviderOrganization)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read
  * resource[+]
    * insert Expectation(MAY)
    * type = #Practitioner
    * supportedProfile = Canonical(NlcoreHealthProfessionalPractitioner)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read
  * resource[+]
    * insert Expectation(MAY)
    * type = #PractitionerRole
    * supportedProfile = Canonical(NlcoreHealthProfessionalPractitionerRole)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read
  * resource[+]
    * insert Expectation(MAY)
    * type = #Endpoint
    * supportedProfile[+] = Canonical(NlGfEndpoint)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read
  * resource[+]
    * insert Expectation(MAY)
    * type = #OrganizationAffiliation
    * supportedProfile[+] = Canonical(OrganizationAffiliation)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read