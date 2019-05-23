*Rack-UI
eachMenuOperations

	| candidateSets intersectingOperations |
	candidateSets := self collect: [:i | i menuOperations] as: OrderedCollection.
	intersectingOperations := candidateSets 
		ifEmpty: [#()]
		ifNotEmptyDo: [:set | set fold: [:result :newOperations| 
			result select: [:e | newOperations anySatisfy: [:op | "equal but their target (second element)"
				(op size = e size) and: [(1 to: op size) allSatisfy: [:i | (i = 2) or: [(op at: i) = (e at: i)]]]]]]].
	^ intersectingOperations collect: [:op |
		{op first . self . #do: . {[:each | each perform: op third]}}].
	