drag and drop
wantsDroppedMorph: aTransferMorph event: anEvent

	dropItemSelector ifNil: [^ false].
	wantsDropSelector ifNil: [^ true].

	(aTransferMorph isKindOf: TransferMorph) ifFalse: [^ false].

	^ model perform: wantsDropSelector withEnoughArguments: {
		aTransferMorph passenger.
		aTransferMorph dragTransferType.
		aTransferMorph source.
		aTransferMorph}