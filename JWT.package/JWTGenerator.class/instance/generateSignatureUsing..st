adding
generateSignatureUsing: aKey
	^ self generateSignatureUsing: aKey withHeaders: self encodedHeader  andPayload: self encodedPayload. 