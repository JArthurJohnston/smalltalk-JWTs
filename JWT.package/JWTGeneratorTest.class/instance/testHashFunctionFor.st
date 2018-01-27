initialization
testHashFunctionFor
	| hashFunction |
	hashFunction := generator hashFunctionFor: 'HS256'.
	self assert: hashFunction notNil.
	self assert: hashFunction class equals: HMAC.
	self assert: (hashFunction instVarAt: 1) class equals: SHA256 new class.
	"SHA256 new will return either a SHA256NonPrimitive or a SHA256WithPrimitive"