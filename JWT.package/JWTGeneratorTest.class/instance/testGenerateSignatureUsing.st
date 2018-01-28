initialization
testGenerateSignatureUsing
	| signature secondGenerator hmac encoder |
	secondGenerator := JWTGenerator newFor: jwt.
	signature := generator generateSignatureUsing: testKey.
	self assert: signature equals: 'tkzUUoSM05Uv+/xMglbX5f79l519E/jxSPSHzRkxV48='.

	self
		assert: (secondGenerator generateSignatureUsing: testKey)
		equals: 'tkzUUoSM05Uv+/xMglbX5f79l519E/jxSPSHzRkxV48='.

