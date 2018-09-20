updating
updateFromChangedObject: anObject

	scroller submorphs
		detect: [:morph | morph complexContents item == anObject]
		ifFound: [:morph | self updateMorph: morph]
		ifNone: ["Ignore the request. Object may not be visible anyway."].