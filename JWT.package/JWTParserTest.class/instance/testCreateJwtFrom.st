tests
testCreateJwtFrom
	| jwt encodedJwtString |
	encodedJwtString := 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.'
		, 'eyJlbWFpbCI6ImJvYkBidXJnZXJzLmNvbSIsImhlbGxvIjoid29ybGQifQ=='
		, 'tkzUUoSM05Uv+/xMglbX5f79l519E/jxSPSHzRkxV48='.

	jwt := parser createJwtFrom: encodedJwtString.

	self assert: jwt headers size equals: 2.
	self assert: jwt headers first key equals: 'alg'.
	self assert: jwt headers first value equals: 'HS256'.

	self assert: jwt headers second key equals: 'typ'.
	self assert: jwt headers second value equals: 'JWT'.

	self assert: jwt claims size equals: 2.
	self assert: jwt claims first key equals: 'email'.
	self assert: jwt claims first value equals: 'bob@burgers.com'.
	
	self assert: jwt claims second key equals: 'hello'.
	self assert: jwt claims second value equals: 'world'.
	