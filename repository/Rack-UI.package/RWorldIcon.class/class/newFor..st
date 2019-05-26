instance creation
newFor: anObject
	anObject ifNil:[^anObject].
	^ self basicNew
		object: anObject;
		initialize;
		yourself