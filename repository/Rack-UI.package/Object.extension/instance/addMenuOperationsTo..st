*Rack-UI-menu
addMenuOperationsTo: aMenu
	| membersMenu |
	self menuOperations do: [:operation | self addMenuOperation: operation to: aMenu].
	aMenu addLine.
	self memberMenuOperations ifNotEmpty: [:operations | 
		membersMenu := MenuMorph new title: 'member operations'.
		aMenu add: 'member operations' subMenu: membersMenu.
		operations do: [:operation | 
			self addMenuOperation: operation to: membersMenu]]