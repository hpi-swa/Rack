*Rack-UI
openRackStandardMorph

	"Most models can be opened using the standard ToolBuilder, so try this and fall
	back to inspecting the model if this fails."
	[ToolBuilder open: self]
		on: Error do: [^ super openRackStandardMorph]