%dw 2.0
output application/json
---
{
	"clientId": attributes.headers.client_id,
	"correlationId": correlationId,
	"tracingId": attributes.headers.tracing_id,
	"logPayload":  p('logInternalPayload.' ++ flow.name ) default ""
	
}