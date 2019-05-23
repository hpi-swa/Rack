*Rack-UI-menu
menuOperationsFrom: baseClass to: targetClass
	^ (#(#rackOperation . #rackOperationLabel:inContextMenus: . #rackOperationLabel:group:inContextMenus:)
		collect: [:pragmaName | Pragma allNamed: pragmaName from: baseClass to: targetClass]) flatten
			collect: [:pragma | {pragma arguments first . self . pragma method selector}]