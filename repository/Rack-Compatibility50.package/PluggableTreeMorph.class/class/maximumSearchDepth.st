preferences
maximumSearchDepth
	<preference: 'Maximum tree search depth'
		category: 'scrolling'
		description: 'When using the Filterable Lists option, this specifies the maximum depth that will be searched below the current selection in of the hierarchy.'
		type: #Number>
	^ MaximumSearchDepth ifNil: [ 1 ]