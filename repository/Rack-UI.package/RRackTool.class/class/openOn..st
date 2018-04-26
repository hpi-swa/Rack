toolbuilder
openOn: aRackFOlder

	| instance |
	instance := RRackTool new.
	instance root: aRackFOlder.
	ToolBuilder open: instance.
	^ instance