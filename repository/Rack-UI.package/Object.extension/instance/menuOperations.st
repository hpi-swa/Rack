*Rack-UI
menuOperations

	^ (#(#rackOperation . #rackOperationLabel:inContextMenus: . #rackOperationLabel:group:inContextMenus:)
		collect: [:pragmaName | Pragma allNamed: pragmaName from: self class to: Object]) flatten
			collect: [:pragma | {pragma arguments first . pragma method selector}]