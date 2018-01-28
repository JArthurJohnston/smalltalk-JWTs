generators
createSignatureWithHeaders: encodedHeaders andPayload: encodedPayload using: secretKey
	hashFunction key: secretKey.
	^ (hashFunction digestMessage: encodedHeaders , ',' , encodedPayload) asString.