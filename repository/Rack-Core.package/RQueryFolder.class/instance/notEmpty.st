testing
notEmpty

	^ [self query value notEmpty] on: Error do: [#()]