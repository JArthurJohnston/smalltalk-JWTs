tests
testHeaders
	self assert: jwt headers size equals: 2.

	self assert: jwt headers first key equals: 'alg'.
	self assert: jwt headers first value equals: 'HS256'.

	self assert: jwt headers second key equals: 'typ'.
	self assert: jwt headers second value equals: 'JWT'.