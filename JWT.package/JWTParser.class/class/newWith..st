class-initialization
newWith: aHMAC 
	^self new 
		hashingAlgorithm: aHMAC; 
		yourself.