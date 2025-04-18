## References

* [IHE 360 Exchange Closed Loop Referral(360X)](https://www.ihe.net/uploadedFiles/Documents/PCC/IHE_PCC_Suppl_360X.pdf)
* eReferral - [AU eRequesting Implementation Guide](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/index.html)
* eReport - [HL7 Europe Hospital Discharge Report](https://build.fhir.org/ig/hl7-eu/hdr/index.html)
* NHS England
  * eReferral - [e-Referral Service - FHIR API](https://digital.nhs.uk/developer/api-catalogue/e-referral-service-fhir)
  * eReferral - [Booking and Referral Standard](https://digital.nhs.uk/services/booking-and-referral-standard) 
  * eReport - [Transfer of Care](https://digital.nhs.uk/services/transfer-of-care-initiative)
  * eReport - [GP Connect and IM1](https://digital.nhs.uk/services/gp-connect) Send Document, Update Record and IM1 Write back operations.

## Actors and Transactions

| Actor                                                               | Definition                                                                                                            |
|---------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| [Referral Initiator](ActorDefinition-ReferralInitiator.html)        | The provider asking for a referral or advice/guidance                                                                 |
| [Referral Recipient](ActorDefinition-ReferralRecipient.html)        | The provider providing the procedure or advice/guidance                                                               |
| [Care Directory Serivce](ActorDefinition-CareDirectoryService.html) | Details on services provided by providers, i.e. eRS Healthcare Service, UEC Directory of Services, NHS Service Finder |                

## Overview

<figure>
{%include eReferral-activity.svg%}
<p id="fX.X.X.X-X" class="figureTitle">eReferral and eDischarge Overview Diagram</p>
</figure>
<br clear="all">


<img style="padding:3px;width:95%;" src="eReferral and eDischarge.drawio.png" alt="eReferral and eDischarge Process"/>
<br clear="all">
<p class="figureTitle">eReferral and eDischarge Process</p> 
<br clear="all">

<figure>
{%include eReferral-sequence.svg%}
<p id="fX.X.X.X-X" class="figureTitle">eReferral and eDischarge Sequence Diagram</p>
</figure>
<br clear="all">

## Message

The following messages are used to support the transmission of a consultation summary.

| FHIR Message                                                                                                                          | Purpose                                                                                                                                                                                                         | EIP Type                                                                                                |
|---------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|
| [Patient Referral](#patient-referral) <br> Definition: <br/> [patient-referral (I12)](MessageDefinition-unsolicited-observation.html) | The (structured) patient referral <br/> Is compatible with HL7 v2 [REF_I12](https://hl7-definition.caristix.com/v2/HL7v2.5.1/TriggerEvents/REF_I12) Message. <br/> Can be converted to NHS England eRS and BARS | [Command Message](https://www.enterpriseintegrationpatterns.com/patterns/messaging/CommandMessage.html) |

### Patient Referral
