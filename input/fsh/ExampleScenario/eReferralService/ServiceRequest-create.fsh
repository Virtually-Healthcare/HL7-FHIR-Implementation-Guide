Instance: f3533ea0-9588-4f25-ace7-969d80823b20
InstanceOf: ServiceRequest
Title: "ServiceRequest - Create"
Description: """
Example conversion of [$ers.createReferral multishortlist](eRS/ers-GenerateReferral-multishortlist-FHIR-STU3.json) to FHIR R4 ServiceRequest in a Clinical Data Repository
"""
Usage: #example

* identifier[OriginatingReferralIdentifier]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "f3533ea0-9588-4f25-ace7-969d80823b20"
  * assigner.identifier.system = $ods-code
  * assigner.identifier.value = "FK502"

* status = #active
* intent = #order
* subject.identifier.system = $nhs-number
* subject.identifier.value = "9912003888"

* code.coding[PatientReferralSCT] = $sct#425315000 "Cardiac assessment"

* category[PatientReferral] = $sct#3457005 "Patient Referral"

* priority = #routine



