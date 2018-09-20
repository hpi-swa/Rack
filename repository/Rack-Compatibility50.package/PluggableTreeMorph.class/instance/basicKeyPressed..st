event handling
basicKeyPressed: aChar

	self updateLastKeystrokes: aChar.
	
	model okToChange ifFalse: [^ false].
	
	PluggableListMorph filterableLists
		ifTrue: [self triggerFilterTree]
		ifFalse: [self selectNextMorphByFilter].
	
	^ true