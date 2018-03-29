class initialization
install

	(Smalltalk includesKey: #TheRack) ifFalse: [
		Smalltalk at: #TheRack put: self new]