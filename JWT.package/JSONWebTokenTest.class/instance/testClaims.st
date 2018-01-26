tests
testClaims
	jwt addClaim: 'email' with: 'foo@bar.com'.
	jwt addClaim: 'super secret' with: 'pizza party'.

	self assert: jwt claims size equals: 2.
	self assert: jwt claims first key equals: 'email'.
	self assert: jwt claims first value equals: 'foo@bar.com'.

	self assert: jwt claims second key equals: 'super secret'.
	self assert: jwt claims second value equals: 'pizza party'.