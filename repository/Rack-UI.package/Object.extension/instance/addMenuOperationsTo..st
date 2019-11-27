*Rack-UI-menu
addMenuOperationsTo: aMenu
	self menuOperations do: [:operation | self addMenuOperation: operation to: aMenu].
	aMenu addLine.
	self memberMenuOperations do: [:operation | self addMenuOperation: operation to: aMenu].