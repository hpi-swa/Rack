geometry
charactersOccluded
	^ self visibleItems
		inject: 0
		into:
			[ : sum : each | sum + each charactersOccluded ]