instance creation
handleDropIntoWorldOf: anObject
	| manager choiceStrings values|
	manager := UIManager default.
	choiceStrings := {Text fromString: 'Hello' . anObject . 'Inspector for ' , anObject class . 'Cancel Dropping'}.
	values := {(Text fromString: 'Hello') worldIcon . anObject worldIcon . (Inspector openOn: anObject) worldIcon . nil}.
	self halt.
	^manager chooseFrom: choiceStrings values: values.