*Rack-UI
menuOperations
	self isUngeneric ifTrue: [^ super menuOperations].
	^ self collectionMenuOperations
		addAll: super menuOperations;
		add: 'on each element' -> self eachMenuOperations;
		yourself