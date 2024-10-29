Instance: af22811f-218e-4ff6-aa07-93f12c666dd7
InstanceOf: Observation
Title: "Observation CDR - Weight"
Description: """
Form based Data Capture - Weight

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[UUID]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "af22811f-218e-4ff6-aa07-93f12c666dd7"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://snomed.info/sct#27113001 "Body weight"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 81
* valueQuantity.code = #kg
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"


Instance: 9a2052b8-f00a-41ec-bc4e-3bd4cfae62c2
InstanceOf: Observation
Title: "Observation CDR - Baseline SpO2"
Description: """
Form based Data Capture - Baseline SpO2

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[UUID]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "9a2052b8-f00a-41ec-bc4e-3bd4cfae62c2"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://snomed.info/sct#927981000000106 "Baseline SpO2 (oxygen saturation at periphery)"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 98
* valueQuantity.code = #%
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"

Instance: 78fef4ce-cb0a-4e7d-b768-2565550b62a2
InstanceOf: Observation
Title: "Observation CDR - Head circumference"
Description: """
Form based Data Capture - Head circumference

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[UUID]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "78fef4ce-cb0a-4e7d-b768-2565550b62a2"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://snomed.info/sct#363811000 "Head circumference measure"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 59
* valueQuantity.code = #cm
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"

Instance: ba92afc0-a1c5-41df-93d8-c3df49888bcd
InstanceOf: Observation
Title: "Observation CDR - Body height"
Description: """
Form based Data Capture - Body height

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[UUID]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "ba92afc0-a1c5-41df-93d8-c3df49888bcd"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://snomed.info/sct#50373000 "Body height measure"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 179
* valueQuantity.code = #cm
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"

Instance: 5ba52e14-9a98-48cb-8029-770e3e76f428
InstanceOf: Observation
Title: "Observation CDR - Body temperature"
Description: """
Form based Data Capture - Body temperature

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[UUID]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "5ba52e14-9a98-48cb-8029-770e3e76f428"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://snomed.info/sct#276885007 "Core body temperature"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 36.1
* valueQuantity.code = #Cel
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"


Instance: 8037d992-5936-44bf-9253-f76f904ba7b9
InstanceOf: Observation
Title: "Observation CDR - Systolic blood pressure"
Description: """
Form based Data Capture - Systolic blood pressure

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[UUID]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "8037d992-5936-44bf-9253-f76f904ba7b9"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://snomed.info/sct#72313002 "Systolic arterial pressure"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 117
* valueQuantity.code = #mm[Hg]
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"

Instance: 53dd8681-7578-4aff-abdf-1f330535e142
InstanceOf: Observation
Title: "Observation CDR - Diastolic blood pressure"
Description: """
Form based Data Capture - Diastolic blood pressure

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[UUID]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "53dd8681-7578-4aff-abdf-1f330535e142"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://snomed.info/sct#1091811000000102 "Diastolic arterial pressure"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 74
* valueQuantity.code = #mm[Hg]
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"
