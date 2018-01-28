tests
testCreateAndVerifyJWT
	| jwt encodedJwtString key parsedJWT |
	key := 'Some random (preferably long) string used solely as a key for hashing a jwt.'.
	jwt := JSONWebToken new.
	jwt addClaim: 'hello' with: 'world'.
	encodedJwtString := jwt encodeWith: key.

	parsedJWT := JSONWebToken fromString: encodedJwtString.
	self assert: parsedJWT headers equals: jwt headers.
	self assert: parsedJWT claims equals: jwt claims.