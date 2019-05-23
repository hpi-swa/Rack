menu
generalMenu: aMenu
	aMenu title: self getSelectedEntry label.
	self getSelectedEntry item addMenuOperationsTo: aMenu.
	aMenu addLine.
	
	self addMenuOperation: ('Rack Entry' -> self getSelectedEntry menuOperations) to: aMenu.
	
	^ aMenu