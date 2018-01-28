tests
testInitialize
	self assert: parser encoder class equals: ZnBase64Encoder.
	self assert: parser hashingAlgorithm equals: hmac. 