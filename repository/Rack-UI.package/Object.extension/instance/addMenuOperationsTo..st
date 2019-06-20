*Rack-UI-menu
addMenuOperationsTo: aMenu
	self selfMenuOperations do: [:operation | self addMenuOperation: operation to: aMenu].
	aMenu addLine.
	self memberMenuOperations do: [:operation | self addMenuOperation: operation to: aMenu].
	aMenu addLine.
	self addMenuOperation: (self baseMenuOperationsName -> self baseMenuOperations) to: aMenu.
	