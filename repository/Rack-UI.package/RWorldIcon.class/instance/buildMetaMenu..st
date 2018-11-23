menus
buildMetaMenu: evt

	| menu morphMenu |
	menu := MenuMorph new defaultTarget: self.
	menu addStayUpItem.

	self object addMenuOperationsTo: menu.
	
	menu addLine.
	
	morphMenu := super buildMetaMenu: evt.
	menu add: 'morph menu' translated subMenu: morphMenu.
	
	^ menu