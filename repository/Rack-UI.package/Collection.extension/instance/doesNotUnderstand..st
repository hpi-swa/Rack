*Rack-UI
doesNotUnderstand: aMessage
	"if any of the collection operations is called that way, execute it"
	(self collectionMenuOperations collect: [:op | op fourth] thenSelect: [:selAndType | aMessage selector asMutator = selAndType first])
		ifNotEmpty: [:ops | ^ self performCollectionOperation: ops first first ofType: ops first second].
	
	^ super doesNotUnderstand: aMessage