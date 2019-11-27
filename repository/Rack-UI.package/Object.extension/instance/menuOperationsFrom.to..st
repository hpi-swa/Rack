*Rack-UI-menu
menuOperationsFrom: baseClass to: targetClass

	^ ({baseClass} , (baseClass allSuperclasses copyUpTo: targetClass)) gather: [:class |
		(#(rackOperation rackOperationLabel:inContextMenus: rackOperationLabel:group:inContextMenus:) 
			gather: [:pragmaName | Pragma allNamed: pragmaName in: class])
			collect: [:pragma | {pragma arguments first . self . pragma method selector}]]