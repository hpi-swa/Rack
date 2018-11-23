menu
generalMenu: aMenu

	self getSelectedEntry item addMenuOperationsTo: aMenu.
	
	aMenu addLine.
	
	self getSelectedEntry addMenuOperationsTo: aMenu.
	
	^ aMenu