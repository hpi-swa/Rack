*Rack-UI-menu
addMenuOperationsTo: aMenu
	| membersMenu |
	self menuOperations do: [:operation | self addMenuOperation: operation to: aMenu].
	aMenu addLine.
	membersMenu := MenuMorph new title: 'member operations'.
	aMenu add: 'member operations' subMenu: membersMenu.
	self memberMenuOperations do: [:operation | 
		self addMenuOperation: operation to: membersMenu].