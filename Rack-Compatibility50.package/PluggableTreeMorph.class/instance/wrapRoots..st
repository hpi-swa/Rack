updating
wrapRoots: someObjects

	rootWrappers := someObjects collect: [:item|
		self nodeClass with: item model: self].
	self list: rootWrappers.