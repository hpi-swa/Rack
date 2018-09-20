selection
selectedMorph: aMorph

	super selectedMorph: aMorph.
		
	"If the update came from the model, make my state consistent again."
	selectedWrapper := aMorph complexContents.
	self setSelectedParentMorph: aMorph.