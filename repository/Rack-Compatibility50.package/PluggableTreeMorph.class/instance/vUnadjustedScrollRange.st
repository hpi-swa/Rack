scrolling
vUnadjustedScrollRange
	
	| range |
	range := 0.
	scroller submorphsDo: [:m | m visible ifTrue: [range := range + m height]].
	^ range