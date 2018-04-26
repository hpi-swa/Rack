as yet unclassified
setUp

	testObject1 := RackTestObject new numbers: 10; yourself.
	testObject2 := RackTestObject new numbers: 20; yourself.
	testObjects := {testObject1 . testObject2}.
	testFolder := RQueryFolder new
					query: [testObjects select: [:o | o numbers > 10]];
					postProcessing: [:objects | objects collect: [:o | o numbers]];
					yourself.
					
	