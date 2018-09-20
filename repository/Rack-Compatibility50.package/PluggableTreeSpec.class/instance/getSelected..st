accessing - selection
getSelected: aSymbol
	"Indicate a single node in the tree. Only works if that node is visible, too. Use #getSelectedPath otherwise."
	
	getSelected := aSymbol.