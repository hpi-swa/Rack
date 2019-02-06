event handling
updateLastKeystrokes: aChar

	| milliseconds slowKeyStroke |
	milliseconds := Time millisecondClockValue.
	slowKeyStroke := (Time milliseconds: milliseconds since: lastKeystrokeTime)
		> (PluggableListMorph filterableLists ifTrue: [ 500 ] ifFalse: [ 300 ]).
	lastKeystrokeTime := milliseconds.
	
	slowKeyStroke
		ifTrue: [lastKeystrokes := aChar asLowercase asString]
		ifFalse: [lastKeystrokes := lastKeystrokes , aChar asLowercase asString.].