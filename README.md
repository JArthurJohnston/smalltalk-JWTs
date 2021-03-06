# Smalltalk JWTs

## Dependencies

*	NeoJSON: Specifically the NeoJSONReader class.
*	Zinc: I only used the ZnBase64Encoder. 
*	The SHA256 and HMAC classes found in Pharo's Cryptography package.

## Usage

1.	Create and build your JSONWebToken

```
	token := JSONWebToken new.
```

2.	JWTs are no good unless you can load them up with information. The main way to accomplish this is through claims. Adding claims to a jwt is really easy:

```
	token 
		addClaim: 'foo' with: 'bar';
		addClaim: 'exp' with: DateTime now asString.
```
As you can see in this example, claims have to be strings. And each one has a title (foo) and a value (bar).

3.	Once you've added all you claims, you just need to encode you jwt into a string that you can attach to your web request. To do this you'll need a key. This key is a string thats used to sign the jwt.


```
	secretKey := 'One key to rule them all, one key to find them. One key to bring them all and in the darkenss bind them'.
	jwtString := token encodedWith: secretKey.
```
You can now attach your jwtString to your request/response in any way you choose. Though this is typically done via a header.


4.	Of course, creating a JWT is only half the battle. You need to verify any JWTs that are sent to you from your client apps. To do this you'll need the same key that was used to create the jwt in the first place. This check method returns a boolean.

```	
	jwtVerified := JWTVerifier check: encodedJwtString with: secretKey.
	jwtVerified ifTrue: [] ifFalse: [].
``` 

5.	Now that you've verified your jwt, you probably want to look at its data. The main way to do this is by accessing the jwt's claims. This will return a list of all the claims that were added to the jwt. Each claim is an association.

```
	token 
		addClaim 'foo' with: 'bar';
		addClaim 'iat' with: Date now asString.
	token claims. 
		returns { 'foo' -> 'bar', 'iat' -> ' Mon Jan 29 2018 12:54:09 GMT-0500 (EST)' }
```
