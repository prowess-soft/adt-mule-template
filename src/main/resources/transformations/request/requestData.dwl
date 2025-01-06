%dw 2.0
output application/json
---
{
	"clientId": attributes.headers.client_id,
	"correlationId": correlationId,
	"tracingId": attributes.headers.tracing_id,
	"logPayload":  p('logInternalPayload.' ++ attributes.method ++ '.' ++ attributes.requestPath ) default ""
	
}