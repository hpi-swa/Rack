menu
generalMenu: aMenu
	|selfMenu|
	aMenu title: self getSelectedEntry label.
	self getSelectedEntry item addMenuOperationsTo: aMenu.
	
	aMenu addLine.
	
	selfMenu := MenuMorph new title: 'Rack Entry'.
	self getSelectedEntry addMenuOperationsTo: selfMenu.
	aMenu add: 'Rack Entry' subMenu: selfMenu.
	
	^ aMenu