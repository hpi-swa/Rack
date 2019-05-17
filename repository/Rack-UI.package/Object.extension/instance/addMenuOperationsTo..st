*Rack-UI
addMenuOperationsTo: aMenu

	self menuOperations do: [:operation | self addMenuOperation: operation to: aMenu]