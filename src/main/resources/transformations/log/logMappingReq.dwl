%dw 2.0
import logData from transformations::logger
output application/json
---
logData(flow.name, 
		"Request",
	 	payload
		)