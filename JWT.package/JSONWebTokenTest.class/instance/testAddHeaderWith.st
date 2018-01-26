tests
testAddHeaderWith
	jwt addHeader: 'zoro' with: 'a z shaped cut'.

	self assert: jwt headers size equals: 3.

	self assert: jwt headers first key equals: 'alg'.
	self assert: jwt headers first value equals: 'HS256'.

	self assert: jwt headers second key equals: 'typ'.
	self assert: jwt headers second value equals: 'JWT'.

	self assert: jwt headers third key equals: 'zoro'.
	self assert: jwt headers third value equals: 'a z shaped cut'.