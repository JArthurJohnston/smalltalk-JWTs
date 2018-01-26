initialization
setUp
	jwt := JSONWebToken new addClaim: 'hello' with: 'world';
		addClaim: 'email' with: 'bob@burgers.com';
		yourself.
	generator := JWTGenerator newFor: jwt.