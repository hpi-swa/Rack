*Rack-UI
performCollectionOperation: selector ofType: typeObject
	typeObject perform: selector withArguments: {self select: [:o | typeObject fits: o]}.