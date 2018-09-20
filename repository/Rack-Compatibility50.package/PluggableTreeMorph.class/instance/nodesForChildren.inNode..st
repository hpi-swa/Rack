node access
nodesForChildren: aCollection inNode: anObject

	^ aCollection isSequenceable
		ifTrue: [aCollection collectWithIndex: 
			[:item :index |
				self instantiateNodeWithContents: item index: index parent: anObject]]
		ifFalse: [ | count |
			count := 0. "artificial index."
			aCollection collect: 
				[:item |
					count := count + 1.
					self instantiateNodeWithContents: item index: count parent: anObject]]