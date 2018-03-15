testing
testPostProcessingWorks

	testFolder 
		query: [testObjects];
		postProcessing: [:objects | (objects collect: [:o | o numbers]) sorted].
	self assert: #(10 20) equals: testFolder contents.