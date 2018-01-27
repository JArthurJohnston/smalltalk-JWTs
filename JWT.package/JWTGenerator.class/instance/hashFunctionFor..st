private retrieving
hashFunctionFor: aString
	^ hashFunctions at: aString ifAbsent: [ 	HashNotFound signalFor: aString ]