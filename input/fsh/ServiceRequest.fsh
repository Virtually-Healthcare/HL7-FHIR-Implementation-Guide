Profile: ServiceRequest
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-ServiceRequest
Id: ServiceRequest
Description: """
Extension of [UKCore-ServiceRequest](https://simplifier.net/hl7fhirukcorer4/ukcore-servicerequest)
plus requirements present in [NHS England - e-Referral Service - FHIR API](https://digital.nhs.uk/developer/api-catalogue/e-referral-service-fhir) and
and [NHS England - Booking and Referral Standard](https://simplifier.net/guide/nhsbookingandreferralstandard)

"""

* identifier 1..* MS
* identifier only CorrelationIdentifier

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the type"
* identifier ^slicing.ordered = false
* identifier contains
  placerOrderNumber 1..1 MS

* identifier[placerOrderNumber] only OrderPlacerNumber
* identifier[placerOrderNumber] ^short = "Identifier assigned by the Order Filler, HL7 v2 ORC-2 Order Placer Number. Mandatory for Order Placer"
* identifier[placerOrderNumber] insert Obligation(#SHOULD:populate-if-known, https://hl7.mft.nhs.uk/ActorDefinition/OrderFiller)
* identifier[placerOrderNumber] insert Obligation(#SHALL:populate, https://hl7.mft.nhs.uk/ActorDefinition/OrderPlacer)
* identifier[placerOrderNumber] insert Obligation(#SHOULD:populate-if-known, https://hl7.mft.nhs.uk/ActorDefinition/AutomationManager)


* code 0..1
* subject.reference 0..1 MS
* subject.identifier only NHSNumber

* basedOn 0..* MS
* basedOn ^short = "SHALL reference a parent request where this ServiceRequest is based on a previous request, e.g. in the case of reanalysis and cascade testing, or Germline Late tests in the Tumour First/Germline Late scenario"
* basedOn only Reference(ServiceRequest)
* basedOn.identifier only CorrelationIdentifier

* supportingInfo 0..* MS
* supportingInfo only Reference(ObservationPanel or Observation or DiagnosticReport or DocumentReference)

* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "type"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice based on the coding.system"
* supportingInfo ^slicing.ordered = false
* supportingInfo contains
  Attachments 0..1 MS

* supportingInfo[Attachments] only Reference(DocumentReference)
* supportingInfo[Attachments].type = #DocumentReference
