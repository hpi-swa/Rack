toolbuilder
open

	| instance |
	instance := RRackTool new.
	ToolBuilder open: instance.
	^ instance