dropping/grabbing
startDragging: evt

	| transferMorph |
	transferMorph := RTransferMorph withPassenger: self object from: self.
	transferMorph position: evt hand positionInWorld.
	evt hand grabMorph: self