*Rack-UI
collectionMenuOperations
	|result|
	self isUngeneric ifTrue: [^ #()].
	result := OrderedCollection new.
	((DomainObjectType allSubclasses collect: [:typeClass | typeClass instance]) reject: [:typeObj | (self select: [:o | o isDomainObject and: [typeObj fits: o]]) isEmpty]) do: [:typeObject |
		result addAll: ((Pragma allNamed: #collectionOperationLabel:inContextMenus: from: typeObject class to: DomainObjectType)
			collect: [:pragma | {pragma arguments first . self . #performCollectionOperation:ofType: . {pragma method selector . typeObject}}])].
	^ result.