adding
encode: aString
	^ (base64UrlEncoder encode: aString asByteArray) asString.