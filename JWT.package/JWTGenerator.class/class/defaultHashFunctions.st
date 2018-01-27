instance creation
defaultHashFunctions
	^ Dictionary new at: 'HS256' put: SHA256 new hmac;
		yourself.