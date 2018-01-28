tests
setUp
	hmac := SHA256 new hmac.
	parser := JWTParser newWith: hmac.