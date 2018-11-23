filtering
indicateUnfiltered
	self color: (self userInterfaceTheme color ifNil: [Color white]).
	scroller submorphsDo: [:m |
		m visible: true; backgroundColor: nil].
	self adjustSubmorphPositions.