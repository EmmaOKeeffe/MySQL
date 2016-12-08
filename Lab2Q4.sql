select count(customerNumber) as total
from customers
where country like 'USA' 
	or country like 'Ireland'