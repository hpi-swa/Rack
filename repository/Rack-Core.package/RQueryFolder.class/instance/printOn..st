printing
printOn: aStream

	self label ifNotNil: [aStream << self label. ^ self].

	^ super printOn: aStream