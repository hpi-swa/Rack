event handling
specialKeyPressed: asciiValue

	(super specialKeyPressed: asciiValue)
		ifTrue: [^ true].
		
	(#(8 13) includes: asciiValue) ifTrue: [
		"backspace key" 
		self removeFilter.
		^ true].

	^ false