modifying
rename: boxName to: newBoxName

	| box |
	box := self at: boxName.
	box label: newBoxName.
	self changed.
	"Typically this object used as part of TheRack, so eagerly mark TheRack as changed as well."
	TheRack changed.
	^ box
	