instance creation
newFor: anObject

	^ self basicNew
		object: anObject;
		initialize;
		yourself