initialization
testGenerateJwtWith
	| jwtString |
	jwtString := generator generateJwtWith: testKey.

	self
		assert: jwtString
		equals:
			'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.'
				, 'eyJlbWFpbCI6ImJvYkBidXJnZXJzLmNvbSIsImhlbGxvIjoid29ybGQifQ==.'
				, 'tkzUUoSM05Uv+/xMglbX5f79l519E/jxSPSHzRkxV48='.