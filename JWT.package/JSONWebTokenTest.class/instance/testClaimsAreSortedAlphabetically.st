tests
testClaimsAreSortedAlphabetically
	jwt addClaim: 'email' with: 'foo@bar.com'.
	jwt addClaim: '001' with: '001000100100101'.
	jwt addClaim: 'bananna' with: 'hey its bananna'.
	jwt addClaim: 'zinthos' with: 'azaroth metrione'.

	self assert: jwt claims size equals: 4.

	self assert: jwt claims first key equals: '001'.
	self assert: jwt claims first value equals: '001000100100101'.

	self assert: jwt claims second key equals: 'bananna'.
	self assert: jwt claims second value equals: 'hey its bananna'.

	self assert: jwt claims third key equals: 'email'.
	self assert: jwt claims third value equals: 'foo@bar.com'.

	self assert: jwt claims fourth key equals: 'zinthos'.
	self assert: jwt claims fourth value equals: 'azaroth metrione'.