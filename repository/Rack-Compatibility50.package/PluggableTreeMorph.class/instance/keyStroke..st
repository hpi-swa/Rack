event handling
keyStroke: event

	^ (super keyStroke: event)
		ifTrue: [true]
		ifFalse: [self basicKeyPressed: event keyCharacter].