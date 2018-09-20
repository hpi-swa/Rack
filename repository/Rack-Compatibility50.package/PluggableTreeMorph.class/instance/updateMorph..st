updating
updateMorph: morph
	
	morph complexContents refresh.
	morph refresh.
	
	morph isExpanded
		ifFalse: [self changed]
		ifTrue: [
			morph
				toggleExpandedState;
				toggleExpandedState.
			self adjustSubmorphPositions].
