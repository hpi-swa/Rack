event handling
mouseDown: evt
	| aMorph selectors |
	
	aMorph := self itemFromPoint: evt position.
	evt yellowButtonPressed  "First check for option (menu) click"
		ifTrue: [
			(PluggableListMorph menuRequestUpdatesSelection and: [model okToChange]) ifTrue: [
				aMorph == selectedMorph 
					ifFalse: [self setSelectedMorph: aMorph]].
			^ self yellowButtonActivity: evt shiftPressed].
	(aMorph notNil and:[aMorph inToggleArea: (aMorph point: evt position from: self)])
		ifTrue:[^self toggleExpandedState: aMorph event: evt]. 
	aMorph ifNil:[^super mouseDown: evt].
	
	aMorph highlightForMouseDown.
	self setProperty: #highlightedMorph toValue: aMorph.
	
	selectors := Array 
		with: #click:
		with: (self doubleClickEnabled ifTrue: [#doubleClick:] ifFalse: [nil])
		with: nil
		with: (self dragEnabled ifTrue:[#startDrag:] ifFalse:[nil]).
	evt hand waitForClicksOrDrag: self event: evt selectors: selectors threshold: HandMorph dragThreshold "pixels".