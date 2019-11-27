initialization
initializeIconAndText

	| iconMorph textMorph text contrastColor |
	contrastColor := (ActiveWorld colorAt: self bottomLeft belowMorph: self) negated .
	
	iconMorph := self object worldIconMorphIn: self owner.
	self addMorph: iconMorph.
	text := self object worldIconTextIn: self owner.
	textMorph := (text first: (100 min: text size)) asText asTextMorph.
	self addMorphBack: textMorph.
	textMorph textColor: contrastColor.