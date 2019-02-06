node access
contentsOfNode: node

	| children |
	getChildrenSelector ifNil: [^#()].
	children := model perform: getChildrenSelector with: node item.
	^ self nodesForChildren: children inNode: node
