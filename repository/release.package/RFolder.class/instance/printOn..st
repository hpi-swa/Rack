printing
printOn: aStream

	aStream crlf.

	boxes do: [:b |
		b printOn: aStream.
		aStream crlf]