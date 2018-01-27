initialization
testGenerateSignatureUsing
	| signature |
	signature := generator
		generateSignatureUsing: testKey.

	self assert: signature equals: 'tkzUUoSM05Uv+/xMglbX5f79l519E/jxSPSHzRkxV48='.