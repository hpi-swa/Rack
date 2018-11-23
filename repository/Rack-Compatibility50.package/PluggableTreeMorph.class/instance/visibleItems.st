geometry
visibleItems
	^ self items ifNotEmpty:
		[ : items | items
			copyFrom: self topVisibleRowIndex
			to: self bottomVisibleRowIndex ]