serialization
encodeWith: aKey
	^ (JWTGenerator newFor: self)
		generateJwtWith: aKey.