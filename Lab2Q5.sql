select *
from customers
where country like 'USA' 
	or country like 'Ireland'
order by customerName