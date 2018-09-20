preferences
filterByLabelsOnly
	<preference: 'Filterable Trees by labels only'
		category: 'scrolling'
		description: 'When using the Filterable Lists option, set this to only match the labels, not the contents, of hierarchical lists.  Otherwise, search both labels and contents will be matched.'
		type: #Boolean>
	^ FilterByLabelsOnly ifNil: [ false ]