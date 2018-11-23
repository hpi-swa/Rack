*Rack-UI
buildYellowButtonMenu: aHand 

	| morphMenu aMenu |
	aMenu := MenuMorph new defaultTarget: self.
	aMenu title: self selectedItems externalName.

	self selectedItems addMenuOperationsTo: aMenu.
	
	aMenu addLine.
	
	morphMenu := MenuMorph new defaultTarget: self.
	super addYellowButtonMenuItemsTo: morphMenu event: ActiveEvent.
	aMenu add: 'morph menu' translated subMenu: morphMenu.
	MenuIcons decorateMenu: aMenu.
	^ aMenu