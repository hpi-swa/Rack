interactive operations
createFolderWithQueryInteractively

	<rackOperationLabel: 'create soup query folder' inContextMenus: true>

	| folderName aBlock aBlockSource |
	folderName := [self requestFolderName] on: RInvalidFolderName do: [^ false].
	aBlockSource := UIManager default 
		request: 'Please enter a block returning the content of the folder' 
		initialAnswer: '[  ]'.
	aBlockSource isEmptyOrNil ifTrue: [^ false].
	aBlock := Compiler evaluate: aBlockSource.
	self createFolder: folderName withQuery: aBlock