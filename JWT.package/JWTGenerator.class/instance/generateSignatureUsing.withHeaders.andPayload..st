adding
generateSignatureUsing: aKey withHeaders: encodedJwtHeaders andPayload: encodedJwtPayload
	| hashFunction signature |
	hashFunction := self hashFunctionFor: jwt algorithmName.
	hashFunction key: aKey.
	signature := hashFunction digestMessage: encodedJwtHeaders  , '.' , encodedJwtPayload.
	^ self encode: signature.