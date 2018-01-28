de-serialization
createJwtFrom: aString
	| sections headers claims |
	sections := aString splitOn: '.'.
	headers := NeoJSONReader fromString: (self decode: sections first).
	claims := NeoJSONReader fromString: (self decode: sections second).
	^ JSONWebToken new 
		headers: headers;
		payload: claims;
		yourself.