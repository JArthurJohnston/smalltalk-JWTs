verification
verify: aJWTString with: aSecretKeyString
	| splitJwt header payload signature generatedSignature |
	splitJwt := aJWTString splitOn: '.'.
	header := splitJwt first.
	payload := splitJwt second.
	signature := urlEncoder decode: splitJwt third.
	generatedSignature := signatureGenerator
		createSignatureWithHeaders: header
		andPayload: payload
		using: aSecretKeyString.
	self halt.
	^ generatedSignature = signature asString.