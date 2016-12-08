select c.customerName , c.customerNumber, sum(p.amount) as mySum
from customers c, payments p
where c.customerNumber = p.customerNumber 
	and (select sum(amount) from payments) > (select avg(amount) from payments)
group by customerNumber
order by mySum desc
limit 10
        