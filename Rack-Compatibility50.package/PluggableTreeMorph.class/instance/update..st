updating
update: what
	what ifNil:[^self].
	what == getRootsSelector ifTrue:[
		self wrapRoots: (model perform: getRootsSelector).
		^ self].
	
	what == getSelectedPathSelector ifTrue:[
		self
			selectPath: (model perform: getSelectedPathSelector)
			in: (scroller submorphs at: 1 ifAbsent: [^self]).
		^ self].
		
	what == #expandRootsRequested ifTrue: [
		self expandRoots.
		^ self].
	
	super update: what.
