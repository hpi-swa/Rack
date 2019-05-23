*Rack-UI-menu
addMenuOperationsTo: aMenu
	self selfMenuOperations do: [:operation | self addMenuOperation: operation to: aMenu].
	aMenu addLine.
	self memberMenuOperations do: [:operation | self addMenuOperation: operation to: aMenu].
	aMenu addLine.
	self addMenuOperation: (self class superclass name -> self baseMenuOperations) to: aMenu.
	