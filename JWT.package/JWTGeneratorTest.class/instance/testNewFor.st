initialization
testNewFor
	|gen|
	gen := JWTGenerator newFor: jwt.
	self assert: gen jwt equals: jwt.
	
	