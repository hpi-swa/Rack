selection
getCurrentSelectionItem
	"Our models are supposed to return real objects, not wrappers. See PluggableTreeItemNode."
	
	| selectedObject |
	selectedObject := self getSelectedSelector
		ifNil: [^ nil]
		ifNotNil: [:symbol | model perform: symbol].
	^ scroller submorphs
		detect: [:each | each complexContents item == selectedObject]
		ifFound: [:each | each complexContents]
		ifNone: [nil]