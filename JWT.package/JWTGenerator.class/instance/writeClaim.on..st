adding
writeClaim: anAssociation on: aStream
	aStream nextPut: $";
		nextPutAll: anAssociation key;
		nextPutAll: '":"';
		nextPutAll: anAssociation value;
		nextPut: $".