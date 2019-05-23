*Rack-UI-menu
addMenuOperation: operation to: aMenu
	operation isCollection ifTrue: [ aMenu "single operation"
		addWithLabel: operation first
		enablementSelector: nil 
		target: operation second
		selector: operation third
		argumentList: (operation size >= 4 ifTrue: [operation fourth] ifFalse: [#()])
	] ifFalse: [ "an association defining a sub-menu"
		operation value ifNotEmpty: [ |subMenu|
			subMenu := MenuMorph new title: operation key.
			operation value do: [:op | self addMenuOperation: op to: subMenu].
			aMenu add: operation key subMenu: subMenu.
		]
	]