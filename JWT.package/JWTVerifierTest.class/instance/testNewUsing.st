tests
testNewUsing
	| verifier hmac |
	hmac := SHA256 new hmac.
	verifier := JWTVerifier newUsing: hmac.

	self assert: verifier signatureGenerator hashFunction equals: hmac.