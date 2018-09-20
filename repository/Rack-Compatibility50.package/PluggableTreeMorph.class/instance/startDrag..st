drag and drop
startDrag: evt 
	
	| itemMorph |
	self dragItemSelector ifNil: [^ self].
	evt hand hasSubmorphs ifTrue: [^ self].
	self model okToChange ifFalse: [^ self].
	
	itemMorph := scroller submorphs
		detect: [:any | any highlightedForMouseDown]
		ifNone: [^ self].

	"Prepare visuals."
	itemMorph highlightForMouseDown: false.
	self setSelectedMorph: itemMorph.

	[ "Initiate drag."
		(self model perform: self dragItemSelector with: itemMorph withoutListWrapper) ifNotNil: [:passenger | | ddm |
			ddm := (self valueOfProperty: #dragTransferClass ifAbsent: [TransferMorph]) withPassenger: passenger from: self.
			ddm dragTransferType: (self dragTypeSelector ifNotNil: [:s | self model perform: s with: itemMorph withoutListWrapper]).
			ddm updateFromUserInputEvent: evt.
			self dragStartedSelector ifNotNil: [:s | self model perform: s with: itemMorph with: ddm].
			evt hand grabMorph: ddm].
	] ensure: [
		Cursor normal show.
		evt hand releaseMouseFocus: self].