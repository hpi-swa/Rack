*Rack-UI
isUngeneric
	"some collections, like string or UUID, are not really normal"
	"in this case, we do not want to have custom collection-like behavior for this object"
	^ self isString or: [self isKindOf: ByteArray]