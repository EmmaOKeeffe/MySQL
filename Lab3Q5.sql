select c.customerName, o.orderNumber, sum(od.priceEach * od.quantityOrdered) as mySum
from customers c, orders o, orderdetails od
where c.customerNumber = o.customerNumber
	and o.orderNumber = od.orderNumber
    and o.status = "Shipped"
    and (select sum(priceEach * quantityOrdered) from orderdetails) >
		(select avg(priceEach * quantityOrdered) from orderdetails)
group by orderNumber