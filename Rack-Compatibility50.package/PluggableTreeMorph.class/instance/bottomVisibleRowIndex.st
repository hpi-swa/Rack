geometry
bottomVisibleRowIndex
	| itemAtBottom |
	itemAtBottom := self itemFromPoint: self bottomLeft + (3 @ -3).
	^ itemAtBottom
		ifNil: [ scroller submorphs size ]
		ifNotNil:
			[ : item | scroller submorphs indexOf: item ]