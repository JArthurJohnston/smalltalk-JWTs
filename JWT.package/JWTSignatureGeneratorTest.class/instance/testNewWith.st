tests
testNewWith
	| signatureGenerator expectedHashFunction |
	expectedHashFunction := SHA256 new hmac.
	
	signatureGenerator := JWTSignatureGenerator newWith: expectedHashFunction.

	self assert: expectedHashFunction equals: signatureGenerator hashFunction.