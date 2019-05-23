*Rack-UI-menu
selfMenuOperations
	"Each operation consists of 3 to 4 parameters as Array:
	{displayString . target . #selectorToPerform: . {argument1 . argument2}}
	The argument list is empty per default. The target should most likely just be 'self'.
	SubMenus can be defined via associations: 'menuTitle' -> {op1 . op2}"
	^ self menuOperations difference: self baseMenuOperations