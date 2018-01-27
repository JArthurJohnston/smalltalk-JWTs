adding
writeJwtSection: aCollectionOfClaimAssociations

	^ String
		streamContents: [ :stream | 
			stream nextPut: ${.
			aCollectionOfClaimAssociations  allButLast
				do: [ :eachClaim | 
					self writeClaim: eachClaim on: stream.
					stream nextPut: $,. ].
			self writeClaim: aCollectionOfClaimAssociations  last on: stream.
			stream nextPut: $}. ].