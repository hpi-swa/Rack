interactive operations
createFolderInteractively
	
	<rackOperationLabel: 'create folder' inContextMenus: true>
	
	| folderName |
	folderName := [self requestFolderName] on: RInvalidFolderName do: [^ false].
	self createFolder: folderName.