modifying
createFolder: folderName withQuery: aBlock

	^ self 
		add: (RQueryFolder new query: aBlock; yourself) 
		named: folderName