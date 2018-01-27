initialization
testHashFunctionForThrowsExceptionForUnknownHashFunction
	|expectedError|
	[ generator hashFunctionFor: 'some other hash'. ]
		on: HashNotFound
		do: [ :error | 
			expectedError := error.
			self assert: error messageText equals: 'No hash function found for: some other hash'. ].
	self assert: expectedError notNil.