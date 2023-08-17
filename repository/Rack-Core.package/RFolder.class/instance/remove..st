modifying
remove: entryName

	| result |
	result := boxes removeAllSuchThat: [:box | box label = entryName].
	self changed.
	"Typically this object used as part of TheRack, so eagerly mark TheRack as changed as well."
	TheRack changed.
	^ result