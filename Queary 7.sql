-- Determine the distribution of orders by hour of the day

select 
	HOUR(order_time) AS HOUR, count(order_id) AS order_count
from
     orders
group by hour(order_time);