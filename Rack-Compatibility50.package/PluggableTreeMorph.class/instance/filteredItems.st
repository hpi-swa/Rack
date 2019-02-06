filtering
filteredItems
	"Answer the items which visible because they matched the current filters."
	^ self items select: [ : each | each visible ]