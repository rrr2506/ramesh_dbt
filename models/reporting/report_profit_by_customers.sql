select 
CUSTOMERID,
segment,
country,
sum(orderprofit) as orderprofit
from 
{{ ref('stg_orders') }}
group by 
customerid,
segment,
country