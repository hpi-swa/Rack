menus
buildMetaMenu: evt

	^ super buildMetaMenu: evt
	"| menu morphMenu |
	menu := MenuMorph new defaultTarget: self.
	menu addStayUpItem.

	self object addMenuOperationsTo: menu.
	menu addLine.
	self addMenuOperation: (self class name -> self menuOperations) to: menu.
	
	
	morphMenu := super buildMetaMenu: evt.
	menu add: 'morph menu' translated subMenu: morphMenu.
	
	^ menu"