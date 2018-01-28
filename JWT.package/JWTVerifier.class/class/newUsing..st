class initialization
newUsing: aHashingAlgorithm
	^ self new 
		signatureGenerator: (JWTSignatureGenerator newWith: aHashingAlgorithm);
		yourself.