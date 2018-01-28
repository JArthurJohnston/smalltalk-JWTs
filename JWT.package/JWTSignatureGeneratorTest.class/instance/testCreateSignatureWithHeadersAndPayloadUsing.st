tests
testCreateSignatureWithHeadersAndPayloadUsing
	| generatedSignature encodedHeaders encodedPayload secretKey |
	encodedHeaders := 'eyJhbGciOiAiSFMyNTYiLCJ0eXAiOiAiSldUIn0='.
	encodedPayload := 'eyJlbWFpbCI6ImpvZS5hLmpvaG5zdG9uQGdtYWlsLmNvbSJ9'.
	secretKey := 'There and Back Again. A Hobbits Holiday. By Bilbo and Frodo Baggins.'.

	generatedSignature := generator
		createSignatureWithHeaders: encodedHeaders
		andPayload: encodedPayload
		using: secretKey.

	self assert: generatedSignature equals: 'óÊ>#ëÃ¬EØ±°C¯¥ÐfL3Èpã0xÌ'