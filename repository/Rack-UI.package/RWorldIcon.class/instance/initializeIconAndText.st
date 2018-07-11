initialization
initializeIconAndText

	| iconMorph textMorph text |
	iconMorph := self object worldIconMorph.
	iconMorph isImageMorph ifTrue: [
		iconMorph image: (iconMorph image collectColors: [:c |
			ActiveWorld color negated alpha: c alpha])].
	self addMorph: iconMorph.
	iconMorph position: self position.
	text := self object worldIconText.
	textMorph := (text first: (100 min: text size)) asText asTextMorph.
	self addMorph: textMorph.
	textMorph position: self position + (((iconMorph width / 2) - (textMorph width / 2))@iconMorph height).
	textMorph textColor: Color black.