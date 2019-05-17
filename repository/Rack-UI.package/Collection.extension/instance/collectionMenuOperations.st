*Rack-UI
collectionMenuOperations
	|result|
	result := OrderedCollection new.
	((DomainObjectType allSubclasses collect: [:typeClass | typeClass instance]) reject: [:typeObj | (self select: [:o | typeObj fits: o]) isEmpty]) do: [:typeObject |
		result addAll: ((Pragma allNamed: #collectionOperationLabel:inContextMenus: from: typeObject class to: DomainObjectType)
			collect: [:pragma | {pragma arguments first . #performCollectionOperation:ofType: . {pragma method selector . typeObject}}])].
	^ result.