tests
testIconsDoNotCopyTheirObject

	| copiedIcon icon theObject |
	theObject := Object new.
	icon := RWorldIcon newFor: theObject.
	copiedIcon := icon duplicate.
	self assert: icon object = copiedIcon object. 