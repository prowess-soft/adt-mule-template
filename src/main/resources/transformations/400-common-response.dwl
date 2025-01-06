%dw 2.0
import transformations::buildErrorOutput
output application/json
---
buildErrorOutput::buildOutput(
	vars.requestData.correlationId, 
	vars.requestData.tracingId, 
	"400", 
	"1", 
	"ADT-400", 
	"mmb-ordermgmt-sys-api", 
	"Could not create Job Line in MMB, " ++ payload.o_message
)