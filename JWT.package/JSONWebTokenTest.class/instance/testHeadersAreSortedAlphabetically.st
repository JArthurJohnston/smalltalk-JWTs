tests
testHeadersAreSortedAlphabetically
	jwt addHeader: '101' with: 'dalmations'.
	 
	self assert: jwt headers size equals: 3.

	self assert: jwt headers first key equals: '101'.
	self assert: jwt headers first value equals: 'dalmations'.
	
	self assert: jwt headers second key equals: 'alg'.
	self assert: jwt headers second value equals: 'HS256'.

	self assert: jwt headers third key equals: 'typ'.
	self assert: jwt headers third value equals: 'JWT'.