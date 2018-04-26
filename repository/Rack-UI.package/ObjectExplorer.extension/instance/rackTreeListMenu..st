*Rack-UI
rackTreeListMenu: aMenu
	<treeListMenu>
	<menuPriority: 100>

	self object menuOperations do: [:operation |
		aMenu 
			addWithLabel: operation arguments first
			enablementSelector: nil 
			target: self object
			selector: operation method selector
			argumentList: #()].
		
	aMenu addLine.
				
	^ aMenu