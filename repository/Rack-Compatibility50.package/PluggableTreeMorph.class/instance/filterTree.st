filtering
filterTree
	self hasFilter ifFalse:
		[ self removeFilter.
		^ self ].
	self indicateFiltered.
	"Clean up the tree."
	(self selectedMorph
		ifNil: [ self roots ]
		ifNotNil:
			[ : m | {m} ]) do:
		[ : item | | filteredItems |
		item applyFilter: lastKeystrokes.
		item visible ifFalse:
			[ "Do not hide the item where the filter is based on."
			item show.
			item isExpanded ifFalse: [ item toggleExpandedState ] ].
		filteredItems := self filteredItems.
		"If configured as a navigation tool, advance the selection."
		(PluggableTreeMorph maximumSearchDepth = 1 and: [ PluggableTreeMorph filterByLabelsOnly not ]) ifTrue:
			[ |toBeExpanded|
			(filteredItems notEmpty and: [ selectedMorph ~= filteredItems last ]) ifTrue:
				[ self setSelectedMorph:
					(toBeExpanded := selectedMorph
						ifNil: [ filteredItems first ]
						ifNotNil: [ filteredItems after: selectedMorph ]).
				toBeExpanded isExpanded ifFalse: [ toBeExpanded toggleExpandedState ] ] ] ].
	self adjustSubmorphPositions