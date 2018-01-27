generators
generateJwtWith: aKey
	| encodedHeader encodedPayload |
	encodedHeader := self encodedHeader.
	encodedPayload := self encodedPayload.
	^ encodedHeader , '.' , encodedPayload , '.' , (self
		generateSignatureUsing: aKey
		withHeaders: encodedHeader
		andPayload: encodedPayload).