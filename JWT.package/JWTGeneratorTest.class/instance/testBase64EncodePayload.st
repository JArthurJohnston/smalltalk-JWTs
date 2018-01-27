initialization
testBase64EncodePayload
	| encodedPayload |
	encodedPayload := generator encodedPayload.

	self assert: encodedPayload equals: 'eyJlbWFpbCI6ImJvYkBidXJnZXJzLmNvbSIsImhlbGxvIjoid29ybGQifQ=='.