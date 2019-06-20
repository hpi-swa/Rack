initialization
initializeIconAndText

	| iconMorph textMorph text contrastColor |
	iconMorph := self object worldIconMorphIn: self owner.
	contrastColor := (ActiveWorld colorAt: self bottomLeft belowMorph: self) negated .
	iconMorph isImageMorph ifTrue: [
		iconMorph image: (iconMorph image collectColors: [:c |
			contrastColor alpha: c alpha])].
	self addMorph: iconMorph.
	iconMorph position: self position.
	text := self object worldIconTextIn: self owner.
	textMorph := (text first: (100 min: text size)) asText asTextMorph.
	self addMorph: textMorph.
	textMorph position: self position + (((iconMorph width / 2) - (textMorph width / 2))@iconMorph height).
	textMorph textColor: contrastColor.