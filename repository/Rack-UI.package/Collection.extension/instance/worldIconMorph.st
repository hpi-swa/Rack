*Rack-UI
worldIconMorph

	self isUngeneric ifTrue: [^ super worldIconMorph].
	^ (RIcons icons8List64px1Icon scaledToSize: 24@24) asMorph
	