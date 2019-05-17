*Rack-UI
addMenuOperation: operation to: aMenu
	aMenu 
		addWithLabel: operation first
		enablementSelector: nil 
		target: self
		selector: operation second
		argumentList: (operation size = 3 ifTrue: [operation third] ifFalse: [#()])