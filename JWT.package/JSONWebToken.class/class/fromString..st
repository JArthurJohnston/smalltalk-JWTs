instance creation
fromString: anEncodedJwtString
	^JWTParser new createJwtFrom: anEncodedJwtString.