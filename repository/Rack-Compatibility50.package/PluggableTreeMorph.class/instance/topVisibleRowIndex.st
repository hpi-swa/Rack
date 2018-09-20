geometry
topVisibleRowIndex
	^ scroller submorphs indexOf: (self itemFromPoint: self topLeft+(3@3))