drag and drop
acceptDroppingMorph: aTransferMorph event: evt 

	dropItemSelector ifNil: [^ self].
	potentialDropMorph ifNil: [^ self].
	
	model
		perform: dropItemSelector
		withEnoughArguments: {
			aTransferMorph passenger. 
			potentialDropMorph withoutListWrapper. 
			aTransferMorph shouldCopy.
			aTransferMorph}.

	self resetPotentialDropMorph.
	evt hand releaseMouseFocus: self.
	Cursor normal show