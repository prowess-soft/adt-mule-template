%dw 2.0
output application/json 
---
{
  "correlationId":  vars.requestData.correlationId,
  "tracingId":  vars.requestData.tracingId,
  "result": payload.o_result default null,
  "message": payload.o_message default ""
}