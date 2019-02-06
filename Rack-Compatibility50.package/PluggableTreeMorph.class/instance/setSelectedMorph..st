selection
setSelectedMorph: aMorph
	
	selectedWrapper := aMorph complexContents.
	
	"Let the model now about the selected object, not wrapper."
	setSelectionSelector ifNotNil: [:symbol |
		model 
			perform: symbol 
			with: (selectedWrapper ifNotNil: [:w | w item])].
		
	self setSelectedParentMorph: aMorph.
	self setSelectedPath: aMorph.