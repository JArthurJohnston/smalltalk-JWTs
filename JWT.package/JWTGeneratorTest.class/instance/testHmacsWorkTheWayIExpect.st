initialization
testHmacsWorkTheWayIExpect
	| hmac hmac2 encoder sig1 sig2 |
	hmac := SHA256 new hmac.
	hmac2 := SHA256 new hmac.
	hmac key: testKey.
	hmac2 key: testKey.
	encoder := ZnBase64Encoder new.

	sig1 := hmac digestMessage: 'some awesome message'.
	sig2 := hmac2 digestMessage: 'some awesome message'.

	self assert: sig1 equals: sig2.