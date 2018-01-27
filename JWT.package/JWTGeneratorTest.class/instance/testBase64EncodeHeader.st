initialization
testBase64EncodeHeader
	| encodedHeader |
	encodedHeader := generator encodedHeader.

	self assert: encodedHeader equals: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9'.