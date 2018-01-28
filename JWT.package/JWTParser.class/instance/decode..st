private-parsing
decode: anEncodedString
	^ (encoder decode: anEncodedString) asString.