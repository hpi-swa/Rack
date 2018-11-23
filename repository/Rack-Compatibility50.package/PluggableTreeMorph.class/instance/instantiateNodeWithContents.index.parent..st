node access
instantiateNodeWithContents: item index: aNumber parent: anObject

	^ (self nodeClass with: item model: self)
		index: aNumber;
		parent: anObject