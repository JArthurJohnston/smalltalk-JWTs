initialization
testGeneratePayload
	| expectedPayload actualPayload |
	expectedPayload := '{"email":"bob@burgers.com","hello":"world"}'.

	actualPayload := generator generatePayload.

	self assert: actualPayload equals: expectedPayload.