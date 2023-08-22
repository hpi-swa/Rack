event handling
keyPressed: character

	^ character caseOf: {
		[Character space] -> [self getSelectedEntry item openRackStandardMorph].
		[Character delete] -> [self getSelectedEntry remove]
	} otherwise: [false]