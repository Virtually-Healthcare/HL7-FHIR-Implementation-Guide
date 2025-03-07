

<figure>
{%include component-gp-connect.svg%}
<p id="fX.X.X.X-X" class="figureTitle">GP Connect API Overview</p>
</figure>
<br clear="all">

## Query APIs

| GP Connect Capability                                                                                                           | Proposed Replacement                                                                                                                                                                                                                                                                                                                                   | FHIR Exchange Method | FHIR Document Standards                                                                                                                  | Related standards                                                                                                      |
|---------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------|------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| [Access Record HTML](https://digital.nhs.uk/services/gp-connect/gp-connect-in-your-organisation/gp-connect-access-record)       | [IHE Sharing of IPS (sIPS)](https://profiles.ihe.net/ITI/sIPS/index.html)                                                                                                                                                                                                                                                                              | FHIR Document        | [HL7 International Patient Summary (IPS)](https://build.fhir.org/ig/HL7/fhir-ips/index.html)                                             | Is also a structured summary in addition to html                                                                       |
| [Access Record Structured](https://digital.nhs.uk/services/gp-connect/gp-connect-in-your-organisation/gp-connect-access-record) | [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)                                                                                                                                                                                                                                                                            | FHIR RESTful         |                                                                                                                                          | [CareConnectAPI](https://nhsconnect.github.io/CareConnectAPI/)                                                         |                              
| [Access Document - FHIR API](https://digital.nhs.uk/developer/api-catalogue/gp-connect-access-document-fhir)                    | - Search for documents [IHE MHD Find Document References [ITI-67]](https://profiles.ihe.net/ITI/MHD/ITI-67.html) <br/> - Retrieve document [IHE Retrieve Document [ITI-68]](https://profiles.ihe.net/ITI/MHD/ITI-68.html) <br/> - Patient search [IHE PDQm Mobile Patient Demographics Query [ITI-78]](https://profiles.ihe.net/ITI/PDQm/ITI-78.html)] | FHIR RESTful         | n/a                                                                                                                                      |                                                                                                                        |

## Update Record APIs

It is proposed all four methods of updating records, this reduces the number of interaction standards down to four.

| GP Connect Capability                                                                                                | Proposed Replacement                                                                                 | FHIR Exchange Method          | FHIR Document Standards                                                                                                                  | Related standards                                                                                                                                                                 |
|----------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|-------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Send Document](https://digital.nhs.uk/services/gp-connect/gp-connect-in-your-organisation/send-document)            | Mehtod 0 `XDS` [IHE MHD Simplified Publish [ITI-105]](https://profiles.ihe.net/ITI/MHD/ITI-105.html) | FHIR RESTful                  |                                                                                                                                          | Kettering XML <br/> HL7 v2 MDM_M02                                                                                                                                                |
| [Update Record](https://digital.nhs.uk/services/gp-connect/gp-connect-in-your-organisation/gp-connect-update-record) | Method 1 `v2` Messaging + Structured Data                                                            | FHIR Messaging                |                                                                                                                                          | HL7 v2 ORU_R01 (Laboratory Report)                                                                                                                                                | 
|                                                                                                                      | Method 2 `v3 CDA` Messaging (see `Send Document` above) + Structured Documents                       | FHIR Messaging + Document     | - [HL7 EU Laboratory Report](https://build.fhir.org/ig/hl7-eu/laboratory/) <br/> - HL7 EU Imaging Report <br/> - HL7 EU Discharge Report | Hl7 v3 CDA <br/> [Transfer of Care](https://digital.nhs.uk/services/transfer-of-care-initiative) <br/> [Digital Medicines](https://developer.nhs.uk/apis/digitalmedicines-alpha/) | 
|                                                                                                                      | Method 3 `FHIR` RESTful                                                                              | FHIR RESTful and Transactions | n/a | This is default FHIR method                                                                                                                                                       |

### Event APIs 

Method `v3 CDA` can be replaced by using document sharing methods such as regional IHE XDS or national NRL document registries. Should this become an option, GP Systems can be notified of the document by [IHE Document Subscription for Mobile (DSUBm)](https://profiles.ihe.net/ITI/DSUBm/index.html)

This introduces a `notify and retrieve` pattern, where data is shared by default via [Query API](#query-apis) and interested parties (recipients) are notified by event notifications. This notification allows recipients to pull data into their repositories if they desire.

## Workflow 

| GP Connect Capability             | Proposed Replacement                                                 | FHIR Exchange Method | FHIR Document Standards | Related standards |
|-----------------------------------|----------------------------------------------------------------------|----------------------|-------------------------|-------------------|
| GP Connect Appointment Management | [IHE Scheduling](https://profiles.ihe.net/ITI/Scheduling/index.html) | FHIR RESTful         | n/a                     |                   |

## Conformance

| GP Connect Capability             | Proposed Replacement      | FHIR Exchange Method | FHIR Document Standards | Related standards |
|-----------------------------------|---------------------------|----------------------|-------------------------|-------------------|
| GP Connect National Data Sharing Portal | FHIR Implementation Guide | n/a                  | n/a                     | this              |


