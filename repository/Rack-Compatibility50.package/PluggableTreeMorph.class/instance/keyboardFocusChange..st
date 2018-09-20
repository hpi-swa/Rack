event handling
keyboardFocusChange: aBoolean 
	aBoolean ifFalse:
		[ PluggableListMorph clearFilterAutomatically ifTrue:
			[ self hasFilter ifTrue: [ self removeFilter ] ] ].
	super keyboardFocusChange: aBoolean.