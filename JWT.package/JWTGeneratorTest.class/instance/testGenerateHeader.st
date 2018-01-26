initialization
testGenerateHeader
	| expectedHeader actualHeader |
	expectedHeader := '{"alg":"HS256","typ":"JWT"}'.

	actualHeader := generator generateHeader.

	self assert: actualHeader equals: expectedHeader.