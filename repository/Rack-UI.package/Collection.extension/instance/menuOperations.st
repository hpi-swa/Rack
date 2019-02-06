*Rack-UI
menuOperations

	| candidateSets intersectingOperations |
	candidateSets := self collect: [:i | i menuOperations] as: OrderedCollection.
	intersectingOperations := candidateSets 
		ifEmpty: [#()]
		ifNotEmptyDo: [:set | set fold: [:result :newOperations| 
			result select: [:e | newOperations anySatisfy: [:op | op sameElements: e]]]]. 
	^ intersectingOperations collect: [:operationTuple |
		{operationTuple first . #do: . {[:each | each perform: operationTuple second]}}].
	