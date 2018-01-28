tests
testCheckWith
	| encodedJWTString secretKey theWrongKey |
	encodedJWTString := 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.'
		, 'eyJmb28iOiJiYXIiLCJoZWxsbyI6IndvcmxkIn0=.' , 'BRFlTMYqCVxs9/DhMIEGysdGmMTszw/tbwh3mpUa/7U='.
	secretKey := 'One key to rule them all. One key to find them. One key to bring them all and in the darkness, bind them.'.
	theWrongKey := 'That weird song that spock sang about Bilbo Baggins. Seriously, look it up. Youll never see Leonard Nemoy the same again'.


	self assert: (JWTVerifier check: encodedJWTString with: secretKey).
	self deny: (JWTVerifier check: encodedJWTString  with: theWrongKey)