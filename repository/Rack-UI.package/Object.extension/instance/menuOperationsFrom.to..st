*Rack-UI-menu
menuOperationsFrom: baseClass to: targetClass
	^ (#(#rackOperation . #rackOperationLabel:inContextMenus: . #rackOperationLabel:group:inContextMenus:)
		gather: [:pragmaName | Pragma allNamed: pragmaName from: baseClass to: targetClass])
			collect: [:pragma | {pragma arguments first . self . pragma method selector}]