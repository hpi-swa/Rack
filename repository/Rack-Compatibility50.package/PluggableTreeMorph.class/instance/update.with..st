updating
update: what with: anObject

	super update: what with: anObject.
	
	what == #objectChanged ifTrue: [
		self updateFromChangedObject: anObject].