verification
check: anEncodedJwtString with: aSecretKey 
	|jwt encodedSignature jwtSignature|
	encodedSignature := (anEncodedJwtString splitOn: '.') last.
	jwt := JSONWebToken fromString: anEncodedJwtString.
	jwtSignature := (JWTGenerator newFor: jwt) generateSignatureUsing: aSecretKey.
	^jwtSignature = encodedSignature.
	