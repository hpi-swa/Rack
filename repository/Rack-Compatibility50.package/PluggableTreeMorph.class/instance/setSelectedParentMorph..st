selection
setSelectedParentMorph: aMorph

	"The model may not have access to the parent object in terms of this tree structure."
	setSelectedParentSelector ifNotNil: [:symbol |
		model
			perform: symbol
			with: (selectedWrapper ifNotNil: [:w | w parent ifNotNil: [:pw | pw item]])].