A pluggable tree widget. PluggableTrees are slightly different from lists in such that they ALWAYS store the actual objects and use the label selector to query for the label of the item. PluggableTrees also behave somewhat differently in such that they do not have a "getSelected" message but only a getSelectedPath message. The difference is that getSelectedPath is used to indicate by the model that the tree should select the appropriate path. This allows disambiguation of items. Because of this, implementations of PluggableTrees must always set their internal selection directly, e.g., rather than sending the model a setSelected message and wait for an update of the #getSelected the implementation must set the selection before sending the #setSelected message. If a client doesn't want this, it can always just signal a change of getSelectedPath to revert to whatever is needed.

Instance variables:
	roots 	<Symbol>	The message to retrieve the roots of the tree.
	getSelectedPath	<Symbol> The message to retrieve the selected path in the tree.
	setSelectedPath	<Symbol> The message to set the selected path in the tree.
	setSelected	<Symbol>	The message to set the selected item in the tree.
	getChildren	<Symbol>	The message to retrieve the children of an item
	hasChildren	<Symbol>	The message to query for children of an item
	label 	<Symbol>	The message to query for the label of an item.
	icon 	<Symbol>	The message to query for the icon of an item.
	help 	<Symbol>	The message to query for the help of an item.
	menu	<Symbol>	The message to query for the tree's menu
	keyPress	<Symbol>	The message to process a keystroke.
	wantsDrop	<Symbol>	The message to query whether a drop might be accepted.
	dropItem	<Symbol>	The message to drop an item.
	enableDrag <Boolean>	Enable dragging from this tree.
	autoDeselect	<Boolean>	Whether the tree should allow automatic deselection or not.
	unusedVar	(unused)	This variable is a placeholder to fix problems with loading packages in 3.10.