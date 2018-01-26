tests
testAddClaimWith
	jwt addClaim: 'email' with: 'foo@bar.com'.

	self assert: jwt claims size equals: 1.
	self assert: jwt claims first key equals: 'email'.
	self assert: jwt claims first value equals: 'foo@bar.com'.