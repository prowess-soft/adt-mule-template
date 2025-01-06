%dw 2.0
output application/json skipNullOn="everywhere"
---
{
	"severity": "1",
	"reasonCode": "ADT-" ++ vars.httpStatus default null,
	"context": p('backendSystemError.backendSystem'),
	"description": "(504) External gateway timeout"
	
	}