tests
testInitialize
	self assert: jwt claims isEmpty.
	self assert: jwt headers size equals: 2.