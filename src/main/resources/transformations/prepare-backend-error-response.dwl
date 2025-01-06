%dw 2.0
output application/json 
---
{
	"severity": "1",
	"reasonCode": "ADT-" ++ vars.httpStatus default null,
	"context": p('backendSystemError.backendSystem'),
	"description": error.description default null
	
	}