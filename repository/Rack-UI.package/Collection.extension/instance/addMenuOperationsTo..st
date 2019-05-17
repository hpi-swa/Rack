*Rack-UI
addMenuOperationsTo: aMenu
	|eachMenu selfMenu|
	aMenu title: 'a Collection (size ' , self size ,  ')'.
	self collectionMenuOperations do: [:operation | self addMenuOperation: operation to: aMenu].
	
	eachMenu := MenuMorph new title: 'on each element'.
	self eachMenuOperations do: [:operation | self addMenuOperation: operation to: eachMenu].
	aMenu add: 'on each element' subMenu: eachMenu.
	aMenu addLine.
	
	selfMenu := MenuMorph new title: 'collection'.
	self menuOperations do: [:operation | self addMenuOperation: operation to: selfMenu].
	aMenu add: 'collection' subMenu: selfMenu.
	