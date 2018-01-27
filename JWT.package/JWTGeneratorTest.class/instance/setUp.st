initialization
setUp
	jwt := JSONWebToken new addClaim: 'hello' with: 'world';
		addClaim: 'email' with: 'bob@burgers.com';
		yourself.
	generator := JWTGenerator newFor: jwt.
	testKey := 'Guinevere had green eyes Guinevere had green eyes ' , 'Like yours, milady like yours '
				, 'When shed walk down through the garden ' , 'In the morning after it rained'