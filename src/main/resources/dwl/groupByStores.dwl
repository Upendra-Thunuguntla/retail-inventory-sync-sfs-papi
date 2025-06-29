%dw 2.0
output application/json deferred=true,indent=false
---
((payload.valid groupBy $."StoreId") pluck (($$):$))