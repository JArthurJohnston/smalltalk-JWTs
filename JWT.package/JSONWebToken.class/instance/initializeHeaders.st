getter
initializeHeaders
	headers := Dictionary new 
		at: 'alg' put: 'HS256';
		at: 'typ' put: 'JWT';
		yourself.