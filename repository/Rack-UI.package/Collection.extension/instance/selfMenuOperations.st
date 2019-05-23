*Rack-UI
selfMenuOperations
	self isUngeneric ifTrue: [^ super selfMenuOperations].
	^ self collectionMenuOperations
		addAll: super selfMenuOperations;
		add: 'on each element' -> self eachMenuOperations;
		yourself