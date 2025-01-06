%dw 2.0
import transformations::buildErrorOutput
output application/json
---
buildErrorOutput::buildOutput(
	vars.requestData.correlationId,
	vars.requestData.tracingId,
	"500",
	"1",
	"ADT-500",
	"mmb-ordermgmt-sys-api",
	"Error in the System API"
)