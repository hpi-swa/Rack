*Rack-Compatibility50
setSelectedPath: aMorph

	| items wrapperPath |
	setSelectedPathSelector ifNotNil: [:setSelectedPathSelector |
		wrapperPath := selectedWrapper 
			ifNil: [#()]
			ifNotNil: [
				wrapperPath := {selectedWrapper} asOrderedCollection.
				[wrapperPath last parent notNil] 
					whileTrue: [wrapperPath addLast: wrapperPath last parent].
				wrapperPath].
		items := wrapperPath collect: [:w | w item].
		model
			perform: setSelectedPathSelector
			with: items].
			
